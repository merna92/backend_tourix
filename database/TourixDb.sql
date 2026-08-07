IF DB_ID(N'TourixDb') IS NULL
BEGIN
    CREATE DATABASE TourixDb;
END;
GO

USE TourixDb;
GO

-- EF Core creates the full schema from the backend model on first run.
-- Canonical schema files:
-- backend/Tourix.Api/Database/TourixDbContext.cs
-- backend/Tourix.Api/Database/Entities/TourixEntities.cs
--
-- Run the backend once after creating this database:
-- dotnet run --project backend\Tourix.Api --urls http://localhost:5020
--
-- The backend calls Database.EnsureCreated() and inserts seed data for:
-- Cities, Places, Media, Trips, TripPlaces, QuestTemplates, TripQuests,
-- Stickers, Badges, EgyptianPhrases, QuizQuestions, RewardItems, and Chat.

SELECT
    name AS DatabaseName,
    create_date AS CreatedAt
FROM sys.databases
WHERE name = N'TourixDb';
GO
