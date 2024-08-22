SELECT genre_id, COUNT(artist_id) AS count_artists
FROM Artists_Genres
GROUP BY genre_id;

SELECT COUNT(*) AS count_tracks FROM Tracks
JOIN Albums ON Tracks.album_id = Albums.id
WHERE Albums.release_year BETWEEN 2019 AND 2020;

SELECT album_id, AVG(duration) AS avg_duration
FROM Tracks GROUP BY album_id;

SELECT DISTINCT a.name FROM Artists a
LEFT JOIN Artists_Albums aa ON a.id = aa.artist_id
LEFT JOIN Albums alb ON aa.album_id = alb.id
WHERE alb.id IS NULL OR alb.release_year != 2020;

SELECT DISTINCT p.title FROM Playlists p
JOIN Playlists_Tracks pt ON p.id = pt.playlist_id
JOIN Tracks t ON pt.track_id = t.id
JOIN Artists_Albums aa ON t.album_id = aa.album_id
WHERE aa.artist_id = 1;