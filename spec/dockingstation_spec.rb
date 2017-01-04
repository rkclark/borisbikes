require "dockingstation.rb"

describe DockingStation do
  docking_instance = DockingStation.new
  it { expect(docking_instance.respond_to?(:release_bike)).to eq true }
end
