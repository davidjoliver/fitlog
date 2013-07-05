require 'mongoid'
require 'pry'

def model_require(model_name)
  require File.expand_path("../../app/models/#{model_name}", __FILE__)
end

