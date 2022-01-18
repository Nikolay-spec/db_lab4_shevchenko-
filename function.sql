--ця функція повертає ім'я гравця з найбільшим віком

CREATE OR REPLACE FUNCTION count_max_age() RETURNS char(50) AS
$$
    DECLARE
		player_name_and_id char(50);
    BEGIN
        
		SELECT player_name ||' '||player_id 
		INTO player_name_and_id
        FROM players
		WHERE player_age = (SELECT MAX(player_age) 
					 FROM players);
		
        RETURN player_name_and_id;
    END;
$$ LANGUAGE 'plpgsql';
