-- USE curso;

-- CREATE TABLE curso.scores (
--     name VARCHAR(20),
--     score_one INT,
--     score_two INT,
--     score_three INT,
--     notes VARCHAR(50)
-- );

INSERT INTO curso.scores (name, score_one, score_two, score_three, notes)
VALUES ("Juan", 70, 75, 80, "Estudiante regular"),
("Pedro", 90, 95, 100, "Estudiante excelente"),
("Pedro Alberto", 65, 60, 70, "Estudiante deficiente"),
("Victor", 81, 85, 82, "Estudiante regular");


SELECT * FROM curso.scores 
WHERE (scores.score_one > 65 OR scores.score_one < 90) 
AND scores.score_three >= 80