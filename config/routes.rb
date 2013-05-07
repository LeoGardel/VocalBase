VocalBase::Application.routes.draw do
  devise_for :users, 
  :path => "", 
  :path_names => { 
    :sign_in => "home", 
    :sign_out => "sair", 
    :sign_up => "home",
    :password => 'dadosPessoais',
    :confirmation => 'confirmacao'
  }
  root to: redirect("/home")
end
