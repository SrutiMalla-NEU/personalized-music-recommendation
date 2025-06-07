# 🎵 Personalized Music Recommendation System

This project is a MySQL-based recommendation engine that generates personalized music suggestions for users based on their listening history, artist popularity, and genre preferences.

It simulates the kind of backend logic used by platforms like Spotify or Apple Music to deliver smart, user-tailored playlists.

---

## Project Overview

The system uses a relational MySQL schema that includes users, tracks, artists, albums, genres, and user interactions. Recommendations are generated using SQL views and logic that rank songs based on interaction patterns and overall popularity.

---

## Key Features

- **Normalized MySQL** schema across users, tracks, albums, artists, genres, and playlists
- **SQL Views** for personalized recommendations, trending artists, and genre-based analytics
- **Stored Procedures** for playlist creation and batch inserts
- **Triggers** for automatic timestamping and playlist integrity
- Sample data simulating real-world user behavior via user_interactions
- Cleanly written schema with primary/foreign keys and **indexing** logic
---

## Tech Stack

- **Database:** MySQL 8.0+
- **Client Tools:** DBeaver or MySQL Workbench
- **Schema Format:** SQL Dump (`recommendation_dump.sql`)

---

## Getting Started

```bash
# 1. Create the database
mysql -u root -p -e "CREATE DATABASE recommendationsystem;"

# 2. Import the dump file
mysql -u root -p recommendationsystem < recommendation_dump.sql

# 3. Open your database in DBeaver or any MySQL client to browse tables, views, and run queries
```
## Sample Tables

- `users` – User profile and metadata  
- `tracks` – Song details including genre, album, artist  
- `user_interactions` – Simulated listening behavior  
- `recommendations` – System-generated suggestions  
- `albums`, `artists`, `genres`, `playlists` – Supporting data  

---

## Example Use Case

Run a query to fetch top 5 personalized tracks for user ID 101:

```sql
SELECT * FROM personalizedrecommendations WHERE user_id = 101 LIMIT 5;
```

## Future Enhancements

- Add a web interface (React/Flask/Node.js)  
- Integrate with a live user auth system  
- Host on Render / Railway / PlanetScale  
- Add ML-based re-ranking of results  

---

## Author

**Sruti Smitha Malla**  
[LinkedIn → https://www.linkedin.com/in/sruti-malla]

