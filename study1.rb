#: aaaaaaa => AAAAAAA
str = "aaaaaaa"
puts str.upcase

#: BBBBBBB => bbbbbbb
str1 = "BBBBBBB"
puts str1.downcase

#: aBaBaBaB => AbAbAbAb
str2 = "aBaBaBaB"
puts str2.swapcase

#: aiueoのuが左から何番目の位置にあるか調べたい
str3 = "aiueo"

# 見た目上なら
puts str3.index("u")+1
# 文字列操作として扱う必要性があるなら
puts str3.index("u")+1

#: $user => 田中太郎
$user = "田中太郎"
p $user

# [1,2,3,4,5,6,7,8,9,10] => [1,3,5,7,9]
array = [1,2,3,4,5,6,7,8,9,10]
result = []
for i in array do
    if i.odd?
        result.append(i)
    end
end
p result
# if文がfalseの場合nillになる
# p array.map{ |num| num * 2 if num.odd? }
result2 = array.map{ |num| num if num.odd? }.compact
p result2

# [1,2,3,4,5,6,7,8,9,10] => [2,4,6,8,10]

array = [1,2,3,4,5,6,7,8,9,10]
result = []
for i in array do
    if i.even?
        result.append(i)
    end
end
p result

result2 =array.map{ |num| num if num.even? }.compact


# [1,2,3,4,5,6,7,8,9,10] => [2,4,6,8,10,12,14,16,18,20]
array = [1,2,3,4,5,6,7,8,9,10]
result = []
for i in array do
    result.append(i*2)
end
p result

result2 = array.map{|item| item * 2 }
p result2

# [1,2,3,4,8,6,7,5,9,10] => 5
array = [1,2,3,4,8,6,7,5,9,10]
puts array[7]


# [ [1,2], [3,4], [5,6], [7,8], [9,10] => [ [2,4], [6,8], [10,12], [14,16], [18,20]
array = [ [1,2], [3,4], [5,6], [7,8], [9,10]]

for i in array do
    i[0] = i[0]*2
    i[1] = i[1]*2
end
p array

p array.map{ |item| [ item[0] * 2, item[1] * 2 ] }


# [ [1, "田中"], [2, "佐藤"] , [3, "山本"] ,[4, "清水"], [5, "平林"] ] => [5,"平林"]
user_list = [ [1, "田中"], [2, "佐藤"] , [3, "山本"] ,[4, "清水"], [5, "平林"] ]
p user_list[4]

# [ [1, '田中'], [2, '佐藤'] , [3, '山本'] ,[4, '清水'], [5, '平林']] => [ [1, '田中'],[3,'山本'] [5,'平林'] ]
user_list = [ [1, "田中"], [2, "佐藤"] , [3, "山本"] ,[4, "清水"], [5, "平林"] ]
result = []
for user in user_list do
    if user[0].odd?
        result.append(user)
    end
end
p result

result2 = user_list.map{ |user| user if user[0].odd? }.compact

# [ [1, '田中'], [2, '佐藤'] , [3, '山本'] ,[4, '清水'], [5, '平林'] ] => [ [1, '田中'],[3,'山本'] [5,'平林'] ] => ['田中', '山本', '平林']
user_list = [ [1, "田中"], [2, "佐藤"] , [3, "山本"] ,[4, "清水"], [5, "平林"] ]
result = []
for user in user_list do
    if user[0].odd?
        result.append(user[1])
    end
end
p result

result2 = user_list.map{ |user| user[1] if user[0].odd? }.compact

result2 = user_list.map{ |user| user if user[0].odd? }.compact
p result2
p result2.map{ |user| user[1] if user[0].odd? }.compact


# [ [1, '田中], [2, '佐藤'] , [3, '山本'] ,[4, '清水'], [5, '平林'] ] => [ [1, '田中'],[3, '山本'] [5,'平林'] ] => [2, 6, 10]
user_list = [ [1, "田中"], [2, "佐藤"] , [3, "山本"] ,[4, "清水"], [5, "平林"] ]
result = []
for user in user_list do
    if user[0].odd?
        result.append(user[0]*2)
    end
end
p result

result2 = user_list.map{ |user| user[0]*2 if user[0].odd?  }.compact

p result2

# {"名前" => "田中", "年齢" => 30 ,"出身地" => '福岡'} => ['名前' , '年齢' , 出身地]
hash = {"名前" => "田中", "年齢" => 30 ,"出身地" => '福岡'}
array = hash.keys
p array

# {"名前" => "田中", "年齢" => 30 ,"出身地" => '福岡'} => ['田中' , '30' , 福岡]
hash = {"名前" => "田中", "年齢" => 30 ,"出身地" => '福岡'}
array = hash.values
p array

!#
#{ "名前" => ["斎藤", "田中"] , "年齢" => [12,23] , "出身地" => ["北海道", "沖縄"]} => 北海道、沖縄
hash = { "名前" => ["斎藤", "田中"] , "年齢" => [12,23] , "出身地" => ["北海道", "沖縄"]}
puts hash["出身地"]

#{ "名前" => ["斎藤", "田中"] , "年齢" => [12,23] , "出身地" => ["北海道", "沖縄"]} => [名前, 年齢 , 出身地]
hash = { "名前" => ["斎藤", "田中"] , "年齢" => [12,23] , "出身地" => ["北海道", "沖縄"]}
array = hash.keys
p array

# test1 = [1, 2, 3,] test2 = ["田中" , "佐藤" , "松本"] #=> [[1, "田中"],[2, "佐藤"],[3, "松本"]]
test1 = [5, 2, 3,]
test2 = ["田中" , "佐藤" , "松本"]
result = []

for i in 0..2 do
    result << ([test1[i],test2[i]])
end

p result


#: "1999年11月11日"という文字列を1999-11-11に変換する（正規表現の使用）
date = "1999年11月11日"
date1 = date.gsub(/年|月|日|/, "年" => "-", "月" => "-","日" => "")

puts date1

date = "1999年11月11日"
date2 = date.gsub(/\D/, "-").gsub(/\D$/, "")
puts date2


#: "1999年11月11日"という文字列を年月日に変換する（正規表現の使用）
date = "1999年11月11日"
date2 = date.delete("0-9")
puts date2.delete("0-9")

#----------------------------------------------------------

class Person
    attr_reader :full_name, :birthday, :age
    def initialize(full_name,birthday,age)
        @full_name = full_name
        @birthday = birthday
        @age = age
    end
end

instance = Person.new('佐藤', "1990-11-11" ,24)

def get_full_name(instance)
    name = instance.full_name
    birthday = instance.birthday
    age = instance.age
    return [name, birthday , age]
end

test1 = get_full_name(instance)

p test1 #=> ['佐藤', "1990-11-11" , 24]

#上記の結果にするためにクラス及び、インスタンスを作成してinstanceに代入せよ

test2 = nill
test2&.strftime("Y/M/d")
p test2

# #上記は一般的にエラーとなるコードであるが、エラーを出さずnilを出力する方法がある。それはなんでしょう。
