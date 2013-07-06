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
    example "with time" do
      visit new_run_path
      fill_in "Distance", with: "8 miles"
      fill_in "Time", with: "56:30"
      click_button "Log run!"
      page.find(".alert").text.should == "8 miler logged! You did it in 56:30!"
    end

    example "assume miles" do
      visit new_run_path
      fill_in "Distance", with: "7"
      click_button "Log run!"
      page.find(".alert").text.should == "7 miler logged!"
    end

    example "by distance" do
      visit root_path
      click_link "Running"
      fill_in "Distance", with: "10 miles"
      click_button "Log run!"
      page.find(".alert").text.should == "10 miler logged!"
    end
  end
end
