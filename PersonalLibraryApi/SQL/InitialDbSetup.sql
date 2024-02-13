CREATE DATABASE PersonalLibraryDatabase
GO

USE PersonalLibraryDatabase
GO

CREATE SCHEMA PersonalLibrarySchema
GO

CREATE TABLE PersonalLibrarySchema.Book(
    BookId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(50),
    Author NVARCHAR(50),
    PublishDate DATE,
    TotalPages INT,
    AcquisitionDate NVARCHAR(50),
    Rating DECIMAL(2,1),
    TimesRead INT
);