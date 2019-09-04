def roll_call_dwarves(dwarves)
  dwarves.delete_if.with_index(1) do |dwarves, index|
    index > dwarves.length/2
  end
  dwarves.each.with_index(1) do |dwarves, index|
    puts "#{index}. #{dwarves}"
 end
end

def summon_captain_planet(planeteer_call)
  planeteer_call.collect! {|planeteer_calls| planeteer_calls.capitalize}
  planeteer_call.collect! {|planeteer_calls| "#{planeteer_calls}!"}
end

def long_planeteer_calls(calls)
  calls.any? {|call| call.length > 4}
end

def find_the_cheese(strings)
  cheese_types = ["cheddar", "gouda", "camembert", "swiss"]
  strings.find do |cheese|
    cheese_types.include? (cheese)
 end
end

def words_with_b(words)
  words.select do |word|
    word.start_with? ("b")
  end
