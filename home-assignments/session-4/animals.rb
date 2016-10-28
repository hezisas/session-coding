## Assignment #2
## creating class which holds animals values
## Hezi Sasson

class Animal
	attr_accessor :name
	attr_accessor :color

	def initialize(name, color)
		@name = name
		@color = color
	end
end

animal_color = {"rabbit"=>"gray","mouse"=>"gray","deer"=>"brown","bear"=>"brown","sheep"=>"white","flamingo"=>"pink","beetle"=>"red","duck"=>"white","ant"=>"black","donky"=>"brown","dolphine"=>"gray"}

animals=[]
for key,value in animal_color do
	animals<<Animal.new("#{key}","#{value}")
end

puts "List of animals with number of characters in their name are smaller than 5:"
animals.length.times do |i|
if ((animals[i].name.length) < 5) then
	puts animals[i].name
end
end
puts "  "
puts "List of the animals with the color brown:"
animals.length.times do |i|
if (animals[i].color == "brown") then
	puts animals[i].name
end
end

puts "  "
puts "Prints Wow! when the animal color is gray:"
animals.length.times do |i|
if (animals[i].color == "gray") then
	puts animals[i].name + " Wow!"
end
end
