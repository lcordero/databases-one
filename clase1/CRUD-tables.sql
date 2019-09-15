-- USAR MI DB
USE curso;

-- ELIMINAR TABLA SI EXISTE
DROP TABLE IF EXISTS tasks;

-- CREAR TABLA
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE,
    status TINYINT NOT NULL,
    priority TINYINT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)


-- REFERENCIAS
-- * Data-types: http://www.mysqltutorial.org/mysql-data-types.aspx