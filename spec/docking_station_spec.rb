require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bicycles) }

  describe '#dock' do

    it "raises an error when dock is full" do
      20.times{subject.dock Bike.new}
      expect {subject.dock Bike.new}.to raise_error(StandardError)
    end

    it "raises an error when dock is empty" do
      expect{subject.release_bike}.to raise_error(StandardError)
    end
  end
end
