--ця процедура отримує ім'я команды та її бюджет витрачений на гравців щомісячно 


CREATE OR REPLACE PROCEDURE count_sum_of_wage_teams(t_name char(50)) 
LANGUAGE 'plpgsql'
AS $$
DECLARE sum_of_wage_teams;

BEGIN
	SELECT player_wage INTO sum_of_wage_teams
	FROM players,clubs
	WHERE clubs.team_name = t_name;
    RAISE INFO 'Team name: %,  Sum of player_wage: %', t_name,  sum_of_wage_teams;
END;
$$;
select count_sum_of_wage_teams('Juventus')
