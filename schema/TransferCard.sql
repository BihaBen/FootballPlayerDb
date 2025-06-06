-- Player's short transfer card  -> (When transfered to us and from where); (When transfered from us and to where). (1:1; Player - Transfer card)
CREATE TABLE TransferCard (
    
    -- Identification number for transfer card.
    TransferID INT IDENTITY(1,1) PRIMARY KEY,
	-- Identification number for player.
    PlayerID INT NOT NULL,
    
	-- From club name.
    FromClub NVARCHAR(100),
	-- the date when it happened.
    TransferInDate DATE,
    
	-- To club name.
    ToClub NVARCHAR(100),
	-- the date when it happened.	
    TransferOutDate DATE,
	
	-- PlayerID in this table refer to PlayerID in Players table.
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);