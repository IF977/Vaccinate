class CreatePostos < ActiveRecord::Migration[5.1]
  def change
    create_table :postos do |t|
      t.string :nome
      t.string :endereco
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
