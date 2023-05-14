require_relative '../user.rb'

describe User do
    context 'when create user with secretKey 112233' do
        let(:user) { User.new('banana','112233') }

        it 'name is banana' do
            expect(user.name).to eq('banana')
        end

        it 'name is banana' do
            expect(user.secretKey).to eq('112233')
        end
        
        it 'description should be User banana is admin' do
            expect(user.describes).to eq("User banana is admin")
        end
    end
end

describe User.new 'rspec subject', '111222' do
    it { is_expected.to have_attributes(name: 'rspec subject') }
    it { is_expected.to have_attributes(role: 'owner') }
    it { is_expected.to have_attributes(describes: 'User rspec subject is owner') }
end