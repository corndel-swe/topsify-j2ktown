drop table if exists playlists_tracks;
drop table if exists playlists;

CREATE TABLE playlists (
    id INTEGER PRIMARY KEY,
    user_id INTEGER not null,
    name TEXT not null,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


CREATE TABLE playlists_tracks (
    playlist_id INTEGER,
    track_id TEXT not null,
    FOREIGN KEY (playlist_id) REFERENCES playlists(id),
    FOREIGN KEY (track_id) REFERENCES tracks(id)
);



