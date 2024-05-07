#!/usr/bin/env ruby

# Method to match `School`
def match(string)
  regex = /School/

  if string.match(regex)
    puts string.gsub(regex, 'School')
  else
    puts ''
  end
end

# Main function
def main
  if ARGV.length == 1
    match(ARGV[0])
  end
end

main if __FILE__ == $PROGRAM_NAME
