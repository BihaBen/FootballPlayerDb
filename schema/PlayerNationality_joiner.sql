-- Join table for players and nationalities (N:N; Players - Nationalities)
CREATE TABLE PlayerNationalities (

	-- Identification number for player.
    PlayerID INT NOT NULL,
	-- Identification number for nationality.
    NationalityID INT NOT NULL,
	
	-- The PlayerID and NationalityID fields together form the composite primary key of the table.
    PRIMARY KEY (PlayerID, NationalityID),
	-- PlayerID in this table refer to PlayerID in Players table.
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
	-- NationalityID in this table refer to NationalityID in Nationality table.
    FOREIGN KEY (NationalityID) REFERENCES Nationality(NationalityID)
);