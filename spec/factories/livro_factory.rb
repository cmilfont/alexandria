require 'action_controller/test_process'

# Paperclip attachments in factories, made easy based on technicalpickles
Factory.class_eval do
  def arquivo(file_name, path, content_type = nil)
    if content_type
      add_attribute file_name, ActionController::TestUploadedFile.new("#{RAILS_ROOT}/#{path}", content_type)
    else
      add_attribute file_name, ActionController::TestUploadedFile.new("#{RAILS_ROOT}/#{path}")
    end
  end
end

Factory.sequence :livro do |n|
  "name#{n}"
end

Factory.define :livro do |livro|
  livro.titulo "Agile Project Management with Scrum"
  livro.autor{|autor| autor.association(:autor, :nome => 'Ken Schwaber') }
  livro.ano 2004
#  livro.paginas {|items| [items.association(:pagina)]}
  #livro.arquivo { File.join(File.dirname(__FILE__), "paperclip", 'livro', 'arquivo', 'livro.pdf') }
  livro.arquivo("arquivo", "extra.pdf", "application/pdf")
end

