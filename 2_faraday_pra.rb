# frozen_string_literal: true

require 'faraday'
require 'dotenv'

Dotenv.load

slack_api_token = ENV['SLACK_API_TOKEN']
url = 'https://slack.com/?members'
end_point = 'api/users.list?'

conn = Faraday.new(url: url) do |faraday|
  faraday.request :url_encoded
  faraday.response :logger
  faraday.adapter Faraday.default_adapter
end

response = conn.get(end_point) do |req|
  req.headers['Authorization'] = "Bearer #{slack_api_token}"
  req.headers['Content-type'] = 'application/x-www-form-urlencoded'
end

puts response.body
