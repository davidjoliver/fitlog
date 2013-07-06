class Run
  include Mongoid::Document
  field :duration, type: String
  embeds_one :distance
  accepts_nested_attributes_for :distance
end

