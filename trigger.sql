--ця функція та триггер додають до імені гравця приставку Mr.
CREATE OR REPLACE FUNCTION add_mr() RETURNS trigger AS
$$
     BEGIN
          UPDATE players 
          SET player_name = 'Mr. ' || player_name 
		  WHERE players.player_id = NEW.player_id; 
		  RETURN NULL;
     END;
$$ LANGUAGE 'plpgsql';


CREATE TRIGGER player_mr_insert 
AFTER INSERT ON players
FOR EACH ROW EXECUTE FUNCTION add_mr();



