# 実はRuby 1.9以降では、ハッシュの要素の順序が入力順と同じであることが保証されるようになったが、
# 基本的に特定の順序で保存されることを当てにするのなら配列を用いる

user = {}
p user
user["first_name"] = "Michael"

user["last_name"] = "Hartl"
p user
user["last_name"] = "Yamada"
p user

# リテラル表記 key=>value
# keyは:keyというシンボルを使う方が一般的
user = { "first_name" => "Kiyoshi", "last_name" => "Hikawa" }
p user
h1 = { name: "Michael Hartl", email: "michael@example.com" }
p h1
h2 = { name: "Michael Hartl", email: "michael@example.com" }
p h2
p h1 == h2
p h1 == user

params = {}
params[:user1] = { name: "Michael Hartl", email: "mhartl@example.com" }
p params
params[:user2] = { name: "Yamada Taro", email: "yamataro@example.com" }
p params
p params[:user1][:name]

flash = { success: "It worked!", danger: "It failed." }
p flash
flash.each { |key, value| puts "Key #{key.inspect} has value #{value.inspect}" }

puts (1..5).to_a
puts (1..5).to_a.inspect

p :name
puts :name, :name.inspect

# 演習
# キーが'one'、'two'、'three'となっていて、それぞれの値が'uno'、'dos'、'tres'となっているハッシュを作ってみてください。その後、ハッシュの各要素をみて、それぞれのキーと値を"'#{key}'はスペイン語で'#{value}'"といった形で出力してみてください。
num = { "one" => "uno", "two" => "dos", "three" => "tres" }
num.each { |key, value| puts "'#{key}'はスペイン語で'#{value}'" }
person = {}
person1 = { firstname: "Taro", lastname: "Yamada" }

person2 = { firstname: "Hanako", lastname: "Yamada" }

person3 = { firstname: "Habataro", lastname: "Yamada" }
params = {}
params[:father] = person1
params[:mother] = person2
params[:child] = person3

p params
p params[:father][:firstname]
p person1[:firstname]
