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

  def test_get_name
    response = get "/russell"
    assert_equal "Welcome Russell", response.body
  end

  def test_ipsum_key
    response = get "/lorem/key"
    assert_includes response.body, "key"
  end
end
