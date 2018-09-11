class ProductsController < ActionController::Base
  def index
    sort_value = params[:sort]
    @products = Product.get_scope(sort_value)
    @top_three_products = Product.all.sample(3)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products/"
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :user_id, :rating)
    end
end
