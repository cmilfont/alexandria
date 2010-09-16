Factory.define :livro do |livro|
  livro.nome "Agile Project Management with Scrum"
  livro.association :autor
  livro.ano 2004
#  livro.paginas {|items| [items.association(:pagina)]}
end

