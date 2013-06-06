# == Schema Information
#
# Table name: arquivo_voz
#
#  id                       :integer          not null, primary key
#  usuario_id               :integer          not null
#  palavra                  :string(255)      not null
#  genero                   :binary           not null
#  idioma                   :string(255)      not null
#  pais                     :string(255)
#  estado                   :string(255)
#  formato                  :string(255)      not null
#  voz                      :string(255)      not null
#  frequencia_de_amostragem :string(255)
#

class ArquivoVoz < ActiveRecord::Base
  attr_accessible :palavra, :genero, :idioma, :pais, :estado, :frequencia_de_amostragem, :formato, :voz

  belongs_to :user
end
