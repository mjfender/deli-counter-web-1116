def take_a_number (katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    deli_line = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      deli_line.concat(" #{index+1}. #{name}")
    end
    puts "#{deli_line}"
  end
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    next_up = katz_deli.shift
    puts "Currently serving #{next_up}."
  end
end
