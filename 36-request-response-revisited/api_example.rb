require 'typhoeus'
require 'json'
response = Typhoeus.get('http://myttc.ca/finch_station.json', followlocation: true)
json_response = JSON.parse(response)