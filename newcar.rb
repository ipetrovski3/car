class MyCar
  attr_accessor :color, :model
  attr_reader :year

  def initialize(year)
    @current_speed = 0
    @year = year
  end

  def spray_paint(color)
    self.color = color
    puts "You have chosen #{color}"
    puts "Please wait 5 seconds while we paint your car"
     5.downto(0){|x| puts x}
    puts "#{color} its classy!"
    puts "Thanks for chosing us :)"
  end
end

mycar = MyCar.new(2008)
puts "Model:" + mycar.model = ' Peugeot 308SW'
puts "Color:" + mycar.color = ' Silver'
puts "Year: #{mycar.year}"
puts "That color looks a bit outdated, lets repaint it"
mycar.spray_paint('Black')
