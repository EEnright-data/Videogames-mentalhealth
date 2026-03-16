/*game with score data*/
SELECT Game, AVG(GADT), AVG(SWLT), AVG(SPINT), AVG(Narcissism) FROM allscores
GROUP BY Game;

/*hours w scores*/
SELECT Hours, AVG(GADT), AVG(SWLT), AVG(SPINT), AVG(Narcissism) FROM allscores
GROUP BY Hours;

/*earnings with scores*/
SELECT CASE
WHEN `earnings` LIKE "fun" THEN "Fun"
WHEN `earnings` LIKE "%improv%" OR "%better%" THEN "Improvement"
WHEN `earnings` LIKE "%win%" THEN "To Win"
WHEN `earnings` LIKE "%oney%" OR "%earn%" OR "%rofit%" OR "%ncome%" THEN "For Money"
WHEN `earnings` LIKE "%waste%" OR "%time%" OR "%ored" THEN "To waste time"
WHEN `earnings` LIKE "%escape%" OR "%relief%" THEN "To escape"
ELSE "Other"
END AS `Reasons_to_play`, 
AVG(`GADT`), AVG(`SWLT`), AVG(`SPINT`), AVG(Narcissism)
FROM allscores
GROUP BY `Reasons_to_play`;

/*multiplayer types*/
SELECT CASE
WHEN `playstyle` LIKE "%trangers%" OR "%oloq%" THEN "Strangers"
WHEN `playstyle` LIKE "%riends%" OR "%partner%" OR "%friend" OR "%uoq%" THEN "Friends"
WHEN `playstyle` LIKE "%cquaintances%" THEN "Acquaintances"
WHEN `playstyle` LIKE "%ingle%" OR "%lone%" THEN "Singleplayer"
WHEN `playstyle` LIKE "%ulti%" THEN "Multiplayer"
WHEN `playstyle` LIKE "%oth%" OR "all" THEN "Multiplayer"
ELSE "Other"
END AS `Multiplayer_type`, 
AVG(`GADT`), AVG(`SWLT`), AVG(`SPINT`), AVG(Narcissism)
FROM allscores 
GROUP BY `Multiplayer_type`;