require 'spec_helper'

describe Run do
  context "distance" do
    example "on create, the value is detected" do
      distance = Distance.new(value: "10miles")
      run = Run.create(distance: distance)
      run.distance.value.should == 10.0
    end

    example "nickname is correct" do
      run = Run.create(distance: Distance.new(value: "10miles"))
      run.distance.nickname.should == "10 miler"
    end
  end
end
