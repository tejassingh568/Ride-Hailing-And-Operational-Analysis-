# 🚕 Ride-Hailing Operations Analysis (Bengaluru | 1-Month Data)

## 📌 Project Overview
This project analyzes ride-hailing operational data for **Bengaluru** over a **one-month period** using a synthetic (mock) dataset with over **100,000 ride records**. The objective is to identify **operational inefficiencies**, understand **cancellation patterns**, analyze **demand and revenue**, and uncover insights that can help improve **driver utilization, and customer experience**.

The analysis follows an **end-to-end data analytics workflow**, leveraging **Python for data cleaning**, **SQL for deep operational analysis**, and **Power BI for interactive dashboards and insights visualization**.

---

## 🧩 Business Problem
A ride-hailing company operating in Bengaluru is facing **operational challenges** that impact service reliability and revenue. Management has observed a **high number of ride cancellations**, particularly initiated by drivers, along with uneven demand across **time periods and pickup locations**.

The company wants to understand:
- When and where **ride demand peaks**, creating operational pressure
- Which **vehicle types** contribute most to ride volume and revenue
- What **cancellation reasons** are most frequent and actionable
- How booking value, ride distance, and completion status affect revenue

### 🎯 Core Business Objective
**How can ride-level operational data be used to reduce cancellations, optimize driver availability, improve customer experience, and maximize revenue efficiency?**

---

## 📊 Dataset Description
- **Dataset Type:** Synthetic / mock ride-hailing dataset (real-world inspired)
- **City:** Bengaluru  
- **Time Period:** 1 month  
- **Rows:** 100,000+  
- **Columns:** 19  

### Key Data Fields
- **Booking Details:** Date, Time, Booking ID, Booking Status  
- **Customer & Driver:** Customer ID, Driver Ratings, Customer Ratings  
- **Vehicle Information:** Vehicle Type (Auto, Mini, Bike, eBike, Prime Sedan, Prime Plus, Prime SUV)  
- **Location Data:** Pickup Location, Drop Location (dummy locations across Bengaluru)  
- **Operational Metrics:** Avg VTAT, Avg CTAT  
- **Cancellations:**  
  - Cancelled by Customer (with reasons)  
  - Cancelled by Driver (with reasons)  
- **Ride Outcomes:** Incomplete Rides, Incomplete Ride Reasons  
- **Financials:** Booking Value, Ride Distance  

> ⚠️ This dataset does not represent real Ola data and is used solely for analytical practice.

---

## 🛠 Tools & Technologies
- **Python (Pandas, NumPy):** Data cleaning, preprocessing, feature engineering  
- **SQL (PostgreSQL):** Operational analysis, aggregation, and insight generation  
- **Power BI:** Interactive dashboards and KPI visualization  

---

## ❓ Key Business Questions Analyzed

### Operational Performance
- Retrieve all successful rides  
- What is the total revenue generated from completed rides?  
- What is the average booking value by booking status (Success vs Cancelled)?

### Demand & Peak Analysis
- At what time of day do most rides occur (peak hours)?  
- What are the top 5 pickup locations with the highest ride demand?  
- What is the daily revenue trend over the month?

### Cancellation Analysis
- How many rides were cancelled by customers vs drivers?  
- What are the top customer cancellation reasons (percentage share)?  

### Vehicle & Revenue Analysis
- What is the average ride distance by vehicle type?  
- Which vehicle types generate the highest revenue (Top 2)?

---

## 🔍 Key Insights

### 🚫 Cancellation Patterns
- **Driver-side cancellations (~18,000 rides)** are significantly higher than customer-side cancellations.
- A large proportion of cancellations have **no clear reason recorded**, followed by:
  - Change of plans  
  - Wrong pickup address  
  - AC not working (for 4-wheelers)

### ⏰ Demand & Peak Hours
- Ride demand is heavily concentrated during **specific peak hours**, indicating operational stress during these periods.
- A small set of **pickup locations accounts for a disproportionately high number of rides**, highlighting demand clustering.

### 🚗 Vehicle Performance
- **Mini and Auto** vehicles contribute the **highest share of revenue**, driven by high ride volume and short-distance trips.
- Premium vehicle categories generate higher booking values but lower overall volume.

### 💰 Revenue Trends
- Revenue follows clear **daily and time-based patterns**, closely aligned with peak ride hours and high-demand locations.

---

## 💡 Business Recommendations
- **Reduce Driver-Side Cancellations:**  
  Introduce driver incentives, monitoring mechanisms, and clearer accountability during high-demand periods.

- **Peak-Hour Operations Optimization:**  
  Improve driver availability and dynamic allocation during peak hours to reduce cancellations and wait times.

- **Location-Based Driver Positioning:**  
  Use top pickup location insights to proactively position drivers in high-demand zones.

- **Vehicle Mix Optimization:**  
  Continue prioritizing Mini and Auto fleets for short-distance, high-frequency rides to maximize revenue efficiency.

- **Improve Cancellation Reason Tracking:**  
  Enforce structured cancellation reason capture to enable more precise root-cause analysis.

---

## 📈 Dashboard Overview
A **Power BI dashboard** was created to visualize:

<img width="630" height="498" alt="image" src="https://github.com/user-attachments/assets/9d7240a0-7b03-4087-983c-b1335c388da1" />

---

## 📌 Conclusion
This project demonstrates an **end-to-end operational analytics workflow** using Python, SQL, and Power BI to analyze ride-hailing data at scale. By uncovering patterns in cancellations, demand concentration, and vehicle performance, the analysis provides **actionable insights** that can help improve service reliability, optimize operations, and enhance overall customer experience.

