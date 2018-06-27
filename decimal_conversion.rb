# 2進数と10進数の変換ツール

class Calculation


  def initialize
    @menu_num
    @before_num
  end

  def menus
    menus_display=[
        "2進法を10進法に変換",
        "10進法を2進法に変換"
    ]
    i=1
    puts "選択してください"
    menus_display.each do |menu|
      puts "#{i}: #{menu}"
      i+=1
    end
    @menu_num=gets.chomp.to_i
    puts "----------"
  end

  def answer
    puts "変換したい数字を入力してください"
    @before_num=gets.chomp.to_i
    puts "----------"
    if @menu_num==1
      answer1="#{@before_num}".to_i(2)
      puts "答えは#{answer1}"
    elsif @menu_num==2
      answer2=@before_num.to_s(2)
      puts "答えは#{answer2}"
    end
  end


end


cal=Calculation.new
cal.menus
cal.answer
