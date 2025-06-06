-- Join table for players and age groups. (N:N; Players - Age groups)
CREATE TABLE PlayerAgeGroups (

	-- Identification number for player.
    PlayerID INT NOT NULL,
	-- Identification number for Age group.
    AgeGroupID INT NOT NULL,
	
	--The PlayerID and AgeGroupID fields together form the composite primary key of the table.
    PRIMARY KEY (PlayerID, AgeGroupID),
	-- PlayerID in this table refer to PlayerID in Players table.
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
	-- AgeGroupID in this table refer to AgeGroupID in AgeGroups table.
    FOREIGN KEY (AgeGroupID) REFERENCES AgeGroups(AgeGroupID)
);