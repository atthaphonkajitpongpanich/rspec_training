require_relative '../vehicle.rb'

describe Vehicle do
    context 'when vehicle is car' do
        let(:car) { Vehicle.new('car',['4 seats','gps'])}

        it 'should have max speed 200' do
            expect(car.max_speed).to eq(200)
        end

        it 'should have 4 seats and gps' do
            expect(car.function).not_to be_empty
            expect(car.function).to include('4 seats')
            expect(car.function).to include('gps')
        end
    end

    context 'when vehicle is plane' do
        before(:each) do
            @plane = Vehicle.new('plane',['100 seats','turbo engine'])
        end

        after(:all) do
            puts "test after each"
        end

        it 'should have max speed more than 200' do
            expect(@plane.max_speed).to be > 200
        end

        it 'should not have 4 seats and should have 100 seats and turbo engine' do
            expect(@plane.function).not_to include('4 seats')
            expect(@plane.function).to include('100 seats')
            expect(@plane.function).to include('turbo engine')
        end
    end
end