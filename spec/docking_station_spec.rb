require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bicycles) }

  it { is_expected.not_to respond_to(:full?) }
  it { is_expected.not_to respond_to(:empty?) }
  # This checks that the private methods are private

  describe '#dock' do

    it 'raises an error when dock is full' do
      described_class::DEFAULT_CAPACITY.times { subject.dock Bike.new }
      # DockingStation::DEFAULT_CAPACITY searches from the current file position
      expect { subject.dock Bike.new }.to raise_error(StandardError)
    end

    it 'raises an error when dock is empty' do
      expect { subject.release_bike }.to raise_error(StandardError)
    end
  end
end
