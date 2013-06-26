class AddTableArquivos < ActiveRecord::Migration
  def change
    create_table(:arquivos_voz) do |t|

      t.integer :user_id
      t.string :palavra
      t.binary :genero
      t.string :idioma
      t.string :pais
      t.string :estado
      t.string :formato
      t.string :voz
      t.string :frequencia_de_amostragem	

    end
    create_table(:arquivos_texto) do |t|

      t.integer :user_id
      t.string :titulo
      t.string :autor
      t.string :complemento
      t.string :categoria
      t.string :idioma
      t.string :texto

    end
    create_table(:arquivos_texto_e_voz) do |t|

      t.integer :user_id
      t.string :titulo
      t.string :autor
      t.string :complemento
      t.string :categoria
      t.string :idioma
      t.string :texto
      t.string :voz

    end
  end
end
