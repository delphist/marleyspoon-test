# frozen_string_literal: true

require 'rails_helper'

describe 'Recipes', type: :system, js: true, vcr: true do
  it 'User opens a recipe list and views last recipe' do
    visit '/'

    expect(page).to have_content('White Cheddar Grilled Cheese with Cherry Preserves & Basil')
    expect(page).to have_content('Tofu Saag Paneer with Buttery Toasted Pita')
    expect(page).to have_content('Grilled Steak & Vegetables with Cilantro-Jalapeño Dressing')

    click_link 'Load more...'
    click_link 'Crispy Chicken and Rice with Peas & Arugula Salad'

    expect(page).to have_content('Crispy chicken skin, tender meat, and rich, tomatoey sauce')
    expect(page).to have_content('Jony Chives')
    expect(page).to have_content('gluten freehealthy')
  end
end
