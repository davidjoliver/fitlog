require 'spec_helper'

describe ActivitiesController do
  it "links back to home" do
    visit runs_path
    click_link "Fitlog"
    current_path.should == root_path
  end
end
