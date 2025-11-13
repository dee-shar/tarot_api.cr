require "json"
require "http/client"

class TarotApi
  API_PATH = "api/v1"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://tarotapi.dev")
    @http_client = HTTP::Client.new(uri)
  end

  def get_cards() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/cards", headers: @headers).body)
  end

  def get_cards_suits(suit : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/cards/suits/#{suit}", headers: @headers).body)
  end

  def get_cards_courts() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/cards/courts", headers: @headers).body)
  end

  def get_courts_rank(rank : String) : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/cards/courts/#{rank}", headers: @headers).body)
  end

  def get_random_cards() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/cards/random", headers: @headers).body)
  end
end
