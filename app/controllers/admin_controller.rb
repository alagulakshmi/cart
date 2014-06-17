class AdminController < ApplicationController
  
  def index
 @admins=Category.all
    #Category.find(params[:id]).destroy
    #flash[:success]="Category deleted"
  	#@admins=Category.all
  end

  def show
  end

  def destroy
    
    #render 'admin/delete'\
    @admin = Category.find(params[:id])
    @admin.destroy
    redirect_to :action => 'index'
  end

  def new
  	@admin=Category.new
  end

  def create
  @admin = Category.new(user_params)
    if @admin.save
      flash[:success] = "information saved"
    redirect_to :action => "index"
    else
      render 'admin/new'
    end
  end

  def edit
  @admin=Category.find(params[:id])
  end

  def update
   @admin=Category.find(params[:id])
     if @admin.update_attributes(user_params)
      # Handle a successful update.
      flash[:success]= "updated"
      redirect_to :action => 'index'
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:category).permit(:name)
    end
end
