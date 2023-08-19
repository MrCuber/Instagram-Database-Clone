DELIMITER $$

CREATE TRIGGER prevent_self_follows
     BEFORE INSERT ON follows FOR EACH ROW
     BEGIN
     IF NEW.follower_id = NEW.followee_id
     THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'You Cannot Follow Yourself';
     END IF;
     END;
$$

DELIMITER ;