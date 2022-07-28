class PackagesController < ApplicationController
  def index
    @package = Package.all.order("pickup_date ASC")
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(package_params)
    if @package.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @package = Package.find(params[:id])
  end

  private
  def package_params
    params.require(:package).permit(:delivery_date, :pickup_date, :invoice_number, :preferred_time_id, :delivery_area_id, :collection_area_id, :unit).merge(staff_id: current_staff.id)
  end
end
