# Starlight Academy – Data Cleaning Practice

## 📌 Project Overview

This project is a **data engineering practice project** focused on learning and applying basic **data cleaning techniques** using the **Medallion Architecture**.

The dataset contains Grade 9 student marks from **Starlight Academy**. The purpose of the project is to identify and correct common data quality issues before the data is used for analysis.

This project is intentionally focused on **basic data cleaning and transformation**, rather than building a complex data pipeline.

---

## 🏗️ Medallion Architecture

The project follows the three main layers of the Medallion Architecture:

### 🥉 Bronze Layer – Raw Data

The Bronze layer contains the original data as it was received.

The data may contain issues such as:

* Incorrect data types
* Inconsistent capitalization and casing
* Incorrect or invalid records
* Numbers stored as text
* Incorrect student information
* Formatting inconsistencies
* Incorrect calculated values

The purpose of this layer is to preserve the original source data before any transformations are applied.

### 🥈 Silver Layer – Cleaned Data

The Silver layer contains the cleaned and transformed data.

Cleaning includes tasks such as:

* Correcting inconsistent casing
* Converting columns to the appropriate data types
* Correcting incorrect values
* Cleaning student IDs
* Standardizing names
* Correcting marks stored in an incorrect format
* Handling invalid values
* Recalculating average marks
* Ensuring marks are stored as numeric values

The goal of the Silver layer is to produce a consistent and reliable dataset that can be used for further processing.

### 🥇 Gold Layer – Prepared Data

The Gold layer represents data that has been prepared for analysis.

For this practice project, the Gold layer can contain the final cleaned dataset and calculated information that would be useful for reporting or analysis.

Examples include:

* Final student marks
* Corrected average marks
* Student performance information
* Data ready for analysis

---

## 🧹 Data Cleaning

The main purpose of this project is to practice identifying and fixing common data-quality problems.

Some of the issues intentionally included in the dataset are:

### Case Issues

Some values may use inconsistent capitalization or formatting.

For example:

```text
john smith
JOHN SMITH
John Smith
```

These values can be standardized into a consistent format.

### Incorrect Data Types

Some numerical values may be stored as text rather than numbers.

For example:

```text
"76.5"
"80"
"65"
```

These values need to be converted into an appropriate numeric data type before calculations can be performed.

### Incorrect Records

Some records contain incorrect information that needs to be identified and corrected.

Examples include:

* Incorrect Student IDs
* Incorrect student names
* Invalid mark values
* Text values where numbers are expected

### Incorrect Average Marks

The dataset contains average marks that may not correctly represent the student's subject marks.

The average is therefore recalculated from the cleaned subject marks rather than relying on the original value.

This helps ensure that calculated values are based on the corrected data.

---

## 🎯 Project Goals

The main goals of this project are to practice:

* Understanding the Medallion Architecture
* Identifying data-quality issues
* Cleaning raw data
* Correcting incorrect records
* Handling data-type issues
* Standardizing data formats
* Recalculating derived values
* Moving data from Bronze → Silver → Gold
* Writing SQL transformations
* Understanding the importance of data quality in a data pipeline

---

## 📊 Dataset

The dataset contains Grade 9 student information and marks for subjects such as:

* Mathematics
* English
* Afrikaans
* Physical Sciences
* Life Sciences
* History
* Geography

It also contains student identification information and calculated average marks.

The dataset is intentionally **dirty** so that different data-cleaning techniques can be practiced.

---

## 🛠️ Tools & Technologies

* **SQL**
* **SQL Server Management Studio (SSMS)**
* **Medallion Architecture**
* **CSV**
* **Data Cleaning & Transformation**

---

## 📁 Project Structure

```text
Starlight_Academy/
│
├── Bronze/
│   └── Raw student data
│
├── Silver/
│   └── Cleaned and transformed data
│
├── Gold/
│   └── Final data prepared for analysis
│
├── SQL/
│   └── Data cleaning and transformation scripts
│
└── README.md
```

---

## 🔄 Data Flow

```text
Raw CSV Data
     │
     ▼
🥉 Bronze
Raw / Uncleaned Data
     │
     │ Cleaning & Transformation
     ▼
🥈 Silver
Cleaned Data
     │
     │ Validation & Preparation
     ▼
🥇 Gold
Analysis-Ready Data
```

---

## 📚 Learning Purpose

This repository is primarily a **learning and practice project**.

The aim is to gain practical experience with the types of data-quality problems that can occur in real-world datasets and learn how to resolve them using SQL.

Rather than simply working with perfectly formatted data, this project provides intentionally messy data so that the complete process of **identifying, cleaning, validating, and transforming data** can be practiced.

---

## 🚀 Future Improvements

As my data engineering skills develop, this project can be expanded to include:

* More advanced data validation
* Automated data-quality checks
* Additional transformation rules
* Error logging
* Pipeline automation
* More complex datasets
* Additional analytical tables
* Visualization and reporting

---

## 👩‍💻 Author

**Krystal Brassey**

This repository is part of my ongoing practice and learning in **Data Engineering, SQL, and Data Cleaning**.
