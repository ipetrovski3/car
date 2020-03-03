require "car/version"

module Car
  class MyCar
    attr_accessor :color, :current_speed
    attr_reader :year

    def initialize(model, year, color)
      @model = model
      @year = year
      @color = color
      @current_speed = 0
    end

    def speed_up
      @current_speed += 100
  end
end