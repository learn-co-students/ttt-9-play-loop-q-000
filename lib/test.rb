# basket = ["apple 1","apple 2","apple 3","apple 4","apple 5","apple 6","apple 7","apple 8","apple 9","apple 10"]

# apples_in_basket = basket.length # Step 1
# apples_taken_out = 0 # Step 2

# # Step 3 + 4
# while apples_in_basket > apples_taken_out
#   puts "You got apple No: #{basket[apples_taken_out]}"
#   apples_taken_out += 1
# end
# basket.each do |a|
#   puts "Here is the: #{a}"
# end

# 9.times do
#   puts "i said this 9 times"
# end

# input = ""
# while input != "Whatever"
#   puts "stop not saying whatever!"
#   input = gets.chomp
# end
brothers = ["Tom", "Tim", "Jim", "Ton","Sam", "Soila"]

# count = 3
# while count < brothers.length
#   puts "Stop hitting yourself #{brothers[count]}!"
#   count += 1
# end
# count = 0
# while count < brothers.length
#   puts "Stop hitting yourself #{brothers[count]}!"
#   count += 1
# end
primary_colors = ["Red", "Yellow", "Blue"]

counter = 0
primary_colors.each do |e|

  puts " Primary color #{e} is #{e.length} long and is index number #{counter}."
  counter += 1
end

brothers = ["Tim", "Tom", "Jim"]
counter = 1
brothers.each do |brother|
  puts "This is loop number #{counter}"
  puts "Stop hitting yourself X Times #{brother}!"
  counter += 1
end
brothers = ["Tim", "Tom", "Jim"]
brothers.each{|br| puts "Stop hitting yourself #{br}!"}
















