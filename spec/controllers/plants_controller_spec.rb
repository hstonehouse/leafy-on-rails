# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlantsController, type: :controller do
  describe 'GET #all' do
    let!(:plants) { create_list(:plant, 10) }

    it 'returns all plants' do
      get :all
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(10)
    end
  end

  describe 'GET #one' do
    let(:plant) { create(:plant) }

    context 'when the plant exists in the database' do
      it 'returns a specific plant' do
        get :one, params: { id: plant.id }
        expect(response).to have_http_status(:success)
        expect(response.body).to include(plant.title)
      end
    end

    context 'when the plant does not exist in the database' do
      it 'returns not found' do
        get :one, params: { id: 11 }
        expect(response).to have_http_status(:not_found)
      end
    end
  end

  describe 'GET #search' do
    let!(:plant) { create(:plant, title: 'polka dot begonia') }
    let!(:alias_plant) { create(:alias, name: 'angel wing', plant: plant) }

    context 'when user searches a plant by its alias' do
      it 'returns plants matching the search query' do
        get :search, params: { query: 'angel' }
        expect(response).to have_http_status(:success)
        expect(response.body).to include('polka dot begonia')
      end
    end

    context 'when user searches a plant by its name' do
      it 'returns plants matching the search query' do
        get :search, params: { query: 'Polka Dot Begonia' }
        expect(response).to have_http_status(:success)
        expect(response.body).to include('polka dot begonia')
      end
    end

    it 'returns empty array for no matches' do
      get :search, params: { query: 'nonexistent' }
      expect(response).to have_http_status(:success)
      expect(response.body).to eq('[]')
    end
  end
end