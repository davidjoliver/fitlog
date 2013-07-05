require 'spec_helper'

describe RunsController do
  describe "logging a run" do
    example "by distance" do
      visit root_path
      click_link "Running"
      fill_in "Distance", with: "10 miles"
      click_button "Log run!"
      page.find(".alert").text.should == "10 miler logged!"
    end
  end
end
