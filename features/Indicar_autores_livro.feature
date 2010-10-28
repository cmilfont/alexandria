#language: pt

Funcionalidade: Indicar os autores de um livro
  Como um usuário
  Eu quero vincular autores a um livro
  Para cadastrar os livros

  Contexto:
    Dado que tenho "autores"
	|nome      |
        |kent beck |

@wip
  Cenário: Cadastro de livro
    Dado que estou em "Cadastrar livros"
      E seleciono "Autor" com "kent beck"
    Quando eu clicar em "Salvar"
    Então eu deverei ver em autor "kent beck"

