---#1----
CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  age INTEGER,
  height INTEGER,
  city VARCHAR(40),
  favorite_color VARCHAR (40)
)

--#2--
INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Michael Jordan', 22, 198, 'Brooklyn', 'red'),
('Lebron James', 33, 206, 'Akron', 'blue'),
('Derrick Rose', 25, 191, 'Chicago', null),
('Damian Lillard', 28, 191, 'Oakland', 'black'),
('Alex Caruso', 22, 193, 'Station', 'orange');

--#3--
SELECT * FROM person ORDER BY height DESC

--#4--
SELECT * FROM person ORDER BY height ASC

--#5--
SELECT * FROM person ORDER BY age DESC

--#6--
SELECT * FROM person WHERE age > 20 

--#7--
SELECT * FROM person WHERE age = 18

--#8--
SELECT * FROM person WHERE age < 20 OR age > 30 

--#9--
SELECT * FROM person WHERE age != 27

--#10--
SELECT * FROM person WHERE favorite_color != 'red'

--#11--
SELECT * FROM person WHERE favorite_color != 'red' OR favorite_color != 'blue'

--#12--
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green'

--#13--
SELECT * FROM person WHERE favorite_color IN('orange','green','blue');

--#14--
SELECT * FROM person WHERE favorite_color IN('yellow','purple');