require "dockingstation.rb"

describe DockingStation do
  describe "tests with bikes in docking_station" do
    bike = Bike.new
    it { expect(subject.respond_to?(:release_bike)).to eq true }
    before (:each) do
      subject.docked_bikes << Bike.new
    end
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
      expect(subject.dock(bike)).not_to be_empty
      expect(subject.docked_bikes).not_to be_empty
    end
    it "can tell a user what bikes are docked" do
      expect(subject.dock(bike)).to include(bike)
    end
  end

  describe "tests without bikes in docking station" do
    it "doesn't allow a bike to be released if there are no bikes" do
      expect {subject.release_bike}.to raise_error(RuntimeError, "There are no docked bikes!")
    end
  end
end
