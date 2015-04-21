require 'rails_helper'

RSpec.describe "User creates a song" do
  context "with valid attributes" do #could add "without a title" etc
    it "saves and displays the song title" do
      visit new_song_path
      fill_in "song[title]", with: "My Song"
      fill_in "song[artist]", with: "An Artist"
      click_link_or_button "Create Song"
      #assert page.has_content?("My Song")
      expect(page).to have_content('My Song')
      #assert page.has_content?("An Artist")
      expect(page).to have_content('An Artist')
    end
  end
end
