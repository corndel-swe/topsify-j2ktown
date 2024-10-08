-- Create a list of all album names
-- Include the total duration of the album
-- Sort the results by album duration, with the longest first
.mode markdown
select albums.name, sum(tracks.duration_ms)
from albums
inner join tracks on albums.id = tracks.album_id
group by albums.name
order by tracks.duration_ms desc


