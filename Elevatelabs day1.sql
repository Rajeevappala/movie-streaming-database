-- Create Database
CREATE DATABASE MovieStreamingDB;
GO

-- Use the new database
USE MovieStreamingDB;
GO

-- Users Table
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE,
    Password NVARCHAR(100),
    JoinDate DATE
);

-- Subscriptions Table
CREATE TABLE Subscriptions (
    SubscriptionID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    PlanName NVARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Price DECIMAL(6, 2),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Movies Table
CREATE TABLE Movies (
    MovieID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(200),
    ReleaseYear INT,
    Language NVARCHAR(50),
    Duration INT, -- in minutes
    Description NVARCHAR(MAX)
);

-- Genres Table
CREATE TABLE Genres (
    GenreID INT IDENTITY(1,1) PRIMARY KEY,
    GenreName NVARCHAR(50)
);

-- MovieGenres (Many-to-Many between Movies and Genres)
CREATE TABLE MovieGenres (
    MovieID INT,
    GenreID INT,
    PRIMARY KEY (MovieID, GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- WatchHistory Table
CREATE TABLE WatchHistory (
    HistoryID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    MovieID INT,
    WatchDate DATETIME,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

-- Reviews Table
CREATE TABLE Reviews (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    MovieID INT,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comment NVARCHAR(MAX),
    ReviewDate DATE,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);
