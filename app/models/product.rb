class Product < ActiveRecord::Base
  validates :name, :description, :presence => true
  has_and_belongs_to_many :reviews
  # belongs_to :user

  def self.get_scope(sort_value)
    if sort_value == 'title'
      self.sort_alpha
    elsif sort_value == 'date'
      self.sort_date
    else
      self.all
    end
  end

    scope :sort_alpha, -> {(
      select("products.id, products.name, products.description, products.avg_rating")
      .order("lower(products.name) ASC")
      )}

    scope :sort_date, -> {(
      select("products.id, products.name, products.description, products.created_at, products.avg_rating")
      .order("products.created_at DESC")
      )}

    def product_rating(rating)
      number = rating.to_i
      ratings.push(number)
      avg_rating = (ratings.reduce(:+)/ratings.length)
      return [ratings, avg_rating]
    end
end
