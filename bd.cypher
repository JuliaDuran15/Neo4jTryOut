CREATE

(gustavo:ALUNO{nome:"Gustavo Otavio", ra: 22990011, semestre: 5}),
(julia:ALUNO{nome:"Julia Duran", ra: 22889900, semestre: 5}),
(thayna:ALUNO{nome:"Thayna Aquino Garcia", ra: 23881199, semestre: 4}),
(lucas:ALUNO{nome:"Lucas Leme", ra: 21781199, semestre: 7}),
(gabriel:ALUNO{nome:"Gabriel Garcia", ra: 21781199, semestre: 7}),

(leandro:PROFESSOR{nome: "Leandro Xastre", rp: 178900}),
(ricardo:PROFESSOR{nome: "Ricardo Pannain", rp: 124477}),
(miro:PROFESSOR{nome: "Valdomiro Silva", rp: 124477}),

(EC:CURSO{nome: "Engenharia de Computação"}),
(CC:CURSO{nome: "Ciencia da Computação"}),

(BD:MATERIA{nome: "Banco de Dados"}),
(assembly:MATERIA{nome: "Assembly"}),
(estatistica:MATERIA{nome: "Estatistica"}),

(gustavo)-[:CURSANDO]->(EC),
(julia)-[:CURSANOO]->(EC),
(thayna)-[:CURSANDO]->(CC),
(lucas)-[:CURSANDO]->(CC),
(gabriel)-[:CURSANDO]->(EC),

(leandro)-[:ENSINA]->(BD),
(ricardo)-[:ENSINA]->(assembly),
(miro)-[:ENSINA]->(estatistica),

(BD)-[:DISCIPLINA]->(EC),
(assembly)-[:DISCIPLINA]->(CC),
(estatistica)-[:DISCIPLINA]->(CC),
(estatistica)-[:DISCIPLINA]->(EC),

(gustavo)-[:ESTUDA]->(BD),
(gustavo)-[:ESTUDA]->(assembly),
(julia)-[:ESTUDA]->(BD),
(thayna)-[:ESTUDA]->(assembly);
(thayna)-[:ESTUDA]->(estatistica);
(lucas)-[:ESTUDA]->(BD);
(gabriel)-[:ESTUDA]->(assembly);
(gabriel)-[:ESTUDA]->(estatistica);