class Distance
  include Mongoid::Document
  embedded_in :run
  field :unit, type: String
  field :value, type: BigDecimal

  def initialize(options = {})
    if options[:value].is_a? String
      raw_value = options[:value]
      options[:value] = detect_value(options[:value])
      options[:unit] = detect_unit(options[:value], raw_value)
    end
    super(options)
  end

  def detect_unit(value, raw_value)
    unit = raw_value.gsub(" ", "").delete(value)
    unit = unit.blank? ? "miles" : unit
    unit = value.to_i == 1 ? "mile" : unit
  end

  def detect_value(proposed_value)
    match = proposed_value.match /[^\d\.]*([\d\.]+)[\s\w]*/
    match[1]
  end

  def nickname
    if unit.include? "mile"
      return "#{pretty_value} miler"
    end
  end

  def pretty_value
    if value.to_d.round == value
      return value.to_i
    else
      return value.to_d
    end
  end
end
