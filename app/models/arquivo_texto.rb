# == Schema Information
#
# Table name: arquivo_texto
#
#  id          :integer          not null, primary key
#  usuario_id  :integer          not null
#  titulo      :string(255)      not null
#  autor       :string(255)      not null
#  complemento :string(255)
#  categoria   :string(255)
#  idioma      :string(255)      not null
#  texto       :string(255)
#

class ArquivoTexto < ActiveRecord::Base
  attr_accessible :titulo, :autor, :complemento, :categoria, :idioma, :texto

  belongs_to :user
end
