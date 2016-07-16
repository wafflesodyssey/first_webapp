require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/pride'
require 'rack/test'
require './webapp'
require 'webmock/minitest'


class FirstwebappTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Firstwebapp
  end

  def test_webapp
    assert Firstwebapp
  end

  def test_welcome
    response = get "/russell"
    assert_equal "Welcome Russell",response.body
  end

  def test_ipsum
    response = get "/lorem/key"
    assert_includes response.body, "key"
  end
end
