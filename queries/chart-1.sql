
-- [
--  {
--    "artist_name": "Taylor Swift",
--    "explicit_track_count": 999
--  }
--  // ... more artists
--]

-- Visiting /charts/1.html should show a bar chart showing the count of explicit tracks by each artist, ordered by explicit track count.
-- It should only show artists who have at least one explicit track.

.mode json
select artists.name as artist_name, count(tracks.id) as explicit_track_count
from artists
inner join albums on artists.id = albums.artist_id
inner join tracks on albums.id = tracks.album_id
where tracks.explicit = 1
group by artists.id
order by explicit_track_count desc;