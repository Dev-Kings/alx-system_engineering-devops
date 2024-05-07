#!/usr/bin/env ruby

# Regex for 10 digit phone number
regex = /\b\d{10}\b/
if ARGV[0] =~ regex
  puts ARGV[0]
else
  puts ''
end
