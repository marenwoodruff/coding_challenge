require 'spec_helper'

describe "welcomes" do

  subject { page }

  describe "home page" do
    before { visit home_path }

    it { should have_selector('h1', text: "Welcome to the Springbotapp!") }
  end

end
