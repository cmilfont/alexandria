#language: pt

Funcionalidade: Indicar os autores de um livro
  Como um usuário
  Eu quero vincular autores a um livro
  Para cadastrar os livros

  Contexto:
    Dado que tenha autores cadastrados

  Cenário: Cadastro de livro
    Dado que estou em "Cadastrar livros"
      E seleciono "autor" com "Ken Schwaber"
    Quando eu clicar em "salvar"
    Então eu deverei ver em autor "Ken Schwaber"

