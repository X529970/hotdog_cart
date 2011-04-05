require 'minitest/autorun'
require 'redgreen'
require 'mocha'

Dir[File.expand_path 'lib/*.rb'].each {|file| puts "requiring #{file}"; require file }
