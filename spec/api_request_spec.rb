require_relative '../api_request.rb'

describe "ip" do
    context 'xxx' do
        let(:api_request) { API_Request.new }
        let(:response) { api_request.get_ip_request }

        it 'should response success' do
            expect(response.code).to eq("200")
        end

        it 'should response with data' do
            puts response.body
            expect(response.body).to include('ip')
        end
    end
end