class VisitorsController < ApplicationController
  before_action :set_item, only: [:show]

  def index
    @items = Category.includes(:items)
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(  :name, 
                                      :description, 
                                      :model, 
                                      :manufacturer, 
                                      :link, 
                                      :image, 
                                      :tags, 
                                      :apms, 
                                      :tag_list, 
                                      :apm_list, 
                                      :category_id
                                      )
    params.require(:category).permit(:name, :id)
  end
end