class CreateTiposConta < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos_conta do |t|
      t.integer :codigo
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
