DROP DATABASE PersonalLibraryDatabase
GO

CREATE DATABASE PersonalLibraryDatabase
GO

USE PersonalLibraryDatabase
GO

CREATE SCHEMA PersonalLibrarySchema
GO

CREATE TABLE PersonalLibrarySchema.Books(
    BookId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(50),
    Author NVARCHAR(50),
    PublishDate DATE,
    TotalPages INT,
    AcquisitionDate DATE,
    Rating DECIMAL(2,1),
    TimesRead INT
);

INSERT INTO PersonalLibrarySchema.Books (Title, Author, PublishDate, TotalPages, AcquisitionDate, Rating, TimesRead)
VALUES ('Discourses on Livy', 'Niccolo Machiavelli', '1517', 414, '20220605' , 8.2, 1),
       ('A Time of Gifts', 'Patrick Leigh Fermor', '1977', 321, '20231225', 9.3, 2),
       ('Stalingrad', 'Vasily Grossman', '2019', 1053, '20240107', 9.0, 1),
       ('The Anatomy of Melancholy', 'Robert Burton', '1621', 1070, '20190202', 8.4, 1),
       ('Akenfield: Portrait of an English Village', 'Ronald Blythe', '1969', 353, '20221225', 9.0, 1);

SELECT * FROM PersonalLibrarySchema.Books;