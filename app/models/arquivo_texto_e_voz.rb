# == Schema Information
#
# Table name: arquivo_texto_e_voz
#
#  id          :integer          not null, primary key
#  usuario_id  :integer          not null
#  titulo      :string(255)      not null
#  autor       :string(255)      not null
#  complemento :string(255)
#  categoria   :string(255)
#  idioma      :string(255)      not null
#  texto       :string(255)
#  voz         :string(255)      not null
#

class ArquivoTextoEVoz < ArquivoTexto
  attr_accessible :voz, :texto, :idioma, :categoria, :complemento, :autor, :titulo

  belongs_to :user
end
