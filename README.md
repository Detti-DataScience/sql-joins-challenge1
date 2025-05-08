# SQL Query Tasks – Customer Alerts & Movie Search

# Practical SQL Queries: Customer Communication & Actor Movie Lookup

This repository contains two real-world SQL tasks focused on:

1. Identifying customers in California for a sales tax update.
2. Listing all movies featuring a specific actor.

These examples demonstrate the use of SQL JOIN operations and filtering logic on a relational database.

---

## 📌 Task 1: Email Customers Living in California

### 📝 Problem  
California sales tax laws have changed, and we need to notify customers who live in California via email.

### ✅ Goal  
Retrieve the email addresses of all customers who reside in California.

### 💻 SQL Solution
```sql
SELECT district, email
FROM address
FULL JOIN customer ON address.address_id = customer.address_id
WHERE district = 'California';
```

🔍 Explanation
FULL JOIN combines all rows from both address and customer, matching where possible.

WHERE district = 'California' filters results to only California-based addresses.

The result includes the customer's email and the matching district name.


🎬 Task 2: Find Movies Featuring “Nick Wahlberg”
📝 Problem
A customer is a fan of the actor Nick Wahlberg and wants to know which movies he has appeared in.

✅ Goal
List all movie titles featuring Nick Wahlberg.

💻 SQL Solution
```sql
SELECT title, first_name, last_name
FROM film_actor
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
INNER JOIN film ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';
```

🔍 Explanation
Joins the film_actor, actor, and film tables using INNER JOIN.

Filters for rows where the actor’s first and last name match "Nick Wahlberg".

Returns movie titles along with the actor’s name for verification.


📂 Files Included
queries.sql – Contains both SQL query solutions.
README.md – Documentation with task description and SQL logic.


