# 編號：CANDY-002
# 程式語言：Ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元

# chars1 = ["a", "b", "c", "d", "f", "g"];
# chars2 = ["O", "Q", "R", "S"];

# def missingChar(chars)
#   chars.each_with_index do |element, index|
#     next_char = (element.to_s.ord + 1).chr
#     if chars[index + 1] != next_char
#       return next_char
#     end
#   end
# end

# puts missingChar(chars1); # 印出 e
# puts missingChar(chars2); # 印出 P

# solving steps:
# 抓取陣列的元素與索引值，並定義 next_char 為元素的 ASCII code + 1，判斷陣列的下一個元素是否等於定義的 next_char，不等於則回傳 next_char。

# # 編號：CANDY-002 --- revision01
# # 程式語言：Ruby
# # 題目：請寫一小段程式，印出連續陣列裡缺少的字元

# chars1 = ["a", "b", "c", "d", "f", "g"];
# chars2 = ["O", "Q", "R", "S"];

# def missingChar(chars)
#   (chars[0]..chars[-1]).reject { |char| chars.include?(char) }.first
# end

# puts missingChar(chars1); # 印出 e
# puts missingChar(chars2); # 印出 P

# # solving steps:
# # 用 (chars[0]..chars[-1]) 創建一個範圍物件，並使用 reject 方法找出不在 chars 範圍裡的字元，因為回傳值為陣列，所以用 first 回傳字串。

# 編號：CANDY-002 --- revision02
# 程式語言：Ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元

chars1 = ["a", "b", "c", "d", "f", "g"];
chars2 = ["O", "Q", "R", "S"];

def missingChar(chars)
  ((chars[0]..chars[-1]).to_a - chars).first
end

puts missingChar(chars1); # 印出 e
puts missingChar(chars2); # 印出 P

# solving steps:
# 用 (chars[0]..chars[-1]) 創建一個範圍且轉為陣列，並跟傳進來的陣列相減，這樣可以把傳進來的從範圍陣列中移除，就會留下沒有的字元，最後回傳字串型別。

# 編號：CANDY-002 --- revision03
# 程式語言：Ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元

chars1 = ["a", "b", "c", "d", "f", "g"];
chars2 = ["O", "Q", "R", "S"];

def missingChar(chars)
  ((chars.first..chars.last).to_a - chars).first
end

puts missingChar(chars1); # 印出 e
puts missingChar(chars2); # 印出 P

# solving steps:
# 用 (chars.first..chars.last) 創建一個範圍且轉為陣列，並跟傳進來的陣列相減，這樣可以把傳進來的從範圍陣列中移除，就會留下沒有的字元，最後回傳字串型別。