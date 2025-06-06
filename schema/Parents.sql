-- Parents and their details.
CREATE TABLE Parents (

    -- Identification number for parent.
    ParentID INT IDENTITY(1,1) PRIMARY KEY,

	-- First name.
    ParentFirstName NVARCHAR(50) NOT NULL,
	-- Last name.
    ParentLastName NVARCHAR(50) NOT NULL,
	-- Parent's relation type (Mother or Father).
    RelationType NVARCHAR(10)
);