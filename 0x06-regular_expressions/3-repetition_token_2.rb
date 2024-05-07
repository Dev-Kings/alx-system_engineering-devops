#!/usr/bin/env ruby

# Regex for repetitive token
regex = /hbt+n/
if ARGV[0] =~ regex
  puts ARGV[0]
else
  puts ''
end
