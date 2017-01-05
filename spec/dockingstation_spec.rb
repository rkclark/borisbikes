require "dockingstation.rb"

describe DockingStation do
  bike = Bike.new
  describe "tests with one bike in the docking_station" do
    it { expect(subject.respond_to?(:release_bike)).to eq true }
    before (:each) do
      subject.docked_bikes << bike
    end
    it "releases a bike" do
      expect(subject.release_bike()).to be_instance_of(Bike)
    end
    it "the released bike is working" do
      expect(subject.release_bike.working?).to eq true
    end
    it "#dock" do
      expect(subject.respond_to?(:dock)).to eq true
    end
    it "can be passed one bike for docking" do
      expect(subject).to respond_to(:dock).with(1).argument
    end
    it "can tell a user what bikes are docked" do
      expect(subject.docked_bikes).to include(bike)
    end
  end

  describe "tests without bikes in docking station" do
    it "doesn't allow a bike to be released if there are no bikes" do
      expect {subject.release_bike}.to raise_error(RuntimeError, "There are no docked bikes!")
    end
  end

  describe "tests for docking station capacity" do
    it "allows a bike to be docked if the current number of bikes is 19" do
      19.times {subject.docked_bikes << Bike.new}
      expect { subject.dock(bike) }.not_to raise_error
    end
    it "allows a maximum of 20 bikes to be docked at a time" do
      20.times {subject.docked_bikes << Bike.new}
      expect { subject.dock(bike) }.to raise_error(RuntimeError, "This docking_station is full!")
    end
  end
end
