--[
--  {
--    "album_name": "Album 1",
--    "average_loudness": -5.0,
--    "release_date": "2010-01-01"
--  },
--  {
--    "album_name": "Album 2",
--    "average_loudness": -4.5,
--    "release_date": "2011-01-01"
--  }
--  // ... more albums
--]

.mode json
select albums.name as album_name,
       AVG(features.loudness) AS average_loudness,
       albums.release_date As release_date
from albums
inner join tracks on albums.id = tracks.album_id
inner join features on tracks.id = features.track_id
group by album_name, release_date
order by average_loudness asc
