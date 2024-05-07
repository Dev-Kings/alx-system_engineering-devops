#!/usr/bin/env ruby

# Method to match `School`
def match(string)
  regex = /School/

  matches = string.scan(regex)

  puts matches.join('')
end

# Main function
def main
  if ARGV.length == 1
    match(ARGV[0])
  end
end

main if __FILE__ == $PROGRAM_NAME
