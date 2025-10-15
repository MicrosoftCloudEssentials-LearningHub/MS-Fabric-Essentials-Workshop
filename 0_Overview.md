# Microsoft Fabric: Overview 

Costa Rica

[![GitHub](https://img.shields.io/badge/--181717?logo=github&logoColor=ffffff)](https://github.com/)
[brown9804](https://github.com/brown9804)

Last updated: 2025-10-15

------------------------------------------

<details>
<summary><b>List of references</b> (Click to expand)</summary>

- [What is data warehousing in Microsoft Fabric?](https://learn.microsoft.com/en-us/fabric/data-warehouse/data-warehousing)
- [Query the SQL analytics endpoint or Warehouse in Microsoft Fabric](https://learn.microsoft.com/en-us/fabric/data-warehouse/query-warehouse)
- [What is the SQL analytics endpoint for a lakehouse?](https://learn.microsoft.com/en-us/fabric/data-engineering/lakehouse-sql-analytics-endpoint)
- [Learn about Microsoft Purview](https://learn.microsoft.com/en-us/purview/purview)
- [Microsoft Purview Data Security and Management](https://www.microsoft.com/en-us/security/business/microsoft-purview)

</details>

<details>
<summary><b>List of Contents</b> (Click to expand)</summary>

- [Overview](#overview)
- [OneLake in Fabric](#onelake-in-fabric)
    - [Lakehouse & Data Warehouse](#lakehouse--data-warehouse)
- [Parquet & Delta Data Formats](#parquet--delta-data-formats)
- [Z-Order & V-Order](#z-order--v-order)
- [Dataflow Gen2 & Data Pipelines](#dataflow-gen2--data-pipelines)
- [Shortcuts & Mirroring](#shortcuts--mirroring)

</details>


## Overview

> Microsoft Fabric is an all-in-one analytics and data platform designed for enterprises, providing a seamless solution by integrating `Software as a Service (SaaS)`. It combines new and existing features from Power BI, Azure Synapse Analytics, and Azure Data Factory into one unified platform. 
> Microsoft Fabric includes both Azure Data and Azure Analytics:  <br/>
> - `Azure Data`: Offers tools for data engineering and management.  <br/>
> - `Azure Analytics`: Provides business intelligence and analytics tools, especially through its Power BI integration.

<div align="center">
  <img src="https://github.com/user-attachments/assets/8fdb3198-8fda-4dd0-869e-b0dccb268a30" alt="Centered Image" style="border: 2px solid #4CAF50; border-radius: 5px; padding: 5px;"/>
</div>

From [Microsoft Documentation](https://learn.microsoft.com/pt-br/fabric/fundamentals/microsoft-fabric-overview)

| Component                  | Description                                                                 | Use Cases                                                                 | Integration Benefits                                                      |
|----------------------------|-----------------------------------------------------------------------------|--------------------------------------------------------------------------|---------------------------------------------------------------------------|
| `Data Factory`           | A cloud-based data integration service that orchestrates and automates data movement and transformation. | ETL processes, data migration, data integration from multiple sources.   | Reduces data silos, improves workflow efficiency, and enhances data integration. |
| `Synapse Data Engineering` | Utilizes Apache Spark for large-scale data preparation and transformation. Integrates with various data sources. | Big data processing, data preparation, data transformation.              | Streamlines data processing, reduces complexity, and connects seamlessly with analytics. |
| `Synapse Data Warehouse` | Combines big data and data warehousing for high-performance SQL-based analytics. | Data warehousing, large-scale analytics, business intelligence.          | Provides unified analytics, enhances decision-making, and improves operational efficiency. |
| `Synapse Real-Time Analytics` | Processes streaming data for immediate insights, supporting real-time dashboards and alerts. | Real-time data processing, streaming analytics, real-time monitoring.    | Ensures continuous data flow, enhances responsiveness, and enables proactive decision-making. |
| `Power BI`               | A business analytics tool with interactive visualizations and self-service BI capabilities. | Report creation, dashboard development, data visualization.              | Enhances data connectivity, provides richer insights, and improves reporting. |
| `Data Activator`         | Automates responses to specific data events, enhancing data-driven decision-making. | Event-driven automation, real-time alerts, automated workflows.          | Leverages comprehensive data insights for effective automation and action-triggering. |
| `Synapse Data Science`   | Provides tools for building, training, and deploying ML models, integrating with the Synapse ecosystem. | Machine learning, data science workflows, model deployment.              | Enhances collaboration, scalability, and actionable insights through integrated workflows. |
| `Microsoft Purview`      | A unified platform for data governance, security, and compliance.           | Data governance, data security, compliance management.                   | Provides comprehensive data protection, reduces risk, and ensures regulatory compliance |

Click here for more information about: [Microsoft Fabric Quick Overview](https://github.com/MicrosoftCloudEssentials-LearningHub/Demos-ScenariosHub/blob/main/0_Azure/2_AzureAnalytics/0_Fabric/demos/17_Overview.md#fabric-overview)

## OneLake in Fabric

|  Aspect           | Area | Description                                                                 | Benefits                                                                        | 
|-----------------------------|------------------|-----------------------------------------------------------|---------------------------------------------------------------------------------|
| `Data Lineage`            | Governance | Tracks the origin and transformation of data throughout its lifecycle.       | Ensures transparency, traceability, and compliance with regulatory requirements. |
| `Data Protection`         | Governance | Implements robust security measures, including encryption and access controls. | Protects sensitive data and reduces the risk of data breaches.                  |
| `Catalog Integration`     | Governance| Integrates with data catalogs for better data discovery and management.      | Enhances data governance and simplifies data management processes.              |
| `Data Lakehouse`          | Use Case | Combines the capabilities of data lakes and data warehouses for comprehensive data management. | Provides a unified platform for both structured and unstructured data, enhancing analytics and reporting. |
| `Real-Time Analytics`     | Use Case | Processes streaming data for immediate insights, supporting real-time dashboards and alerts. | Ensures continuous data flow, enhances responsiveness, and enables proactive decision-making. |
| `Machine Learning`        | Use Case | Supports building, training, and deploying ML models within the Fabric ecosystem. | Enhances collaboration, scalability, and actionable insights through integrated workflows. |
| `Azure Integration`       | Integration and Compatibility | Seamlessly integrates with Azure services like Azure Databricks, Azure HDInsight, and Azure Synapse Analytics. | Enhances data processing capabilities and provides a unified analytics experience. |
| `APIs and SDKs`           | Integration and Compatibility | Supports ADLS Gen2 APIs and SDKs, making it compatible with existing ADLS Gen2 applications. | Facilitates easy integration with existing tools and applications, ensuring flexibility. |
| `Data Sharing`            | Integration and Compatibility | Allows data sharing across different domains without data movement, enabling virtual data products. | Improves data accessibility and collaboration without the need for data duplication. |
| `Scalability`             | Advanced Features | Designed to scale with your organization's data needs, handling large volumes of data efficiently. | Provides high performance and reliability, accommodating growing data requirements. |
| `Performance Optimization` | Advanced Features | Utilizes advanced caching and indexing techniques to enhance data retrieval speeds. | Ensures fast and efficient data access, improving overall system performance. |
| `Security Features`       | Advanced Features | Includes encryption at rest and in transit, role-based access control, and audit logging. | Protects sensitive data, ensures authorized access, and maintains detailed activity logs. |

Click here for more information about: [OneLake in Microsoft Fabric](https://github.com/MicrosoftCloudEssentials-LearningHub/Demos-ScenariosHub/blob/main/0_Azure/2_AzureAnalytics/0_Fabric/demos/17_Overview.md#onelake-in-microsoft-fabric)

### Lakehouse & Data Warehouse

> `Lakehouse` is a type of data architecture within Microsoft Fabric that combines data lakes and data warehouses. It stores and processes `both structured and unstructured data`, offering flexibility and performance. 
> `Data Warehouse` is a centralized repository for large volumes of `structured data`, optimized for high-performance SQL-based analytics.

 Click here for more information about: [Lakehouse & Data Warehouse](https://github.com/MicrosoftCloudEssentials-LearningHub/Demos-ScenariosHub/blob/main/0_Azure/2_AzureAnalytics/0_Fabric/demos/17_Overview.md#lakehouse--data-warehouse)

## Parquet & Delta Data Formats

 Click here for more information about: [Parquet & Delta Data Formats](https://github.com/MicrosoftCloudEssentials-LearningHub/Demos-ScenariosHub/blob/main/0_Azure/2_AzureAnalytics/0_Fabric/demos/17_Overview.md#parquet--delta-data-formats)

 ## Z-Order & V-Order

Click here for more information about: [Z-Order & V-Order](https://github.com/MicrosoftCloudEssentials-LearningHub/Demos-ScenariosHub/blob/main/0_Azure/2_AzureAnalytics/0_Fabric/demos/17_Overview.md#z-order-and-v-order)

## Dataflow Gen2 & Data Pipelines

 Click here for more information about: [Dataflow Gen2 & Data Pipelines](https://github.com/MicrosoftCloudEssentials-LearningHub/Demos-ScenariosHub/blob/main/0_Azure/2_AzureAnalytics/0_Fabric/demos/17_Overview.md#dataflow-gen2--data-pipelines)

## Shortcuts & Mirroring

 Click here for more information about: [Shortcuts & Mirroring](https://github.com/MicrosoftCloudEssentials-LearningHub/Demos-ScenariosHub/blob/main/0_Azure/2_AzureAnalytics/0_Fabric/demos/17_Overview.md#shortcuts--mirroring)
 
<!-- START BADGE -->
<div align="center">
  <img src="https://img.shields.io/badge/Total%20views-1379-limegreen" alt="Total views">
  <p>Refresh Date: 2025-10-15</p>
</div>
<!-- END BADGE -->
