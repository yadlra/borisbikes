require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  describe '#release_bike' do
    it 'responds to release bike' do
      expect(subject).to respond_to :release_bike
    end
     it 'release a bike' do
       expect(subject.release_bike).to be_a(Bike)
     end
   end
end
