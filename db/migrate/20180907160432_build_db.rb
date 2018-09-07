class BuildDb < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :ratings, :integer, array: true, default: []
      t.column :avg_rating, :integer
      t.column :user_id, :integer

      t.timestamps
    end

    create_table :reviews do |t|
      t.column :review, :string
      t.column :user_id, :integer

      t.timestamps
    end
    create_table :users do |t|
      t.column :username, :string
      t.column :password, :string
      t.column :admin, :boolean

      t.timestamps
    end
    create_join_table :products, :reviews
  end
end
