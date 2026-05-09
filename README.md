# Flower Shop Admin  
## DSCI 551 Final Project - Qidian Dong  

## Overview
This is a full-stack database application built with PostgreSQL and Streamlit.  
It demonstrates database internal behaviors such as MVCC snapshot isolation, dead tuple accumulation, and query optimizer execution paths.

---

## 1. Prerequisites & Environment
- Python: 3.12  
- PostgreSQL: v12 or higher (installed and running locally)  
- pgAdmin

First, create the database in PostgreSQL:

```sql
-- run schema.sql in pgAdmin or psql
```

---

## 2. Install Dependencies

Run the following command in the project directory:

```bash
pip install -r requirements.txt
```

---

## 3. Database Configuration

This project uses a local PostgreSQL database.

You need to update the database credentials in the following files:

* app.py
* app_logic.py
* Data.py

Locate the `DB_CONFIG` dictionary and update it with your local settings:

```python
DB_CONFIG = {
    "host": "localhost",
    "dbname": "flowershop",
    "user": "postgres",
    "password": "YOUR_PASSWORD", #SS373
    "port": "5432"
}
```

---

## 4. Data Generation

This project uses synthetic data. No external dataset is required.

To initialize the database and generate data:

```bash
python Data.py
```

Alternatively, you can run the pre-generated dataset:

```sql
-- dataset.sql (optional)
```

---

## 5. Run the Application

Start the Streamlit app:

```bash
streamlit run app.py
```

Then open:
[http://localhost:8501](http://localhost:8501)
