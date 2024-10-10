-- List the name of every album in the database
-- Include the artist name
-- (Make sure to select the album name first, then the artist name)

select albums.name, artists.name  --picks the columsn you need specifiyin what tables as well
from albums --pick one table
inner join artists on albums.artist_id = artists.id; --pick where they join ie primary/ foreign key.

