class CategoriesController < ApplicationController

 def index
  @categories=SubCategory.all
  end

 def new
  @category = SubCategory.new
  @admin = Category.all
  	
  end

  def create
  	@category = SubCategory.new(user_params)
    if @category.save
      flash[:success] = "information saved"
      #redirect_to @category
      redirect_to :action => 'index'
    end
  end

  def show
    @category = SubCategory.find(params[:id])
  end

  def destroy
    @category=SubCategory.find(params[:id])
    @category.destroy
    
    redirect_to :action => 'index'
  end

  def edit
    @category=SubCategory.find(params[:id])
  end

  def update
   @category=SubCategory.find(params[:id])
     if @category.update_attributes(user_params)
      # Handle a successful update.
      flash[:success]= "updated"
      redirect_to :action => "index"
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:sub_category).permit(:category_id, :Sub_name)
    end
end
