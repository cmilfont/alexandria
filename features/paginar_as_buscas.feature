#language: pt
Funcionalidade: Paginar as buscas
  Como um leitor
  Eu quero paginar as buscas
  Para facilitar a visualização

 Contexto:
    Dado que tenho autores
      | nome          |
      | Ken Schwaber  |
      | Ari           |
      | Diego         |
      | Rafael        |
      | Palacio       |

    Dado que tenho livros
      | nome                                | autor         | ano  |
      | Agile Project Management with Scrum | Ken Schwaber  | 2004 |
      | O doce veneno do escorpião          | Diego         | 1998 |
      | O homem que copiava                 | Rafael        | 2002 |
      | Kamasutra                           | Ari           | 1999 |
      | Como sair do Armário                | Palacio       | 2010 |

  Cenário: Busca pelo autor
    Dado que estou em "listagem de autores"
     Então eu deverei ver
      | nome          |
      | Ken Schwaber  |
      | Ari           |
      | Diego         |

  Cenário: Busca pelo autor
    Dado que estou em "listagem de autores"
        Entao eu não deverei ver
          | nome          |
          | Rafael        |
          | Palacio       |


  Cenário: Busca por livros
    Dado que eu estou em "listagem de livros"
     Então eu deverei ver
      | nome                                | autor         | ano  |
      | Agile Project Management with Scrum | Ken Schwaber  | 2004 |
      | O doce veneno do escorpião          | Diego         | 1998 |
      | O homem que copiava                 | Rafael        | 2002 |

  Cenário: Busca por livros
    Dado que estou em "listagem de autores"
        Entao eu não deverei ver
            | nome                                | autor         | ano  |
            | Kamasutra                           | Ari           | 1999 |
            | Como sair do Armário                | Palacio       | 2010 |
