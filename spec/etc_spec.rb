describe 'Error' do
    it 'should raise error ZeroDivisionError' do
        expect { 1/0 }.to raise_error(ZeroDivisionError)
    end
end

describe 'Object Type' do
    it 'should be String type' do
        expect("example").to be_kind_of(String)
    end
end

describe 'be_between matching' do
    context 'when compare a number 1' do
        it 'should between 1 and 10' do
            # <= min and >= max
            expect(1).to be_between(1,10).inclusive
        end

        it 'shoud not between 1 and 10' do
            # < min and > max
            expect(1).not_to be_between(1,10).exclusive
        end
    end
end