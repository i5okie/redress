class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def show
  end

  private
    def set_document
      @document = Document.find(params[:id])
    end
    def document_params
      params.require(:document).permit(:name, :description, :file)
    end
end
