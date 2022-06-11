require 'simplecov'
SimpleCov.start
# run 'rspec spec/spec_helper.rb' to run simplecov
# open coverage/index.html (in Terminal)

require 'Date'
require_relative 'enigma_spec'
require_relative 'offset_spec'
require './lib/enigma'
require './lib/offset'
require 'pry'
