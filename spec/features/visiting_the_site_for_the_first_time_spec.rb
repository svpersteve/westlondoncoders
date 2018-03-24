require 'rails_helper'

RSpec.feature 'administering activities' do
  let!(:organisers) { FactoryBot.create(:organiser) }

  scenario 'finding out what West London Coders is' do
    when_i_visit_the_home_page
    then_i_should_see_details_about_the_meetup
    and_i_should_see_details_about_the_organisers
  end

  private

  def when_i_visit_the_home_page
    visit root_path
  end

  def then_i_should_see_details_about_the_meetup
    expect(page).to have_content(
      'An inclusive and collaborative meetup for new and experienced developers'
    )
  end

  def and_i_should_see_details_about_the_organisers
    expect(page).to have_content('Organiser 1')
  end
end
