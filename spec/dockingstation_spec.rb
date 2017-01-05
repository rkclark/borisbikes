require "dockingstation.rb"

describe DockingStation do
  it { expect(subject.respond_to?(:release_bike)).to eq true }
  it "can release a bike with class bike" do
    expect(subject.release_bike()).to be_instance_of(Bike)
  end
  it "expects the bike to be working" do
    expect(subject.release_bike.working?).to eq true
  end
  it "#dock" do
    expect(subject.respond_to?(:dock)).to eq true
  end
  it "can accept one bike for docking" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
end
