require 'thin_spec_helper'
model_require "run"

describe Run do
  it "uses the current time if no ran_at provided" do
    run = Run.new
    run.ran_at.should_not be_nil
    run.ran_at.should be_a Time
  end
end
