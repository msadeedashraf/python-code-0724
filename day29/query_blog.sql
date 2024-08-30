-- Create the database
CREATE DATABASE BlogDb;
GO

USE BlogDb;
GO

-- Create the Categories table
CREATE TABLE Categories (
    CategoryId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL
);
GO

-- Create the Posts table
CREATE TABLE Posts (
    PostId INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(255) NOT NULL,
    Content NVARCHAR(MAX) NOT NULL,
    CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
    CategoryId INT FOREIGN KEY REFERENCES Categories(CategoryId)
);
GO

-- Insert sample data into Categories
INSERT INTO Categories (Name) VALUES ('Technology');
INSERT INTO Categories (Name) VALUES ('Lifestyle');
INSERT INTO Categories (Name) VALUES ('Travel');
GO

-- Insert sample data into Posts
INSERT INTO Posts (Title, Content, CategoryId) VALUES 
('The Rise of AI', 'Artificial Intelligence is rapidly evolving...', 1),
('10 Tips for a Healthier Lifestyle', 'Incorporate these tips into your daily routine...', 2),
('Exploring the Wonders of Japan', 'Japan offers a unique blend of tradition and modernity...', 3);
GO
