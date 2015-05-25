class Admin::DocumentsController < Admin::BaseController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @q = Document.ransack(params[:q])
    @documents = @q.result(distinct: true).page(params[:page])
  end

  def show
  end

  def new
    @document = Document.new
  end

  def edit
  end

  def create
    @document = Document.new(document_params)

      if @document.save
        flash[:notice] = 'Document was successfully created.'
        redirect_to admin_documents_path
      else
        flash[:alert] = 'Document was not created.'
        render action: 'new'
      end
  end

  def update
    if @document.update(document_params)
      flash[:notice] = 'Document was successfully updated.'
      redirect_to admin_documents_path
    else
      flash[:alert] = 'Document was not updated.'
    end
  end

  def destroy
    @document.destroy
    redirect_to admin_documents_path
  end

  private
    def set_document
      @document = Document.find(params[:id])
    end
    def document_params
      params.require(:document).permit(:name, :description, :file, :doc)
    end
end
