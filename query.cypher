//Query geral
MATCH (n) 
RETURN n

//Query de todos os alunos
MATCH (aluno:ALUNO) RETURN aluno

//Query de todos os professores
MATCH (professor:PROFESSOR) RETURN professor

//Query por nome
MATCH (aluno:ALUNO) RETURN aluno.nome

//Query especifico da chamada dos alunos
MATCH (aluno:ALUNO)
WHERE aluno.nome = "Gustavo Otavio"
RETURN aluno

MATCH (aluno:ALUNO)
WHERE aluno.nome = "Gabriel Garcia"
RETURN aluno

//Query dos alunos cursando o Curso
MATCH (aluno:ALUNO) - [:CURSANDO]-> (curso:CURSO)
WHERE curso.nome = "Engenharia de Computação"
RETURN aluno, curso

MATCH (aluno:ALUNO) - [:CURSANDO]-> (curso:CURSO)
WHERE curso.nome = "Ciencia da Computação"
RETURN aluno, curso

//Query das materias ensinadas pelo professor
MATCH (professor:PROFESSOR) - [:ENSINA]-> (materia:MATERIA)
WHERE materia.nome = "Banco de Dados"
RETURN professor, materia

MATCH (professor:PROFESSOR) - [:ENSINA]-> (materia:MATERIA)
WHERE materia.nome = "Assembly"
RETURN professor, materia

//Query onde mostra os professores daquele aluno
MATCH (aluno)-[:ESTUDA]->(materia)<-[:ENSINA]-(professor)
WHERE aluno.nome = "Gabriel Garcia"
RETURN aluno,materia,professor