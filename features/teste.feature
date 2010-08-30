#language: pt

Funcionalidade: Matricular alunos
  Para treinar meus funcionários
  Como uma empresa cadastrada
  Eu quero matricular alunos

  Cenário: Matricular aluno
    Dado que estou no curso "Treinamento Rails"
      E preencher "Selecionar o aluno" com "01017806306"
    Quando clicar em "Incluir"
    Então preciso ver "Aluno matriculado com sucesso."

