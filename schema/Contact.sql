-- Contacts for both players and parents. (1:1; Player or Parents - contact)
CREATE TABLE Contacts (
    
    -- Contact identification.
    ContactID INT IDENTITY(1,1) PRIMARY KEY,
	
	-- 'Player' or 'Parent'.
    OwnerType NVARCHAR(10) NOT NULL,
	-- PlayerID vagy ParentID.
    OwnerID INT NOT NULL,
	-- Address.
    Residence NVARCHAR(100),
	-- 'Player' or 'Parent' phone number.
    PhoneNumber NVARCHAR(20),
	-- 'Player' or 'Parent' email address.
    Email NVARCHAR(100)
	
	-- Restriction for owner to have only one contact.
	CONSTRAINT UQ_Contact_Owner UNIQUE (OwnerType, OwnerID)
);