class MyCar
  def initialize(model, engine, year, color)
    @model = model
    @engine = engine
    @year = year
    @color = color
    @current_speed = 0
    puts "I am driving: #{model} #{engine} #{year} #{color}"
  end

  def speed_up(kmh)
    @current_speed += kmh
    puts "We are going to pass that vechile in front of us, by speeding up to #{kmh} Km/H!"
  end

  def brake(kmh)
    @current_speed -= kmh
    puts "Ohh s*it, they are cops ahead we must brake and lower our speed by #{kmh} Km/H!"
  end

  def speed
    puts "We are now driving #{@current_speed} Km/H."
  end

  def shut_off
    @current_speed = 0
    puts "We have reached our destination! Turn off the ignition!"
  end
end

mycar = MyCar.new("Peugeot 308SW", "1.6HDI", "2008", "Silver")
puts "Start your engine!"
mycar.speed_up(180)
mycar.brake(100)
mycar.speed
mycar.shut_off