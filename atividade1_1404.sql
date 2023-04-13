/* Criação da tabela de tarefas: Crie uma tabela chamada "tasks" com as colunas "id" (chave primária), "title" (título da tarefa),
 "description" (descrição da tarefa), "priority" (prioridade da tarefa), "due_date" (data de vencimento da tarefa) e "status" (status da tarefa). */

CREATE TABLE tasks (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
	descrição TEXT NOT NULL,
    prioridade VARCHAR(150) NOT NULL, 
    status_da_tarefa VARCHAR(100) DEFAULT "Aberta",
    data_de_entrega DATE NOT NULL
    
) ENGINE = InnoDB;

/* Inserção de dados na tabela: Insira cinco tarefas na tabela "tasks", especificando os valores das colunas "title",
 "description", "priority" e "due_date". O status deve iniciar com valor de "open". */
 
 INSERT INTO tasks (titulo, descrição, prioridade, data_de_entrega) 
VALUES ("Limpar as salas", "Varrer e tirar pó"	"Assim que possível", "Hoje", '2023-04-20');

/* Seleção de dados na tabela: Consulte todas as tarefas. O "*" indica que queremos selecionar todas as colunas da tabela. */

SELECT * FROM tasks;

/* Atualização de dados na tabela: Atualize o status da tarefa com id igual a 1 para "closed" (fechada). */

UPDATE tasks SET status_da_tarefa = "fechada" WHERE id = 1;

/* Exclusão de dados na tabela: Exclua todas as tarefas com status "closed" (fechadas) da tabela "tasks". */

DELETE FROM tasks WHERE status_da_tarefa = "fechada";
