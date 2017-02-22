-- Table definitions for the tournament project.
--
-- Clean up any previous tournament databases
DROP DATABASE IF EXISTS tournament;

-- Create the database and tables
CREATE DATABASE tournament;
\connect tournament;

CREATE TABLE players(
	player_id SERIAL PRIMARY KEY,
	name TEXT
);

CREATE TABLE matches(
	PRIMARY KEY (winner,loser),
	winner INTEGER references players(player_id),
	loser INTEGER references players(player_id)
);


CREATE OR REPLACE VIEW games_view AS
SELECT players.player_id, COUNT(matches.*) AS games
FROM players LEFT JOIN matches
ON players.player_id = matches.winner OR players.player_id = matches.loser
GROUP BY players.player_id;



