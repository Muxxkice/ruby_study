# 4.2.2オブジェクトとメッセージ受け渡し

# オブジェクトとは、いつどんな時にもメッセージに応答する
# Rubyでは、あらゆるものがオブジェクトであり、文字列やnilですらオブジェクト
# オブジェクトに渡されるメッセージは、一般にはメソッドと呼ばれます。
# メソッドの実体は、そのオブジェクト内で定義されたメソッドです

# Rubyでは、メソッドがtrueまたはfalseという論理値（boolean）を返すことを、末尾の疑問符で示す慣習がある

p "foobar".empty?
p "".empty?

s = "foobar"
if s.empty?
  puts "The string is empty"
else
  puts "The string isn't empty"
end

if s.nil?
  puts "The variable is nil"
elsif s.empty?
  puts "The string is empty"
elsif s.include?("foo")
  puts "The string includes 'foo'"
end

p nil
p nil.to_s
p nil.to_s.empty?

x = "foo"
y = ""

# 真の時だけ実行される式は下記のように書ける
# 命令＋条件式(真)
puts "Both strings are empty" if x.empty? && y.empty?
puts "One of the strings is empty" if x.empty? || y.empty?
puts "x is not empty" if !x.empty?

p "".nil?
# >>false
p nil.nil?
# >>true

s = "racecar"
p s.reverse
puts "sとs.reverseは等価" if s == s.reverse

puts "It's a palindrome!" if s == s.reverse
