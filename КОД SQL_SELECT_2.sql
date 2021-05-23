SELECT id_genre, count(id_singer) FROM genre_singer 
GROUP BY id_genre;

SELECT COUNT(id_track), t.id_album FROM Track_album AS t 
JOIN Album_info AS a ON a.id_album = t.id_album 
WHERE EXTRACT (YEAR from a.Issue_date)) BETWEEN 2019 AND 2020 
GROUP BY t.id_album;

SELECT AVG(ti.track_length), ta.id_album FROM Track_album AS ta 
JOIN Track_info AS ti ON ta.id_track = ti.id_track 
GROUP BY ta.id_album 
ORDER BY AVG(ti.track_length) ASC;

SELECT full_name FROM singer_info AS si
JOIN album_singer AS a_s ON si.id_singer = a_s.id_singer
JOIN album_info AS ai ON a_s.id_album = ai.id_album
WHERE (SELECT EXTRACT (YEAR from ai.Issue_date)) <> 2020
GROUP BY full_name
;
 
SELECT collection_name FROM collection_info AS ci
JOIN collection_track AS ct ON ci.id_collection = ct.id_collection
JOIN track_album AS ta ON ct.id_track = ta.id_track
JOIN album_singer AS a_s ON ta.id_album = a_s.id_album
JOIN singer_info AS si ON a_s.id_singer = si.id_singer
WHERE si.full_name = 'Full_name_2'
;

SELECT album_name FROM album_info AS ai
JOIN album_singer AS a_s ON ai.id_album = a_s.id_album
JOIN genre_singer AS gs ON a_s.id_singer = gs.id_singer
GROUP BY ai.album_name
HAVING COUNT(id_genre) > 1
;

SELECT track_name FROM track_info AS ti
LEFT JOIN collection_track AS ct ON ti.id_track = ct.id_track
WHERE ct.id_track IS NULL
;

SELECT si.id_singer FROM singer_info AS si
JOIN album_singer AS a_s ON si.id_singer = a_s.id_singer
JOIN track_album AS ta ON a_s.id_album = ta.id_album
JOIN track_info AS ti ON ta.id_track = ti.id_track
WHERE track_length = (SELECT MIN(FROM track_info)
;

SELECT album_name FROM album_info AS ai
JOIN track_album AS ta ON ai.id_album = ta.id_album
WHERE (SELECT MIN(COUNT(id_track)))
;
