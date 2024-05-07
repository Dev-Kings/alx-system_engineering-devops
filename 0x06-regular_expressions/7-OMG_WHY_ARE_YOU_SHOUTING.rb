#!/usr/bin/env ruby

# Regex for capital letters
regex = /[A-Z]/
puts ARGV[0].scan(regex).join
