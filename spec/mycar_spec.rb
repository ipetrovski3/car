RSpec.describe Car::MyCar do

  it "Create new instance" do
    peugeot = Car::MyCar.new("Peugeot", 2008, "Silver")
    expect(peugeot).to be_instance_of(Car::MyCar)
  end

  it "It has starting speed defined to 0" do
    peugeot = Car::MyCar.new("Peugeot", 2008, "Silver")
    expect(peugeot.current_speed).to eq(0)
  end

  it "It speeds up" do
    peugeot = Car::MyCar.new("Peugeot", 2008, "Silver")
    expect(peugeot.speed_up).to be > 0
  end
end