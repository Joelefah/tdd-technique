require 'rspec'
require './person.rb'
RSpec.configure do|config|
    config.color= true
    config.tty = true
    config.formatter = :documentation
end