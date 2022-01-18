--ця процедура отримує ім'я команды та її бюджет витрачений на гравців щомісячно 


CREATE OR REPLACE PROCEDURE count_sum_of_wage_teams(t_name char(50)) 
LANGUAGE 'plpgsql'
AS $$
DECLARE sum_of_pts_reb_ast integer;

BEGIN
	SELECT player_wage INTO sum_of_pts_reb_ast
	FROM players,clubs
	WHERE clubs.team_name = t_name;
    RAISE INFO 'Players name: %,  Sum of player_wage: %', t_name,  sum_of_pts_reb_ast;
END;
$$;
select count_sum_of_wage_teams(FC Barcelona)
