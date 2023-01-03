# 4.3.2ブロック

(1..5).each { |i| puts 2 * i }

(1..5).each { |i| puts 2 * i }

p (1..5).map { |i| i**2 }

# mapのブロック内で宣言した引数（char）に対してメソッドを呼び出してる
p %w[a b c].map { |char| char.upcase }
p %w[A B C].map { |char| char.downcase }
# &:メソッド名という記法を“symbol-to-proc”と呼ぶ
p %w[A B C].map(&:downcase)
list = ("a".."z").to_a
p list
p list[0..7]

# ハッシュ、範囲オブジェクトなどを配列に変換するメソッド

shuffle_list = ("a".."z").to_a.shuffle[0..7]

# 1.範囲オブジェクト0..16を使って、各要素の2乗を出力してください。
p (0..16).map { |i| i**2 }

def yeller(str)
  str.map(&:upcase).join("")
end

# yeller（大声で叫ぶ）というメソッドを定義してください。このメソッドは、文字列の要素で構成された配列を受け取り、各要素を連結した後、大文字にして結果を返します
yeller(%w[o l d])

# shuffled_subdomainというメソッドを定義してください。このメソッドは、完全にシャッフルされたアルファベット8文字を文字列として返します。
def shuffled_subdomain(str)
  str.shuffle[0..5]
end

shuffled_subdomain(%w[A B C D E F G H I])

# リスト 4.12の「?」の部分を、それぞれ適切なメソッドに置き換えてみてください
def string_shuffle(s)
  s.split("").shuffle.join
end

p string_shuffle("foobar")
