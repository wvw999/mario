class Product < ActiveRecord::Database
  validates :name, :description, :presence => true
  has_and_belongs_to_many :Reviews
  belongs_to :users

  
end
