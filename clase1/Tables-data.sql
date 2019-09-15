USE curso;

-- INSERTAR DATA
INSERT INTO tasks (title, start_date, due_date, status, priority, description)
VALUES ("My TASK", "2019-01-01", "2019-01-31", 2, 1, "Description here");


-- # PARA INSERTS MULTIPLES:
-- INSERT INTO <table> (columns, go, here)
-- VALUES (values, here),
-- ( More, values, here ),
-- ( More, values, here ),
-- ( More, values, here )


-- SELECCIONAR TODA LA DATA DE UNA TABLA
SELECT * FROM tasks;

-- BONUS
-- SELECT tasks.* FROM curso.tasks;

-- ELIMINAR TODA LA DATA DE UNA TABLA
-- TRUNCATE TABLE tasks;