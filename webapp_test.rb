require 'minitest/autorun'
require 'rack/test'
require './webapp'
require 'webmock/minitest'


class FirstwebappTest < Minitest::Test
  include Rack::Test::Methods

  def app
  end

  def test_webapp_message
  end
  
