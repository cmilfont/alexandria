#language: pt

Funcionalidade: Encontrar livros por busca textual
  Como um leitor
  Eu quero buscar por trecho do texto
  Para listar os livros que desejo ler

  Contexto:
    Dado que tenho "autores"
      | nome          |
      | Ken Schwaber  |
      | Ari           |
      | Diego         |
      | Rafael        |
      | Palacio       |

    Dado que tenho "livros"
      | titulo                              | autor_id  | ano  |
      | Agile Project Management with Scrum | 1  	| 2004 |
      | O doce veneno do escorpião          | 3         | 1998 |
      | O homem que copiava                 | 4         | 2002 |
      | Kamasutra                           | 2         | 1999 |
      | Como sair do Armário                | 5         | 2010 |
      | Livro que nao conheco               | 1         | 2011 |

@wip
  Cenário: Busca Textual
    Dado que estou em "Buscar livros"
      E preencho "busca" com "The Product Owner"
    Quando eu clicar em "buscar"
    Então eu deverei ver
      | titulo                              | autor         | ano  |
      | Agile Project Management with Scrum | Ken Schwaber  | 2004 |
    E eu não deverei ver os livros
      | titulo                              | autor         | ano  |
      | Como sair do Armário                | Palacio       | 2010 |
      | O doce veneno do escorpião          | Diego         | 1998 |
      | O homem que copiava                 | Rafael        | 2002 |
      | Kamasutra                           | Ari           | 1999 |
      | Livro que nao conheco               | Ken Schwaber  | 2011 |

