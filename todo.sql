-- Each item should have the following fields:

-- id -- a serial primary key
-- title -- not optional, string up to 255 characters
-- details -- optional, holds a large amount of text
-- priority -- not optional, an integer. Default is 1.
-- created_at -- not optional. A date and time.
-- completed_at -- optional. A date a time.

-- In a file called todo.sql:

-- Write the CREATE TABLE statement to make this table.

CREATE TABLE stuffToDo (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details TEXT NULL, priority INT NOT NULL DEFAULT '1', created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP NULL);

-- Write INSERT statements to insert five todos into this table, with one of them completed.

INSERT INTO stuffToDo (title, priority, created_at) VALUES ('paint house', 2, '2017-06-22 09:00:00');
INSERT INTO stuffToDo (title, priority, details, created_at) VALUES ('build dog house', 3, 'dog needs a house too!', '2017-04-21 1:53:27');
INSERT INTO stuffToDo (title, priority, created_at) VALUES ('go to canada', 3, '2016-11-11 19:43:02');
INSERT INTO stuffToDo (title, priority, details, created_at) VALUES ('cook breakfast', 1, 'bacon is delicious',  '2017-06-27 06:32:19');
INSERT INTO stuffToDo (title, priority, details, created_at, completed_at) VALUES ('punch Patton Oswalt in the solar plexus', 1, 'he totally deserved it bro!', '2010-12-25 09:08:59', '2010-12-25 09:09:15');

-- Write a SELECT statement to find all incomplete todos.

SELECT * FROM stuffToDo WHERE completed_at IS NULL OR details IS NULL;

-- Write a SELECT statement to find all todos with a priority above 1.

SELECT * FROM stuffToDo WHERE priority > 1;

-- Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.

UPDATE stuffToDo SET completed_at = '2016-12-13 11:11:11' WHERE id = 3;

-- Write a DELETE statement to delete all completed todos.

DELETE FROM stuffToDo WHERE completed_at IS NOT NULL;




