require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'
require './webapp'
require 'webmock/minitest'


class FirstwebappTest < Minitest::Test
  include Rack::Test::Methods

  def app
    FirstwebappTest
  end

  def test_webapp_message
    assert FirstwebappTest
    assert Firstwebapp
  end
end
