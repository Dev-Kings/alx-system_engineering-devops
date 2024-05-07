#!/usr/bin/env ruby

# Regex matching string starting with h and ends with n
# and can have single character in between
regex = /h.n/
if ARGV[0] =~ regex
  puts ARGV[0]
else
  puts ''
end
