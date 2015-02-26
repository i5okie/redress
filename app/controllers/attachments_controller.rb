class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy]

  def index
    @attachments = Attachment.all
  end

  def show
  end

  private
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    def attachment_params
      params.require(:attachment).permit(:name, :description, :filetype, :filelocation, :file)
    end
end
