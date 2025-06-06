-- Join table for players and their parents. (N:N; Players - Parents)
CREATE TABLE PlayerParents (
    
    -- Identification number for player.
    PlayerID INT NOT NULL,
	-- Identification number for parent.
    ParentID INT NOT NULL,
	
	--The PlayerID and ParentID fields together form the composite primary key of the table.
    PRIMARY KEY (PlayerID, ParentID),
	-- PlayerID in this table refer to PlayerID in Players table.
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
	-- ParentID in this table refer to ParentID in Parents table.
    FOREIGN KEY (ParentID) REFERENCES Parents(ParentID)
);
