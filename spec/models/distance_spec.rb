require 'thin_spec_helper'
model_require "distance"

describe Distance do
  it "has a nickname" do
    distance = Distance.new(unit: :miles, value: 10.0)
    distance.nickname.should == "10 miler"
  end

  it "tries to simplify the value" do
    distance = Distance.new(value: 10.0)
    distance.pretty_value.should == 10
  end

  it "supplies the raw value if not a whole number" do
    Distance.new(value: 10.3).pretty_value.should == 10.3
  end

  context "units" do
    it "detects many miles" do
      Distance.new(value: "10 miles").unit.should == "miles"
    end

    it "detects 1 mile" do
      Distance.new(value: "1 mile").unit.should == "mile"
    end
  end
end
