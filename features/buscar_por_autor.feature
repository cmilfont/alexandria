#language: pt

Funcionalidade: Encontrar livros por autor
  Como um leitor
  Eu quero buscar pelo autor do livro
  Para listar os livros que desejo ler

  Contexto:
    Dado que tenha livros cadastrados
     E que tenha autores cadastrados

  @wip
  Cenário: Busca pelo autor
    Dado que estou em "Buscar livros"
      E seleciono "autor" com "Ken Schwaber"
    Quando eu clicar em "buscar"
    Então eu deverei ver
      | nome                                | autor         | ano  |
      | Agile Project Management with Scrum | Ken Schwaber  | 2004 |

