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
    subject { get "/api/recipes/#{id}" }
    context 'when correct id passed' do
      let(:id) { '4dT8tcb6ukGSIg2YyuGEOm' }

      it 'returns a recipe' do
        subject
        expect(response.status).to eq(200)
      end
    end

    context 'when incorrect id passed' do
      let(:id) { '123' }

      it 'returns an error' do
        subject
        expect(response.status).to eq(404)
      end
    end
  end
end
