# frozen_string_literal: true

require 'rails_helper'

describe 'Public::Recipes', :vcr do
  context 'GET /api/recipes' do
    context 'when page is specified' do
      it 'returns an array of recipes' do
        get '/api/recipes?page=2'
        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).count).to eq 1
      end
    end

    context 'when page is not specified' do
      it 'returns an array of recipes' do
        get '/api/recipes'
        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).count).to eq 3
      end
    end
  end

  context 'GET /api/recipe/:id' do
    context 'when correct id passed' do
      let(:id) { '4dT8tcb6ukGSIg2YyuGEOm' }

      it 'returns a recipe' do
        get "/api/recipes/#{id}"
        expect(response.status).to eq(200)
      end
    end
  end
end
