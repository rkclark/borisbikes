require "bike.rb"

describe Bike do
  bike = Bike.new
  it "responds to method 'working?'" do
    expect(bike).to be_working
  end
end
