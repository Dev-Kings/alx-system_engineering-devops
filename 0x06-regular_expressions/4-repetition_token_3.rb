#!/usr/bin/env ruby

# Regex that matches a repetitive token
regex = /hbt*n/
if ARGV[0] =~ regex
  puts ARGV[0]
else
  puts ''
end
