require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'open-uri'
require 'views/index'

Index.new
