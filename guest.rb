class Guest
  # attr_reader :full_name , :birthday
  # attr_writer :full_name , :birthday
  attr_accessor :full_name, :birthday

  def initialize(full_name, birthday)
    @full_name = full_name
    require "date"
    @birthday = DateTime.parse(birthday)
  end

  # --attr_readerを使わない--
  # full_nameを返すメソッド
  # def full_name
  #     @full_name
  # end

  # birthdayを返すメソッド
  # def birthday
  #     @birthday
  # end
  # --attr_writerを使わない--
  # def full_name=(value)
  # 	full_name = value
  # end
  # 	def birthday=(value)
  # 		@birthday = value
  # 	end

  # full_nameを受け取って「こんにちはfull_nameさん」と返すメソッド
  def greeting
    # puts "こんにちは#{full_name}さん"
    return "こんにちは#{full_name}さん"
  end

  # birthdayとfull_nameを受け取って「full_nameさんの誕生日はbirthdayです」を返すメソッド
  def greeting_birthday
    return "#{full_name}さんの誕生日は#{birthday.strftime("%Y年%m月%d日")}です"
  end

  # ・birthdayを引数で受け取ったフォーマットに変換して返すメソッド(Y m dなど)
  def change_birthday_format(format)
    return birthday.strftime(format)
  end

  # 現在の年齢を返すメソッド
  def age
    now = Time.now
    age =
      (now.strftime("%Y%m%d").to_i - birthday.strftime("%Y%m%d").to_i) / 10_000
    past_month = (now.strftime("%m").to_i - birthday.strftime("%m").to_i)
    # puts "現在#{age}歳です"
    return age
  end

  # 現在の年齢と前回の誕生月から何ヶ月経っているのかを返すメソッド
  def passed_month_birthday
    now = Time.now
    past_month = (now.strftime("%m").to_i - birthday.strftime("%m").to_i)
    # puts "前回の誕生日から#{past_month}ヶ月経過しています"
    return past_month
  end
end

person = Guest.new("田中たなか", "19920130")
