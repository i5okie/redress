class Admin::CategoriesController < Admin::BaseController

  def index
  end
  
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Category has been created."
      redirect_to "/admin/categories"
    else
      flash[:alert] = "Category has not been created."
      render "new"
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    flash[:notice] = "Category has been deleted."
    redirect_to "admin/categories"
  end

  private

  def category_params
    params.require(:item).permit(:name)
  end
end
