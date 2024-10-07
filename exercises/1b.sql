-- Retrieve a list of the "id" and "name" of all explicit tracks in the
-- database
SElECT id, name
FROM tracks
WHERE explicit = 1
