class Admin::ManufacturersController < Admin::BaseController
  before_action :set_manufacturer, only: [:show, :edit, :update, :destroy]

  def index
    @manufacturers = Manufacturer.order(:name).page params[:page]
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def show
    @manufacuter = Manufacturer.find(params[:id])
  end

  def edit
  end

  def update
    if @manufacturer.update(manufacturer_params)
      flash[:notice] = "Manufacturer has been Updated."
      redirect_to admin_manufacturers_path
    else
      flash[:alert] = "Manufacturer has not been Updated."
      render "edit"
    end
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    if @manufacturer.save
      flash[:notice] = "manufacturer has been created."
      redirect_to admin_manufacturers_path
    else
      flash[:alert] = "manufacturer has not been created."
      render "new"
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy

    flash[:notice] = "manufacturer has been deleted."
    redirect_to admin_manufacturers_path
  end

  private

  def set_manufacturer
    @manufacturer = Manufacturer.find(params[:id])
  end

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :mlink, :slink, :sphoneus, :sphoneca)
  end
end
