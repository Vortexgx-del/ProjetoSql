#  Banco de Dados - Jogadores e Personagens

Projeto de banco de dados desenvolvido para um trabalho da faculdade, com foco em **restrições (constraints)**, **integridade de dados** e **chaves (primary key e foreign key)** em SQL Server.

## 📖 Sobre o projeto

O objetivo é modelar um pequeno sistema de jogo, relacionando jogadores, personagens e partidas, aplicando na prática os conceitos estudados em aula sobre modelagem relacional.

Ainda estou aprendendo, então esse projeto também serve como espaço de estudo e treino dos conceitos.

## Estrutura do banco

O projeto conta com 3 tabelas principais:

- **Jogador** — armazena os dados dos jogadores (nome, e-mail, idade)
- **Personagem** — armazena os personagens, vinculados a um jogador
- **Partida** — armazena o histórico de partidas de cada jogador

##  Conceitos aplicados

- **PRIMARY KEY** — identificador único de cada tabela (`ID_Jogador`, `ID_Personagem`, `ID_Partida`)
- **FOREIGN KEY** — relacionamento entre `Personagem` e `Jogador`, e entre `Partida` e `Jogador`
- **UNIQUE** — garante que não existam e-mails ou nomes de personagem duplicados
- **CHECK** — restringe a idade do jogador a partir de 16 anos
- **DEFAULT** — define nível inicial 1 para todo personagem criado
- **NOT NULL** — garante que campos essenciais (como a data da partida) sempre sejam preenchidos

## Status: em desenvolvimento

Este projeto ainda está em construção. Próximos passos:

- Popular a tabela `Partida` com registros
- Praticar consultas com `JOIN` entre as tabelas
- Explorar funções de agregação (`COUNT`, `AVG`, `GROUP BY`)
- Revisar e corrigir pequenas inconsistências nos dados de teste

##  Como usar

1. Abra o arquivo `ProjetoAndamento.sql` no SQL Server Management Studio (ou outra ferramenta compatível).
2. Execute os comandos na ordem em que aparecem no script (criação das tabelas antes dos inserts).

---

—Projeto acadêmico, Unicid 🎓
