class Run
  include Mongoid::Document
  field :duration, type: String
  field :ran_at, type: Time
  embeds_one :distance
  accepts_nested_attributes_for :distance

  def initialize(options = {})
    unless options.include?(:ran_at)
      options[:ran_at] = Time.now
    end
    super(options)
  end
end

