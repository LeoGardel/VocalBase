class ArquivoTextoEVoz < ArquivoTexto
  self.table_name = "arquivo_texto_e_voz"
  attr_accessible :voz
end
