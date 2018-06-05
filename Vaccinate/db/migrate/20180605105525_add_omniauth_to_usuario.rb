class AddOmniauthToUsuario < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :name, :string
    add_column :usuarios, :provider, :string
    add_column :usuarios, :uid, :string
  end
end
