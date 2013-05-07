class ArquivoVoz < ActiveRecord::Base
  self.table_name = "arquivo_voz"
  attr_accessible :palavra, :genero, :idioma, :pais, :estado, :frequencia_de_amostragem, :formato, :voz

  belongs_to :user
end
