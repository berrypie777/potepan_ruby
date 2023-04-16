require 'csv'

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.chomp.to_i

if memo_type == 1
  print "ファイル名を入力してください: " 
  file_name = gets.chomp
  CSV.open("#{file_name}.csv", "w") do |csv|
    print "メモを入力してください(終了する場合はcontrol+Dを入力): "
    memo = STDIN.read.chomp
    csv << [memo]
  end
elsif memo_type == 2
  print "編集するファイル名を入力してください: "
  file_name = gets.chomp
  if File.exist?("#{file_name}.csv")
    CSV.open("#{file_name}.csv", "a") do |csv|
      print "メモを入力してください(終了する場合はcontrol+Dを入力): "
      memo = STDIN.read.chomp
      csv << [memo]
  end
  else
    puts "ファイルが存在しません"
  end
else
  puts "1または2を入力してください"
end
