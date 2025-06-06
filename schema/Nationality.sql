-- Nationality of player. (1:N; Player-Nationalities).
CREATE TABLE Nationality (
	
	-- Identification number for nationality.
    NationalityID INT PRIMARY KEY,
	
	-- Current nationality's name.
    Country NVARCHAR(50)                    
);