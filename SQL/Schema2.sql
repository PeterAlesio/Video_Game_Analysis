Create Table Video_Games (
	game_name VARCHAR NOT NULL,
	Platform VARCHAR NOT NULL,
	Year_Of_Release VARCHAR NOT NULL,
	Genre VARCHAR NOT NULL,
	Publisher VARCHAR NOT NULL,
	NA_Sales Decimal NOT NULL,
	EU_Sales Decimal NOT NULL,
	JP_Sales Decimal NOT NULL,
	Other_Sales Decimal NOT NULL,
	Global_Sales Decimal NOT NULL,
	Critic_Score INT NOT NULL,
	User_Score Decimal NOT NULL

);

Create Table Video_Games_ID(
	game_id INT NOT NULL,
	game_name VARCHAR NOT NULL,
Primary Key (game_id)
);