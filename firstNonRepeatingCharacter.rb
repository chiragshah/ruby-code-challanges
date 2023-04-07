#!/usr/bin/env ruby
#
=begin
Given a string s consisting of small English letters, find and return the first instance of a non-repeating character in it. If there is no such character, return '_'.

Example

For s = "abacabad", the output should be
solution(s) = 'c'.

There are 2 non-repeating characters in the string: 'c' and 'd'. Return c since it appears in the string first.

For s = "abacabaabacaba", the output should be
solution(s) = '_'.

There are no characters in this string that do not repeat.

Input/Output

[execution time limit] 4 seconds (rb)

[input] string s

A string that contains only lowercase English letters.

Guaranteed constraints:
1 ≤ s.length ≤ 105.

[output] char

The first non-repeating character in s, or '_' if there are no characters that do not repeat.

=end
#

def solution(s)
counts = Hash.new(0)  # create a hash to store the count of each character
  s.each_char { |char| counts[char] += 1 }  # iterate through the string and count each character

  # find the first character with a count of 1
  s.each_char do |char|
    return char if counts[char] == 1
  end
  return "_"
end

s="abacabad"
val = solution(s)
puts "Output -> " + val.to_s
