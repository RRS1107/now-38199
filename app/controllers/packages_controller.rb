class PackagesController < ApplicationController

  def index
    @date = package_params[:pickup_date]
    if package_params[:pickup_date].present?
      @packages = Package.where('pickup_date = ?', "#{package_params[:pickup_date]}}")
    else
      @packages = Package.all.order(:pickup_date)
    end
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(package_params)
    calculator = PickupDateCalculator.new(@package.collection_area.area_name, @package.delivery_area.area_name, @package.delivery_date)
    @package.pickup_date = calculator.calculate
    if @package.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @package = Package.find(params[:id])
  end

  def edit
    @package = Package.find(params[:id])
  end

  def update
    @package = Package.find(params[:id])
    calculator = PickupDateCalculator.new(@package.collection_area.area_name, @package.delivery_area.area_name, @package.delivery_date)
    @package.pickup_date = calculator.calculate
    if @package.update(package_params)
      redirect_to packages_path
    end
  end

  def destroy
    package = Package.find(params[:id])
    if package.destroy
      redirect_to packages_path
    end  
  end

  private
  def package_params
    return {} unless params[:package]
    params.require(:package).permit(:delivery_date, :pickup_date, :invoice_number, :preferred_time_id, :delivery_area_id, :collection_area_id, :unit).merge(staff_id: current_staff.id)
  end
end
