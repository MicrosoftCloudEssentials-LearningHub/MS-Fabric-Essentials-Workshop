# Microsoft Fabric: Essentials Workshop

Costa Rica

[![GitHub](https://img.shields.io/badge/--181717?logo=github&logoColor=ffffff)](https://github.com/)
[brown9804](https://github.com/brown9804)

Last updated: 2025-10-15

------------------------------------------

> [!TIP]
> Click to read more about [Fabric Roadmap](https://roadmap.fabric.microsoft.com/?product=administration%2Cgovernanceandsecurity)

> [!IMPORTANT]
> For more detailed and official training, please visit the [Microsoft official training site](https://learn.microsoft.com/en-us/training/)

<details>
<summary><b>Table of Content </b> (Click to expand)</summary>
  
- [Prerequisites](#prerequisites)
- [Where to start?](#where-to-start)
- [Content](#content)

</details>

<details> 
<summary><b> Before Fabric</b> (Click to expand)</summary>

<p float="left">
  <img src="https://github.com/brown9804/MSCloudEssentials_LPath/assets/24630902/c47ad7c0-375e-4257-b56e-7b3b89619e2f" width="450" height="200" />
  <img src="https://github.com/user-attachments/assets/1cbb0198-774c-498d-ab60-2f4c8e2a4218" width="350" height="190" />
</p>

> E.g of a solution prior Microsoft Fabric:

<div align="left">
  <img src="https://github.com/user-attachments/assets/af2aa6cb-0349-481b-abe4-d8c470551899" 
       alt="Centered Image" 
       style="width: 70%; border: 2px solid #4CAF50; border-radius: 5px; padding: 5px;"/>
</div>

> Now from one place:

<div align="left">
  <img src="https://github.com/user-attachments/assets/aaf00cd7-531a-4dc8-bf2f-c7606c607b87" 
       alt="Centered Image" 
       style="width: 70%; border: 2px solid #4CAF50; border-radius: 5px; padding: 5px;"/>
</div>

<div align="left">
  <img src="https://github.com/user-attachments/assets/8fdb3198-8fda-4dd0-869e-b0dccb268a30" 
       alt="Centered Image" 
       style="width: 70%; border: 2px solid #4CAF50; border-radius: 5px; padding: 5px;"/>
</div>

From [Microsoft Documentation](https://learn.microsoft.com/pt-br/fabric/fundamentals/microsoft-fabric-overview)

</details>

For this workshop, you can set up your infrastructure using either of the following approaches:

1. [Infrastructure via Azure Portal](./AzurePortal/): This approach involves creating the infrastructure and performing `all necessary steps through the Azure Portal` and its resources interface. 
2. [Infrastructure via Terraform](./Terraform/): This approach focuses on `setting up the required infrastructure via Terraform`. It allows for source control of not only the solution code, connections, and setups `but also the infrastructure itself`.

<div align="center">
  <img src="https://github.com/user-attachments/assets/16640052-7f57-443a-9efd-30855de5e231" alt="Centered Image" style="border: 2px solid #4CAF50; border-radius: 5px; padding: 5px;"/>
</div>

## Prerequisites

- An `Azure subscription is required`. All other resources, including instructions for creating a Resource Group, are provided in this workshop.
- `Contributor role assigned or any custom role that allows`: access to manage all resources, and the ability to deploy resources within subscription.
- If you choose to use the Terraform approach, please ensure that:
    -  [Terraform is installed on your local machine](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/install-cli#install-terraform).
    -  [Install the Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) to work with both Terraform and Azure commands.


## Where to start? 

This is an introductory workshop on Microsoft Fabric. Please follow as described below.

- If you're choosing the [Infrastructure via Azure Portal](./AzurePortal/):
    1. Go through [each section](#content) `from the start`.
- If you're choosing the [Infrastructure via Terraform](./Terraform/) approach:
    1. Please follow the [Terraform guide](https://github.com/MicrosoftCloudEssentials-LearningHub/MS-Fabric-Essentials-Workshop/blob/main/Terraform/README.md) to deploy the necessary Azure resources for the workshop.
    2. Then, follow each [each section](#content) but `skip the creation of each resource`.
       
## Content 

- [Fabric Overview](./0_Overview.md): Understand the core components and capabilities of Microsoft Fabric.
- [Medallion Architecture](./AzurePortal/1_MedallionArch/): Explore the structured approach to data management.

    <div align="center">
      <img src="https://github.com/user-attachments/assets/2c5141ea-4f3a-4054-b8bd-313efde24ff0" alt="Centered Image" style="border: 2px solid #4CAF50; border-radius: 2px; padding: 2px; width: 900px; height: auto;"/>
    </div>

- [AI + LLMs](./AzurePortal/2_AI_LLMs/): Discover how artificial intelligence and large language models integrate with Fabric.
  - Example of [how to integrate Azure OpenAI with Fabric](./AzurePortal/2_AI_LLMs#configure-azure-openai-service): Call a deployed model and request information.
  - [Basic Usage of LangChain Transformer](./AzurePortal/2_AI_LLMs#basic-usage-of-langchain-transformer): Create a prompt template, set up an LLMChain, and configure the transformer to execute the processing chain.
  - Example of [Using LangChain for Large Scale Literature Review](./AzurePortal/2_AI_LLMs#using-langchain-for-large-scale-literature-review): This example is around extracting content from PDFs linked in arXiv papers and generating prompts for extracting specific information.
  - [Machine Learning Integration with Microsoft Fabric](./AzurePortal/2_AI_LLMs#machine-learning-integration-with-microsoft-fabric): Shows how to train and register machine learning models using Microsoft Fabric's native integration with the MLflow framework. This includes logging trained models, hyperparameters, and evaluation metrics. It also shows how to compare and filter machine learning models using MLflow, with an example using RandomForestRegressor.
- [AI Skills](./AzurePortal/3_AISkills.md): Get insights on using AI skills within the platform.
- `CI/CD`: Learn about continuous integration and continuous deployment, including [deployment pipelines](./AzurePortal/4_CICD/0_deployment-pipelines/) and [GitHub integration](./AzurePortal/4_CICD/1_github-integration.md).

<div align="center">
  <img src="https://github.com/user-attachments/assets/db98dd56-651e-4aa3-ba94-d1899102de4b" alt="Centered Image" style="border: 2px solid #4CAF50; border-radius: 5px; padding: 5px;"/>
</div>

<!-- START BADGE -->
<div align="center">
  <img src="https://img.shields.io/badge/Total%20views-1379-limegreen" alt="Total views">
  <p>Refresh Date: 2025-10-15</p>
</div>
<!-- END BADGE -->
