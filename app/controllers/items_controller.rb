class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
    # @attachments = @item.attachments
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
                                        :category_id, 
                                        attachments_attributes: [:file, :id, :_destroy], 
                                        documents_attributes: [:doc, :id, :_destroy]
                                        )
    end
end
