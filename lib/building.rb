require './lib/renter'
require './lib/apartment'

class Building
  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    rent = @units.map do |apartment|
      apartment.monthly_rent
    end
    rent.sum / @units.length.to_f
  end

  def renter_with_highest_rent
    # ignore units with no renter
    # find renters in apartment
    # find rent for each renter
    # use max_by to find renter with highest rent
    # if the renter name and monthly_rent have the same unit
      # return renter name

    # @units.map do |apartment| apartment.monthly_rent end.max_by do |num| num end

    monthly_rent = @units.map do |apartment|
        apartment.monthly_rent
        # binding.pry
      end

    renter_with_highest_rent = monthly_rent.max_by do |num|
      num
    end

    binding.pry 
    if @units.apartment.renters != nil
      @units.each do |apartment|
        if apartment.monthly_rent == renter_with_highest_rent
          apartment.renters.name
          binding.pry
        end
      end
    end
  end
end
