class Human
	attr_accessor :name, :age, :gender
	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end
	def to_s
		"Name: #{@name} - Age: #{@age} - Gender: #{@gender}"
	end	
end

def male_under_18(people)
	people.select {|person| person.age.to_i < 18 && person.gender == "male"}
end

def male_over_18(people)
	people.select {|person| person.age.to_i >= 18 && person.gender == "male"}
end

def female_under_18(people)
	people.select {|person| person.age.to_i < 18 && person.gender == "female"}
end

def female_over_18(people)
	people.select {|person| person.age.to_i >= 18 && person.gender == "female"}
end

people = Array.new
person = Human.new("Hoang", 19, "male")
people << person
person = Human.new("Hoai", 29, "female")
people << person
person = Human.new("Nam", 16, "male")
people << person
person = Human.new("Ngoc", 21, "female")
people << person
person = Human.new("Yen", 17, "female")
people << person

puts people

puts "----- male under 18 -----"
puts male_under_18(people)

puts "----- male over 18 -----"
puts male_over_18(people)

puts "----- female under 18 -----"
puts female_under_18(people)

puts "----- female over 18 -----"
puts female_over_18(people)
