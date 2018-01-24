require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "releases working bikes" do
    bike = subject.release_bike # calling a class in spec, subject = self!
    expect(bike).to be_working # plain english
  end
end
