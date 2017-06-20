# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Logs API', type: :request do
  # initialize test data 
  let!(:logs) { create_list(:log, 10) }
  let(:log_id) { logs.first.id }

  # Test suite for GET /todos
  describe 'GET /logs' do
    # make HTTP get request before each example
    before { get '/logs' }

    it 'returns logs' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  describe 'POST /logs/' do
    let(:valid_attributes) { { userid: 'nekiuser', desc: "Neki opis" } }

    context 'when request attributes are valid' do
      before { post "/logs/", params: valid_attributes }

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end

end
