class Run
  include Mongoid::Document
  embeds_one :distance
  accepts_nested_attributes_for :distance
end

