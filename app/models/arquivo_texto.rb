class ArquivoTexto < ActiveRecord::Base
  self.table_name = "arquivo_texto"
  attr_accessible :titulo, :autor, :complemento, :categoria, :idioma, :texto

  belongs_to :user
end
