require 'request_spec_helper'

describe 'articles endpoint' do
  describe 'GET #index' do
    describe 'v1' do
      it 'responds with an array of articles' do
        get '/articles', {}, HTTP_ACCEPT: 'application/json; version=1'

        json = JSON.parse(response.body)

        # these values are hard-coded in the controller as example
        expect(json.count).to eq(1)
        expect(json.first['name']).to eq('The Things')
      end
    end
  end
end
