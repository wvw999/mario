class ReviewsController < ActionController::Base
  def new
    @product = Product.find(params['product_id'].to_i)
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    if @review.save
      @product.ratings.push(@review.rating)
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  private
    def review_params
      params.require(:review).permit(:review, :user_id, :rating)
    end
    def product_params
      params.require(:product).permit(:rating)
    end
end
