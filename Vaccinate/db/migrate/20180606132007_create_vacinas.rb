class CreateVacinas < ActiveRecord::Migration[5.1]
  def change
    create_table :vacinas do |t|
      t.string :idade
      t.string :vacina
      t.string :doenca_protecao
      t.string :dose
      t.string :dose_qtd
      t.string :via_administacao

      t.timestamps
    end
  end
end
