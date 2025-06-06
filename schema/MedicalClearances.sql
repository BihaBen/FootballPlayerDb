-- Medical clearances. (1:1; Player - Document)
CREATE TABLE MedicalClearances (

    -- Identification number for medical clearance.
    MedicalClearanceID INT IDENTITY(1,1) PRIMARY KEY,
	-- Identification number for player.
    PlayerID INT NOT NULL UNIQUE,
	
	-- Card number.
    RegistrationCardNumber NVARCHAR(50),
	-- Document validity date.
    ValidUntil DATE,
	-- Date of issue of the document.
    IssuedAt DATE,

     -- Calculated column: Is the sport medical clearance still valid? Is today's date older than valid until date?
	 -- 1 = valid, 0 = expired.
    IsValid AS CASE 
        WHEN ValidUntil >= CAST(GETDATE() AS DATE) THEN 1
        ELSE 0
    END,
	
	-- PlayerID in this table refer to PlayerID in Players table.
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);