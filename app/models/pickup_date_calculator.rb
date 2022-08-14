class PickupDateCalculator 


  def initialize(collection_area_name, delivery_area_name, delivery_date)
    @collection_area_name = collection_area_name
    @delivery_area_name = delivery_area_name
    @delivery_date = delivery_date
  end
    
  def calculate
    @delivery_date - number_of_days
  end

  private
    def number_of_days
      PickupDate.find_by!(from: @collection_area_name, to: @delivery_area_name).days
    end

end