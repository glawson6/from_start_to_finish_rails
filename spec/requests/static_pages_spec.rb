require 'rails_helper'

describe 'static pages' do
  subject { page }
  describe 'home page' do
    before { visit home_path }
    it { should have_title('From Start To Finish!') }
    #it { should have_selector('h1', text: 'Welcome!') }
  end

  describe 'about page' do
    before { visit about_path }
    it { should have_selector('a', text: 'Back') }
  end
end