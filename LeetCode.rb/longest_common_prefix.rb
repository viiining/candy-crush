# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".


# Example 1:

# Input: strs = ["flower","flow","flight"]
# Output: "fl"

# Example 2:

# Input: strs = ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

# Constraints:

# 1 <= strs.length <= 200
# 0 <= strs[i].length <= 200
# strs[i] consists of only lowercase English letters.

# solution 1:
# @param {String[]} strs
# @return {String}
# def longest_common_prefix(strs)
#   return "" if strs.empty?
  
#   # 取第一個字作為基礎
#   base_str = strs[0]
  
#   # 比較 base_str 和其他字
#   common_prefix = ""
#   base_str.length.times do |i|
#     char = base_str[i]
#     is_common = strs.all? { |str| str[i] == char }
#     if is_common
#       common_prefix += char
#     else
#       break
#     end
#   end
  
#   return common_prefix
# end

# p longest_common_prefix(["flower","flow","flight"])
# p longest_common_prefix(["dog","racecar","car"])

# solution 2:
def longest_common_prefix(strs)
  return "" if strs.empty?

  # 先排序，並更新 strs 陣列
  strs.sort!

  # 比較排序後的陣列的第一個字串和最後一個字串的每個字符
  first_str, last_str = strs.first, strs.last
  i = 0

  while i < first_str.length && first_str[i] == last_str[i]
    i += 1
  end

  first_str[0, i]
end
