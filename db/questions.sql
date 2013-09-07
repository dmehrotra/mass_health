.mode column
.headers on

-- What 3 towns have the highest population of citizence who are 65 years or older?
SELECT town, elder_population FROM town_health_records ORDER BY elder_population DESC LIMIT 3;

-- What 3 towns have the highest population of citizens who are 19 years or younger?
SELECT town, youth_population FROM town_health_records ORDER BY youth_population DESC LIMIT 3;

-- What 5 towns have the lowest per capita income?
SELECT town, income FROM town_health_records ORDER BY income ASC LIMIT 5;

-- What town has the highest percentage of teen births, excluding Boston, Becket, and Beverly?
SELECT town, teen_preg FROM town_health_records WHERE town != 'Boston' AND town != 'Becket' AND town != 'Beverly' ORDER BY teen_preg DESC LIMIT 1;

-- What town has the highest number of infant mortalities, excluding Boston?
SELECT town, infant_mortality FROM town_health_records WHERE town != 'Boston' ORDER BY infant_mortality DESC LIMIT 1;

