class AddTableArquivos < ActiveRecord::Migration
  def change
    create_table(:arquivos_voz) do |t|

      t.integer :usuario_id,				:null => false
      t.string :palavra,					:null => false
      t.binary :genero,						:null => false
      t.string :idioma,						:null => false
      t.string :pais
      t.string :estado
      t.string :formato,					:null => false
      t.string :voz, 						:null => false
      t.string :frequencia_de_amostragem	

    end
    create_table(:arquivos_texto) do |t|

      t.integer :usuario_id,				:null => false
      t.string :titulo,						:null => false
      t.string :autor,						:null => false
      t.string :complemento
      t.string :categoria
      t.string :idioma,						:null => false
      t.string :texto

    end
    create_table(:arquivos_texto_e_voz) do |t|

      t.integer :usuario_id,				:null => false
      t.string :titulo,						:null => false
      t.string :autor,						:null => false
      t.string :complemento
      t.string :categoria
      t.string :idioma,						:null => false
      t.string :texto
      t.string :voz, 						:null => false

    end
  end
end
