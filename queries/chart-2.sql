--    "artist_name": "Deftones",
--    "album_name": "White Pony",
--    "average_danceability": 0.5,
--    "average_energy": 0.5,
--    "average_speechiness": 0.5,
--    "average_acousticness": 0.5,
--    "average_liveness": 0.5
--  }

.mode json
select artists.name as artist_name, albums.name as album_name,
       AVG(features.danceability) AS average_danceability,
       AVG(features.energy) AS average_energy,
       AVG(features.speechiness) AS average_speechiness,
       AVG(features.acousticness) AS average_acousticness,
       AVG(features.liveness) AS average_liveness
from artists
inner join albums on artists.id = albums.artist_id
inner join tracks on tracks.album_id = albums.id
inner join features on tracks.id = features.track_id
group by artist_name
