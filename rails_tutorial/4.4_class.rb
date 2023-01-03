# 4.4Rubyにおけるクラス

# superclassメソッドを使ってクラス階層を調べてみる
s = String.new("foobar")
p s
p s.class
p s.class.superclass
p s.class.superclass.superclass
p s.class.superclass.superclass.superclass

# クラス階層をたどっていくと、 Rubyにおけるすべてのクラスは最終的にスーパークラスを持たないBasicObjectクラスを継承しています。これが、"Rubyではあらゆるものがオブジェクトである" ということの技術的な意味です。

class Word
  def palindrome?(str)
    str == str.reverse
  end
end
w = Word.new
p w
p w.palindrome?("level")

# selfキーワードを使うと自分自身を指定できます
# なお、Stringクラスの内部では、メソッドや属性を呼び出すときのself.も省略可能です
# リスト 4.15にあるself.reverseのselfを省略し、reverseと書いてもうまく動くことを確認してみてください。
class Word2 < String
  def palindrome?
    self == self.reverse
  end
end
s = Word2.new("level")
p s
p s.palindrome?

p w
p w.palindrome?("level")
p Range.class
p Range.superclass
p Range.superclass

class User
  attr_accessor :name, :email
  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end
  def formatted_email
    "#{@name} <#{@email}>"
  end
end

example = User.new

p example
example.name = "Example User"
example.email = "user@example.com"
example.formatted_email
