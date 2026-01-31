# E-Learning Platform User Engagement Optimizer (SQL Portfolio Project)

## 📌 Project Objective
Analyze learner engagement and behavior to identify factors that improve **course certification and completion rates** on an e-learning platform.

---

## 📂 Dataset
Source: Harvard–MIT MOOCs public dataset  
Table used: `courses`  
Records contain course metadata, participation, engagement activity and learner demographics.

---

## 🧭 Project Workflow (in sequence)

### 1. Data Understanding
- Verified total records and structure
- Reviewed all columns and data types

### 2. Data Quality Checks
- Checked missing values
- Validated percentage fields (0–100)
- Verified year and date ranges

### 3. KPI Creation
- Average certification rate
- Average video engagement
- Average forum participation

### 4. Engagement & Performance Analysis
- Certification rate by course subject
- Participation by subject
- Forum activity vs certification
- Identified high-traffic courses with low certification

### 5. Learner Profile Analysis
- Gender distribution
- Education level vs certification
- Median age vs certification

### 6. Feature Engineering
- Created an `engagement_level` field (High / Medium / Low)
- Measured certification performance for each engagement group

### 7. Trend Analysis
- Analyzed yearly certification trends

---

## 🛠️ SQL Techniques Used
- `GROUP BY`, `ORDER BY`
- Aggregate functions (`AVG`, `SUM`)
- `CASE` expressions
- Data validation queries
- Column creation and updates

---

## 📊 Key Outcome
Identified how learner engagement activities (video usage and forum participation) and course characteristics influence certification rates, helping platforms prioritize high-impact improvements.

---

## 📁 Deliverables
- SQL script with structured analysis queries
- Cleaned and standardized table schema
- Business-oriented insights for engagement optimization

