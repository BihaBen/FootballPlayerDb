-- Players and their details.
CREATE TABLE Players (
	
	-- Identification number for player.
    PlayerID INT IDENTITY(1,1) PRIMARY KEY,
	
	-- First name.
    PlayerFirstName NVARCHAR(50) NOT NULL,
	-- Last name.
    PlayerSecondName NVARCHAR(50) NOT NULL,
	-- Birthsday date.
    DateOfBirth DATE NOT NULL,
	-- Birth place (country).
    CountryOfBirth NVARCHAR(50)
);