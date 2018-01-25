require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it "docks something" do
    bike = Bike.new # new instance
    expect(subject.dock(bike)).to eq bike # we want to return the bikes we dock
  end

  it "releases working bikes" do
    bike = subject.release_bike # calling a class in spec, subject = self!
    expect(bike).to be_working # plain english
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike). to eq bike
  end
end
