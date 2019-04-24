#!/usr/bin/env ruby
require 'net/http'
require 'json'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'version'

def putsHelp
  puts "Commands:"
  puts " fanyi [word]"
end

argv = ARGV
if argv.length == 0
  putsHelp()
  exit
end

a = argv[0]

unless ENV["GOOGLE_API_KEY_FANYI"]
  puts "please setting GOOGLE_API_KEY_FANYI"
  exit
end

word = URI.escape(a)
uri = URI("https://www.googleapis.com/language/translate/v2?key="+ENV["GOOGLE_API_KEY_FANYI"]+"&source=en&target=ja&q="+word)
response = Net::HTTP.get uri
output = JSON.parse response
puts output["data"]["translations"]
