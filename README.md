# CRM Sales & Lead Analytics Dashboard 🚀

An end-to-end Customer Relationship Management (CRM) Analytics project designed to track, analyze, and optimize sales pipelines, lead conversions, and deal opportunities using **Power BI, Tableau, Excel, and SQL**.

---

## 📌 Business Overview
Sales and marketing teams often struggle to identify pipeline bottlenecks and measure true lead conversion rates. Ee project dwara, high-volume sales lead data and pipeline opportunities ni transform chesi, leadership ki actionable revenue growth insights deliver chesa.

---

## 🛠️ Tech Stack & Tools Used
* **Database & Querying:** MySQL Workbench (Data Transformation & Aggregation)
* **Data Processing:** MS Excel & Power Query
* **Visualizations:** Power BI & Tableau
* **Analytics Techniques:** DAX Measures, Pipeline Funnel Analysis, Lead Scoring, Conversion Metrics

---

## 📊 Key KPIs & Insights (Based on Dashboards)

### 1. Lead Analytics
* **Total Leads Processed:** `10,000` Leads analyzed across multiple sources (Inside Sales, Website, Trade Shows, Webinars).
* **Overall Lead Conversion Rate:** `10.33%`
* **Converted Accounts:** `1,018` Accounts successfully converted.
* **Top Lead Source:** Inside Sales & Direct Website Inquiries generated the highest conversion volumes.

### 2. Opportunity & Sales Pipeline
* **Total Opportunities:** `5,000+` Total Deals tracked.
* **Active Open Pipeline:** `1,000+` Open Deals worth **~$1.02 Billion ($1,022,515,078)**.
* **Closed Won Pipeline Revenue:** **$136.26 Million** closed successfully (`136M Total Won`).
* **Win vs Loss Rate:**
  * **Win Rate:** `31%`
  * **Loss Rate:** `42%`
  * **Avg Deal Size (Won):** `$95K`

---

## SQL Queries & Data Transformation
Database schema setup, data cleaning, and KPI calculations were performed in **MySQL**:
* Calculated `Total Leads`, `Total Expected Amount`, and conditional logic for `Converted Leads` using string operations and math aggregations.
* Cleaned missing values and trimmed spaces using string functions like `TRIM`, `REPLACE`, and `CAST`.

```sql
-- Example SQL logic for Conversion Rate Calculation
SELECT 
    COUNT(*) AS Total_Leads,
    SUM(CASE WHEN TRIM(UPPER(Converted)) = 'TRUE' OR Converted = '1' THEN 1 ELSE 0 END) AS Converted_Leads,
    CONCAT(ROUND((SUM(CASE WHEN TRIM(UPPER(Converted)) = 'TRUE' OR Converted = '1' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2), '%') AS Conversion_Rate_Percentage
FROM tbl_leads;
