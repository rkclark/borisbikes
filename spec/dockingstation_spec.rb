require "dockingstation.rb"

describe DockingStation do
  it "Responds to the method release_bike" do
    expect(DockingStation.new.respond_to?(:release_bike)).to eq true
  end
end
