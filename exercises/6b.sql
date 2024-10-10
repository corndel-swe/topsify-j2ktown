-- Create a list of all album names
-- Include the total duration of the album
-- Sort the results by album duration, with the longest first

select albums.name, sum(tracks.duration_ms) as album_duration_ms
from albums
inner join tracks on albums.id = tracks.album_id
group by albums.id
order by album_duration_ms desc


