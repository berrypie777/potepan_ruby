def janken
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  my_hand = gets.chomp.to_i
  program_hand = rand(3)
  puts "ホイ！"

 if my_hand == 3
 	puts "あなたはゲームを放棄したので終了します"
 	puts "-----------------------"
 	exit
 end

  jankens = ["グー", "チョキ", "パー"]
  puts "-----------------------"
  puts "あなた:#{jankens[my_hand]}"
  puts "相手:#{jankens[program_hand]}"
  puts "-----------------------"

  result = (my_hand - program_hand + 3) % 3
  
  case result
  
  when 0 
    puts "あいこで..."
    janken
    
  when 1 
    puts "あっち向いて〜"
    acchi_direction = ["上", "下", "左", "右"]
    puts "0(上)1(下)2(左)3(右)"
    my_direction = gets.chomp.to_i
    program_direction = rand(4)
    puts "ホイ！"
    puts "-----------------------"
    puts "あなた:#{acchi_direction[my_direction]}" 
    puts "相手:#{acchi_direction[program_direction]}"
    puts "-----------------------"
    if my_direction == program_direction
      puts "あなたの負けです"
    else
      janken 
    end
    
  when 2 
    puts "あっち向いて〜"
    acchi_direction = ["上", "下", "左", "右"]
    puts "0(上)1(下)2(左)3(右)"
    my_direction = gets.chomp.to_i
    program_direction = rand(4)
    puts "ホイ！"
    puts "-----------------------"
    puts "あなた:#{acchi_direction[my_direction]}" 
    puts "相手:#{acchi_direction[program_direction]}"
    puts "-----------------------"
    if my_direction == program_direction
      puts "あなたの勝ちです"
    else
      janken 
    end
  end
end

janken
