require 'spec_helper'

describe 'articles endpoint' do
  describe 'GET #index' do
    it 'responds with an array of articles' do
      get '/articles.json'

      json = JSON.parse(response.body)

      # these values are hard-coded in the controller as example
      expect(json.count).to eq(1)
      expect(json.first['name']).to eq('The Things')
    end
  end
end
