Select vg.game_name, vg.Platform, vg.Year_Of_Release, vg.Genre, vg.Publisher, vg.NA_Sales, vg.EU_Sales,
vg.JP_Sales, vg.Other_Sales, vg.Global_Sales, vg.Critic_Score, vg.User_Score, vi.game_id
FROM video_games as vg
LEFT JOIN video_games_id as vi
ON vg.game_name = vi.game_name;