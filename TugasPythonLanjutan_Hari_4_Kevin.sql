SELECT a.Title, b.Name, t.Name as track
FROM albums a
JOIN artists b
	ON a.ArtistId = b.ArtistId
JOIN tracks t
	ON t.AlbumId = a.AlbumId
WHERE 
	b.Name = "Aerosmith" OR 
	(
		b.Name = "AC/DC" AND
		a.Title = "Let There Be Rock"
	)
	
