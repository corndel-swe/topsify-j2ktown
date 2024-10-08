--Remember the Albums page, at /albums.html? Well, it isn't great. The Albums pages just shows the artist_id. It would be much better if it showed the actual artist name there.
--
--See if you can improve the albums.json report and modify the albums.js to show the name of the artist, not just the id.
--
--Perhaps you could do something similar for the album_id in the Tracks page at /tracks.html, too?


--[{"id":"6FJxoadUE4JNVwWHghBwnb","name":"RENAISSANCE","artist_id":"6vWDO969PvNqNYHIOW5v0m","release_date":"2022-07-29","image_url":"https://i.scdn.co/image/ab67616d0000b2730e58a0f8308c1ad403d105e7"},


. mode json
select albums.id, albums.name,artists.name as artist_id,albums.release_date, albums.image_url
from albums
inner join artists on albums.artist_id = artists.id
group by artist_id



