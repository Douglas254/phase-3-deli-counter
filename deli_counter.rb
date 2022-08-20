# Write your code here.
# #line
# there is nobody in line
# should say the line is empty
# there are people in line
# should display the current line
# works with different people in line
def line(deli_counter)
  if deli_counter.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    deli_counter.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end

# #take_a_number
# there is nobody in line
# should add a person to the line
# there are already people in line
# should add a person to the end of the line
# adding multiple people in a row
# should correctly build the line
def take_a_number(deli_counter, name)
  deli_counter << name
  puts "Welcome, #{name}. You are number #{deli_counter.length} in line."
end

# #now_serving
# there are no people in line
# should say that the line is empty
# there are people in line
# should serve the first person in line and remove them from the queue
def now_serving(deli_counter)
  if deli_counter.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli_counter.first}."
    deli_counter.shift
  end
end