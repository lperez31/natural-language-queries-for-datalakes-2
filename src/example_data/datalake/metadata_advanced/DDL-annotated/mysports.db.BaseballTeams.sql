CREATE TABLE BaseballTeams ( -- This table contains specific information for baseball teams
    BaseballTeamID INTEGER PRIMARY KEY,
    TeamID INTEGER, -- References TeamID in Teams table. Range depends on number of teams.
    HomeRunFactor FLOAT, -- Home run factor for home stadium. Range 0.8-1.2, normally distributed around 1.0.
    DivisionRank INTEGER -- Rank within the division. Range 1-5, evenly distributed.
);
-- JOIN GRAPH: "BaseballTeams": ["Teams", "BaseballPlayers"]

-- <METADATA CHANNEL="sqlite" DATABASE="mysports.db" TABLE="BaseballTeams">
-- - Description: This table contains specific information for baseball teams
-- - Data:
-- -- BaseballTeamID: Primary key for the BaseballTeams table
-- -- TeamID: References TeamID in Teams table. Range depends on number of teams.
-- -- HomeRunFactor: Home run factor for home stadium. Range 0.8-1.2, normally distributed around 1.0.
-- -- DivisionRank: Rank within the division. Range 1-5, evenly distributed.
-- - Relationships:
-- -- (BaseballTeams.TeamID → Teams.TeamID) - Table containing information about sports teams
-- -- (BaseballTeams.BaseballTeamID → BaseballPlayers.BaseballTeamID) - Table containing specific information for baseball players
-- </METADATA>
-- 

-- File: mysports.BaseballTeams.txt 
-- BaseballTeamID: INTEGER FROM 1 TO 10 like [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
-- TeamID: INTEGER FROM 1 TO 10 like [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
-- HomeRunFactor: NUMERIC FROM 0.9 TO 1.15 like [1.15, 1.1, 1.08, 1.05, 1.02, 1.0, 0.98, 0.95, 0.93, 0.9]
-- DivisionRank: INTEGER FROM 1 TO 5 like [5, 4, 3, 2, 1]
-- 
