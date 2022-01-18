--щоб запустити це все треба запустити код з sql-файлів trigger, procedure, function
--перевірка функції
Select count_max_age();

--перевірка процедури
call count_sum_of_age_of_players('Juventus');

--перевірка триггеру
INSERT INTO Players(player_id,
                    player_photo,
                    player_workrate,
                    player_name,
                    player_age,
                    player_wage,   
                    country_id,
                    team_id)
VALUES (150230, 'https://cdn.sofifa.org/players/4/19/1580203.png','Medium/ Medium', 'L. Messii',	     310, 5650000, 0001, 0001);
select player_name from players
