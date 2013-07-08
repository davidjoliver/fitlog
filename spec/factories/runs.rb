FactoryGirl.define do
  factory :run do
    distance { FactoryGirl.build(:distance)}
  end

  factory :distance do
    value 5
    unit "miles"
  end
end

