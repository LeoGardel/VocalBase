VocalBase::Application.routes.draw do
  devise_for :users, 
  :path => "", 
  :path_names => {
  	:sign_in => 'home',
    :sign_out => 'sair',
    :password => 'dadosPessoais',
    :sign_up => 'home',
    :confirmation => 'confirmacao'
  }

  get '/estado_select' => 'pais_estado#estado_select'
  
  root to: redirect("/home")
end
