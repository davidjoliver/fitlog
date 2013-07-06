require 'spec_helper'

describe ActivitiesController do
  context "the entry point" do
    it "asks David to pick a type of activity" do
      visit activities_path
      page.find(".home-title").text.should == "What activity are we logging today?"
    end

    it "shows the resistence training option" do
      visit activities_path
      page.should have_link "Resistance Training"
    end

    it "shows the running option" do
      visit activities_path
      page.should have_link "Running"
    end

    it "shows the cycling option" do
      visit activities_path
      page.should have_link "Cycling"
    end

    it "shows the meal option" do
      visit activities_path
      page.should have_link "A meal"
    end

    it "shows the sleep option" do
      visit activities_path
      page.should have_link "Sleep"
    end
  end

  context "selecting an option" do
    example "the resistance training option" do
      visit activities_path
      click_link "Resistance Training"
      current_path.should == new_resistance_training_activity_path
    end

    example "the running option" do
      visit activities_path
      click_link "Running"
      current_path.should == new_run_path
    end

    example "the cycling option" do
      visit activities_path
      click_link "Cycling"
      current_path.should == new_cycle_ride_path
    end

    example "the meal option" do
      visit activities_path
      click_link "A meal"
      current_path.should == new_meal_path
    end

    example "the sleep option" do
      visit activities_path
      click_link "Sleep"
      current_path.should == new_sleep_period_path
    end
  end
end
