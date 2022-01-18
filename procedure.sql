--ця процедура отримує ім'я команди та виводить суму років гравців

CREATE OR REPLACE PROCEDURE count_sum_of_age_of_players(t_name char(50)) 
LANGUAGE 'plpgsql'
AS $$
DECLARE sum_of_age_of_players integer;

BEGIN
  SELECT SUM(player_age) INTO sum_of_age_of_players
  FROM players
  JOIN clubs
  using (team_id)
  WHERE clubs.team_name = t_name;
    RAISE INFO 'Team name: %,  Sum of player_wage: %', t_name,  sum_of_age_of_players;
END;
$$;



call count_sum_of_age_of_players('Juventus');
