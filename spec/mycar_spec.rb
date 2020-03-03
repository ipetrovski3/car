RSpec.describe Car::MyCar do

  peugeot = Car::MyCar.new("Peugeot", 2008, "Silver")

  it "Create new instance" do
    
    expect(peugeot).to be_instance_of(Car::MyCar)
  end

  it "It has starting speed defined to 0" do
    # peugeot = Car::MyCar.new("Peugeot", 2008, "Silver")
    expect(peugeot.current_speed).to eq(0)
  end
end