require 'simplecov'
require 'simplecov-console'
require "yaml"

SimpleCov.start do
  add_filter '/spec'
  formatter SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console
  ])
end

require_relative '../classes/book'
require_relative '../classes/library'