require 'docking_station'
require 'bike'


RSpec.describe DockingStation do
  describe '#release_bike' do
    it 'responds to release bike' do
      expect(subject).to respond_to :release_bike
    end
     # it 'release a bike' do
     #    expect(subject.release_bike).to be_a(Bike)
     # end
       it 'gives error' do
        expect{subject.release_bike}.to raise_error "No bikes available"
      end
   end

   describe '#dock' do
     it 'docks a bike' do
       expect(subject).to respond_to :dock
     end
     # it 'accepts a bike' do
     #   expect(subject.dock('bikes')).to eq('bikes')
     # end
     it 'raises error if docking station is full' do
        20.times {subject.dock(Bike.new)}
       expect {subject.dock Bike.new}.to raise_error("Station is full")
     end
   end
end
