Dado /^que tenha livros cadastrados$/ do
  Factory :livro
  Factory :livro, :nome => "Extreme Programming",
                  #:autor => "Kent Beck",
                  :ano => 1999
end

Dado /^que tenha autores cadastrados$/ do
  Factory :autor, :nome => "Kent Beck"
  Factory :autor, :nome => "Ken Schwaber"
end

Dado /^que estou em "([^\"]*)"$/ do |page_name|
  visit path_to(page_name)
end

Dado /^preencho "([^\"]*)" com "([^\"]*)"$/ do |selector, value|
  fill_in selector, :with => value
end

Quando /^eu clicar em "([^\"]*)"$/ do |button|
  click_button(button)
end

Então /^eu deverei ver  "([^"]*)" com "([^"]*)"$/ do |field, value|
    if defined?(Spec::Rails::Matchers)
      page.should have_content(value)
    else
      assert page.has_content?(value)
    end
end

Então /^eu deverei ver$/ do |tabela|
  tabela.hashes.each do |hash|
      page.should have_content(hash["nome"]) 
 end
end

Entao /^eu não deverei ver$/ do |tabela|
  tabela.hashes.each do |hash|
      page.should have_no_content(hash["nome"]) 
 end
end


Dado /^seleciono "([^\"]*)" com "([^\"]*)"$/ do |field, value|
   select(value, :from => field)
end

