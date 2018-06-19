class CreateMeuperfils < ActiveRecord::Migration[5.1]
  def change
    create_table :meuperfils do |t|
      t.string :nome
      t.integer :idade
      t.string :vacinas_tomadas

      t.timestamps
    end
  end
end
#vacinas tomadas foi inializada no banco acima
