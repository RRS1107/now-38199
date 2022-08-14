
class RecordsController < ApplicationController
  def create
    record_params[:package_ids].each do |id|
      package = Package.find(id)
      package.create_record(staff: current_staff)
    end
    
    if save_all
      redirect_to packages_path
    else 
      render 'packages/index'
    end
  end

  private
  def record_params
    params.permit(:authenticity_token, :commit, package_ids:[])
  end   

  def save_all
    result = []
  
    Package.where(id: record_params[:package_ids]).each do |package|
      result << package.create_record(staff: current_staff)
    end
  
    result.length == record_params[:package_ids].length
  end
end
