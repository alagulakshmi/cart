class ProductsController < ApplicationController

  def index
    @products=Product.all
  end

  def new
    @product=Product.new
    @category = SubCategory.all
  end

  def create
  	@product = Product.new(user_params)
    if @product.save
      flash[:success] = "information saved"
       redirect_to :action => "index"
        # redirect_to :controller =>'products', :action => 'show'
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    flash[:success]="User deleted"
    redirect_to :action => "index"
    #redirect_to :controller => 'products', :action => 'new'
  end

  def edit
    @product=Product.find(params[:id])
  end

  def update
    @product=Product.find(params[:id])
     if @product.update_attributes(user_params)
      # Handle a successful update.
      flash[:success]= "updated"
      redirect_to :action => "index"
    else
      render 'edit'
    end
  end

  def show
  	@product = Product.find(params[:id])
  end
 private
    def user_params
      params.require(:product).permit(:sub_category_id, :productName,:file_name,:description, :price, :stock, :avatar)
    end
end


