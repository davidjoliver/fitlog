require 'spec_helper'

describe RunsController do
  describe "listing runs" do
    it "lists 1 run" do
      distance = Distance.new(value: "10miles")
      run = create(:run, distance: distance)
      visit runs_path
      page.should have_link "10 miler"
    end

    it "lists many runs" do
      3.times do |i|
        distance = Distance.new(value: "#{i}miles")
        create(:run, distance: distance)
      end
      visit runs_path
      3.times do |i|
        page.should have_link "#{i} miler"
      end
    end
  end

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
