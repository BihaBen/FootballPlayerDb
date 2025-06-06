-- The name of age groups. For instance: U17.
CREATE TABLE AgeGroups(
    
	-- Identification number for age groups.
    AgeGroupID INT IDENTITY(1,1) PRIMARY KEY,
	
	-- Age group name. For instance: U17.
    AgeGroupName NVARCHAR(4)               
);