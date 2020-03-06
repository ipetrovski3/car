RSpec.describe Car::MyCar do
  let(:peugeot) { Car::MyCar.new('Peugeot', 2008, 'Silver') }
  let(:error) { 'Check ABS sensor' }
  let(:errors) { 'ECU faulty, Oil Service' }
  it 'creates new instance' do
    expect(peugeot).to be_instance_of(Car::MyCar)
  end

  it 'has starting speed defined to 0' do
    expect(peugeot.current_speed).to eq(0)
  end

  it 'it speeds up' do
    peugeot.speed_def(80)
    expect(peugeot.current_speed).to eq(80)
  end

  it 'speeds up by default' do
    peugeot.speed_def
    expect(peugeot.current_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it 'slows down by given argument' do
    peugeot.slow_down(20)
    expect(peugeot.current_speed).to eq(-20)
  end

  it 'slows down by default' do
    peugeot.slow_down
    expect(peugeot.current_speed).to eq(-Car::MyCar::SPEED_OFFSET)
  end

  it 'repaints the car' do
    peugeot.spray_paint :green
    expect(peugeot.color).to eq(:green)
  end

  it 'has no defects' do
    expect(peugeot.defects).to be_empty
  end

  it 'has defect shown' do
    peugeot.add_defect(error)
    expect(peugeot.defects).to include(error)
    puts peugeot.service_info
  end

  it 'will lists all the defects' do
    peugeot.add_defect(error)
    peugeot.add_defect(errors)
    expect(peugeot.service_info).to eq("Defects to be fixed: #{error}, #{errors}")
    puts peugeot.service_info
  end

  it 'will remove ECU faulty defect' do
    peugeot.add_defect(error)
    peugeot.add_defect(errors)
    peugeot.repair('ECU faulty')
    expect(peugeot.defects).not_to include('ECU faulty')
  end
end
