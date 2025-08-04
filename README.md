# movie-streaming-database

# 🎬 Movie Streaming Platform Database (SQL Server)

This project contains the SQL schema and ER diagram for a **movie streaming platform**, built using **Microsoft SQL Server Management Studio (SSMS)**.

---

## 📌 Project Overview

The database is designed for platforms like Netflix, where users can subscribe, stream movies, review content, and view history. The schema supports multiple genres per movie, subscription plans, and detailed user interaction logs.

---

## 🧱 Database Tables

- **Users**: Stores user information
- **Subscriptions**: Tracks user subscription details
- **Movies**: Contains movie metadata
- **Genres**: Movie categories (e.g., Action, Comedy)
- **MovieGenres**: Linking table for movies and genres (many-to-many)
- **WatchHistory**: Tracks movies watched by users
- **Reviews**: Stores user ratings and comments

---

## 🔗 Relationships

- A user has one subscription
- A user can watch and review many movies
- A movie can belong to multiple genres
- Each genre can have many movies

---

## 📂 Files Included

| File | Description |
|------|-------------|
| `Elevatelabs day1.sql` | SQL Server script to create the database and all tables |
| `Database Diagaram day 1` | Database diagram exported from SSMS in PDF Format |
| `README.md` | This documentation file |

---

## ⚙️ How to Use (SSMS Instructions)

1. Open **SQL Server Management Studio (SSMS)**
2. Open `movie_streaming.sql` using `File > Open > File...`
3. Connect to your SQL Server instance
4. Execute the script (`F5`) to create the database and tables
5. Use the **Database Diagrams** feature in SSMS to create or view the ER diagram

> ✅ To export the diagram as an image:
> - Right-click inside the diagram and choose **Copy Diagram to Clipboard**
> - Paste into Paint or Word, then save as `.png` or `.pdf`

---


## 👨‍💻 Author

**Rajeev Appala**  
Aspiring Data Engineer | SQL | Azure | Python | Databricks  
[GitHub Profile](https://github.com/Rajeevappala)

---


