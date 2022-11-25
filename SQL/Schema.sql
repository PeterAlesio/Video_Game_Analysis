Create Table Video_Games (
	Title VARCHAR NOT NULL,
	Publisher VARCHAR NOT NULL,
	Year DATE NOT NULL,
	Platform VARCHAR NOT NULL,
	Genre VARCHAR NOT NULL,
	NA_Sales INT NOT NULL,
	EU_Sales INT NOT NULL,
	JP_Sales INT NOT NULL,
	Other_Sales INT NOT NULL,
	Global_Sales INT NOT NULL,
	Primary Key (Title),
	Unique (Title)
);

Create Table Reviews(
	Title VARCHAR NOT NULL,
	Critic_Score INT NOT NULL,
	User_Score INT NOT NULL,
FOREIGN KEY (Title) REFERENCES Video_Games (Title),
	PRIMARY KEY (Title)
);