class UpdateProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :price, :string
    add_column :products, :country_origin, :string
  end
end
