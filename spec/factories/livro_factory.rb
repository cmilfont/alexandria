Factory.define :livro do |livro|
  livro.titulo "Agile Project Management with Scrum"
  livro.autor{|autor| autor.association(:autor, :nome => 'Ken Schwaber') }
  livro.ano 2004
#  livro.paginas {|items| [items.association(:pagina)]}
end

