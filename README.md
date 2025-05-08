# SQL Query Tasks – Customer Alerts & Movie Search

This repository contains two practical SQL query examples using JOIN operations and filtering clauses to extract useful insights from a relational database. The tasks are inspired by real-world use cases such as customer communication and entertainment searches.

## 🗂️ Tasks Overview

### 1. **Identify California-Based Customers for Tax Law Updates**

**Task:**  
Due to recent changes in California sales tax laws, the company needs to send email alerts to all customers who live in California.

**SQL Solution:**
```sql
SELECT district, email
FROM address
FULL JOIN customer ON address.address_id = customer.address_id
WHERE district = 'California';
