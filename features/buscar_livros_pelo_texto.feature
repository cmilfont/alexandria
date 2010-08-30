#language: pt

Funcionalidade: Encontrar livros por busca textual
  Como um leitor
  Eu quero buscar por trecho do texto
  Para listar os livros que desejo ler

  Contexto:
    Dado que tenha livros cadastrados

  Cenário: Busca Textual
    Dado que estou em "Buscar livros"
      E preencho "busca" com "The Product Owner"
    Quando eu clicar em "buscar"
    Então eu deverei ver
      | nome                                | autor         | ano  |
      | Agile Project Management with Scrum | Ken Schwaber  | 2004 |

