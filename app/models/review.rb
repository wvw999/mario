class Review < ActiveRecord::Base
  validates :review, :rating, :presence => true
  validates :rating, numericality: { greater_than: 0, less_than: 6}
  has_and_belongs_to_many :products
  # belongs_to :user
end
