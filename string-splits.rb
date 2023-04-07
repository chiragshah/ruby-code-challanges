#!/usr/bin/env ruby
#
#
=begin
You are given a string s. Your task is to count the number of ways of splitting s into three non-empty parts a, b and c (s = a + b + c) in such a way that a + b, b + c and c + a are all different strings.

NOTE: + refers to string concatenation.

Example

For s = "xzxzx", the output should be solution(s) = 5.

Consider all the ways to split s into three non-empty parts:

If a = "x", b = "z" and c = "xzx", then all a + b = "xz", b + c = "zxzx" and c + a = xzxx are different.
If a = "x", b = "zx" and c = "zx", then all a + b = "xzx", b + c = "zxzx" and c + a = zxx are different.
If a = "x", b = "zxz" and c = "x", then all a + b = "xzxz", b + c = "zxzx" and c + a = xx are different.
If a = "xz", b = "x" and c = "zx", then a + b = b + c = "xzx". Hence, this split is not counted.
If a = "xz", b = "xz" and c = "x", then all a + b = "xzxz", b + c = "xzx" and c + a = xxz are different.
If a = "xzx", b = "z" and c = "x", then all a + b = "xzxz", b + c = "zx" and c + a = xxzx are different.
Since there are five valid ways to split s, the answer is 5.

=end

#
#

def solution(s)
    total_length = s.length
    count = 0
    start_i = 0
    start_j = 1
    (0..total_length-1).each do |i|
        (i+1..total_length-1).each do |j|
            a = s.split('')[0..i].join('') unless s.split('')[i..j-1].nil?
            b = s.split('')[i+1..j].join('') unless s.split('')[j..j+1].nil?
            c = s.split('')[j+1..total_length-1].join('') unless s.split('')[j+1..total_length-1].nil?
            
            if a =="" or b == "" or c== ""
                #nothing to do
            else
                if a + b != b + c and b + c != c + a and c + a != a + b
                    count = count + 1
                    #break
                    puts "count ->" + count.to_s
                end
            end
        end
    end
    return count
end

s = "xzxzx"
val = solution(s)
puts "Output -> " + val.to_s

