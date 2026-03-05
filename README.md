![1000144290](https://github.com/user-attachments/assets/83cac230-bd87-4b98-bc1f-4a7170021ad2)

# ☁️ Azure Data Pipeline with Databricks, Synapse, and Power BI

## 📌 Overview

This repository demonstrates a **modern end-to-end data pipeline architecture** using **Azure Data Factory, Azure Data Lake Gen2, Azure Databricks, Azure Synapse Analytics, and Power BI**.

The pipeline follows the **Medallion Architecture (Bronze 🥉, Silver 🥈, Gold 🥇)** pattern for scalable and efficient data processing and analytics.

<img width="1024" height="1024" alt="AZy-Af7H_vZzw43_CFxf8A-AZy-Af7H6SyaUAbR9IeawA" src="https://github.com/user-attachments/assets/b05cd0ba-92ec-417d-b643-59b78f97fe48" />


# 🏗️ Architecture

### 🌐 Data Source

Data is collected from **external sources** such as APIs or HTTP endpoints.

### 🔄 Data Ingestion — Azure Data Factory

* Orchestrates data movement from source to storage
* Loads raw data into **Azure Data Lake Gen2**

### 🥉 Raw Data Store — Bronze Layer

* Stores **unprocessed raw data**
* Maintained in **Azure Data Lake Storage Gen2**

### ⚙️ Data Transformation — Azure Databricks

* Cleanses and transforms raw data
* Enriches datasets with business logic
* Writes processed data to **Silver Layer**

### 🥈 Structured Data — Silver Layer

* Cleaned and structured datasets
* Ready for analytics processing

### 🗄️ Data Serving — Azure Synapse Analytics

* Loads curated data into the **Gold Layer**
* Enables **fast querying and analytical workloads**

### 📊 Reporting — Power BI

* Connects to **Synapse Analytics**
* Creates **interactive dashboards and insights**

---

# 🧰 Technologies Used

☁️ **Azure Data Factory** — Data ingestion & orchestration
💾 **Azure Data Lake Storage Gen2** — Scalable data storage
⚡ **Azure Databricks** — Data processing & transformation
🏢 **Azure Synapse Analytics** — Data warehousing & querying
📊 **Power BI** — Data visualization & reporting

---

# 🏅 Medallion Architecture Layers

🥉 **Bronze Layer**
Raw, unprocessed data directly from source systems.

🥈 **Silver Layer**
Cleaned, structured, and enriched data.

🥇 **Gold Layer**
Business-ready, curated datasets for reporting and analytics.

---

# ⚙️ How the Pipeline Works

1️⃣ **Azure Data Factory** ingests data from external sources into the **Bronze Layer**.
2️⃣ **Azure Databricks** processes and transforms data into the **Silver Layer**.
3️⃣ Processed data is loaded into **Azure Synapse Analytics (Gold Layer)**.
4️⃣ **Power BI** connects to Synapse to generate **analytics dashboards and insights**.

---

# 🎯 Use Cases

📊 Enterprise Data Warehousing
⚡ Real-Time Analytics
📈 Business Intelligence Dashboards
🏗️ Modern Data Lakehouse Architecture

---

# 📜 License

This project is licensed under the **MIT License**.
