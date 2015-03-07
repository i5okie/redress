class Admin::ItemsController < Admin::BaseController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "Item has been created."
      redirect_to admin_items_path
    else
      flash[:alert] = "Item has not been created."
      render "new"
    end
  end

  def update
    if @item.update(item_params)
      flash[:notice] = "Manufacturer has been Updated."
      redirect_to admin_items_path
    else
      flash[:alert] = "Manufacturer has not been Updated."
      render "edit"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    flash[:notice] = "Item has been deleted."
    redirect_to admin_items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :model, :description, :manufacturer_id, :category_id, :image)
    # params.require(:manufacturer).permit(:name, :id)
    # params.require(:category).permit(:name)
  end
end