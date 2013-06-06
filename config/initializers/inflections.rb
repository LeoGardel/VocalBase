# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
  # inflect.plural /^(ox)$/i, '\1en'
  # inflect.singular /^(ox)en/i, '\1'
  inflect.irregular 'arquivo_texto', 'arquivos_texto'
  inflect.irregular 'arquivo_voz', 'arquivos_voz'
  inflect.irregular 'arquivo_texto_e_voz', 'arquivos_texto_e_voz'
  # inflect.uncountable %w( fish sheep )
end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end
