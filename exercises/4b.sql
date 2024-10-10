-- List the 10 slowest tracks in the database
-- Order by tempo, with the slowest first
-- Include the track id, track title and track tempo

-- what tables columsn do i need - tracks.id, tracks.name, features.tempo

select tracks.id, tracks.name, features.tempo
from tracks
inner join features on tracks.id = features.track_id
order by tempo
limit 10

