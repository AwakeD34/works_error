SELECT title, duration FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

SELECT title FROM Tracks 
WHERE duration >= 210;

SELECT title FROM Playlists 
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name FROM Artists 
WHERE name NOT LIKE '% %';

SELECT title FROM Tracks 
WHERE title LIKE '%мой%' OR title LIKE '%my%';