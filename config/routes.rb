VocalBase::Application.routes.draw do
  devise_for :users, 
  :path => "", 
  :path_names => {
    :sign_out => 'sair',
    :password => 'dadosPessoais',
    :confirmation => 'confirmacao'
  }

  resources :arquivos_voz
  resources :arquivos_texto
  resources :arquivos_texto_e_voz

  get '/estado_select' => 'pais_estado#estado_select'

  get '/upload' => 'static_pages#upload', as: :upload
  
  root to: "static_pages#home"
end
