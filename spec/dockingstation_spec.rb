require "dockingstation.rb"

describe DockingStation do
  docking_instance = DockingStation.new
  it { expect(docking_instance.respond_to?(:release_bike)).to eq true }
  it "can release a bike with class bike" do
    expect(docking_instance.release_bike()).to be_instance_of(Bike)
  end
  it "expects the bike to be working" do
    expect(docking_instance.release_bike.working?).to eq true
  end
end
