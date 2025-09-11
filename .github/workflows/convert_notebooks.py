#!/usr/bin/env python3
"""
Notebook to GitHub-Compatible Format Converter

This script renders XML-format notebooks to standard Jupyter JSON format
with the required widget state metadata for GitHub rendering.
"""

import os
import json
import re
import nbformat
from nbformat.validator import validate

def process_notebooks(directory="."):
    """Find and process all notebook files in the repository"""
    notebook_files = []
    for root, dirs, files in os.walk(directory):
        if '.git' in dirs:
            dirs.remove('.git')  # Skip git directory
        if '.github' in dirs:
            dirs.remove('.github')  # Skip GitHub directory
        for file in files:
            if file.endswith('.ipynb'):
                notebook_files.append(os.path.join(root, file))
    
    print(f"Found {len(notebook_files)} notebooks to process")
    
    success_count = 0
    for nb_path in notebook_files:
        if convert_notebook(nb_path):
            success_count += 1
    
    print(f"Successfully rendered {success_count} out of {len(notebook_files)} notebooks")
    return success_count

def convert_notebook(filepath):
    """Convert a XML notebook to standard Jupyter JSON format"""
    print(f"\nProcessing {filepath}")
    
    try:
        # Read the notebook content
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Check if this is a XML notebook
        if '<VSCode.Cell' in content:
            print(f"  Converting from XML format...")
            # Extract cells using regex
            cells = []
            cell_pattern = re.compile(r'<VSCode\.Cell.*?language="(.*?)".*?>(.*?)</VSCode\.Cell>', re.DOTALL)
            
            matches = list(cell_pattern.finditer(content))
            if not matches:
                print(f"  WARNING: No cells found in {filepath}")
                return False
                
            print(f"  Found {len(matches)} cells")
            
            for match in matches:
                cell_type, cell_content = match.groups()
                
                if cell_type == "markdown":
                    cells.append(nbformat.v4.new_markdown_cell(
                        source=cell_content.strip()
                    ))
                else:  # python, javascript, etc.
                    cells.append(nbformat.v4.new_code_cell(
                        source=cell_content.strip()
                    ))
            
            # Create a new notebook
            nb = nbformat.v4.new_notebook()
            nb.cells = cells
            
            # Add required metadata
            nb.metadata = {
                "kernelspec": {
                    "display_name": "Python 3",
                    "language": "python",
                    "name": "python3"
                },
                "language_info": {
                    "codemirror_mode": {
                        "name": "ipython",
                        "version": 3
                    },
                    "file_extension": ".py",
                    "mimetype": "text/x-python",
                    "name": "python",
                    "nbconvert_exporter": "python",
                    "pygments_lexer": "ipython3",
                    "version": "3.8.10"
                },
                "widgets": {
                    "application/vnd.jupyter.widget-state+json": {
                        "state": {},
                        "version_major": 2,
                        "version_minor": 0
                    }
                }
            }
            
            # Validate and write the notebook
            validate(nb)
            with open(filepath, 'w', encoding='utf-8') as f:
                nbformat.write(nb, f)
            
            print(f"  Successfully rendered {filepath} for GitHub compatibility")
            return True
        
        else:
            # It's already in JSON format, check if it has widget state
            try:
                nb_dict = json.loads(content)
                
                # Check if we need to add widget state metadata
                if "widgets" not in nb_dict.get("metadata", {}):
                    print(f"  Adding widget state metadata to JSON notebook...")
                    nb = nbformat.reads(content, as_version=4)
                    if "metadata" not in nb:
                        nb.metadata = {}
                    nb.metadata["widgets"] = {
                        "application/vnd.jupyter.widget-state+json": {
                            "state": {},
                            "version_major": 2,
                            "version_minor": 0
                        }
                    }
                    
                    # Validate and write the notebook
                    validate(nb)
                    with open(filepath, 'w', encoding='utf-8') as f:
                        nbformat.write(nb, f)
                    
                    print(f"  Successfully added widget state to {filepath}")
                    return True
                else:
                    print(f"  Notebook already in correct format for GitHub, no changes needed")
                    return True
            except json.JSONDecodeError:
                print(f"  ERROR: {filepath} is not in valid JSON format or XML format")
                return False
    
    except Exception as e:
        print(f"  ERROR processing {filepath}: {str(e)}")
        return False

if __name__ == "__main__":
    print("Rendering notebooks for GitHub compatibility...")
    process_notebooks()
