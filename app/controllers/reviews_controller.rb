class ReviewsController < ActionController::Base
  def new

  end

  def create

  end

  private
    def review_params
      params.require(:review).permit(:review, :user_id)
    end
end
