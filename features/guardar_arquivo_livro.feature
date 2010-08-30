#language: pt

Funcionalidade: Guardar livro
  Como um usuário
  Eu quero fazer upload de livros digitais
  Para alimentar a biblioteca

  Cenário: upload
    Dado que estou em "Cadastrar livros"
       E que eu preenchi "Autor" com "Kent Beck"
       E que eu preenchi "Editora" com "fulano de tal"
    Quando eu clicar em "enviar"
    Então eu deverei ver "Livro importado com sucesso!"

