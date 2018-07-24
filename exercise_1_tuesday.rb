class Person
  def initialize(name, emotions)
    @emotions = emotions
    @name = name
  end
# Initlaizing the Person class. Each person needs a name and an emotion

  def emotions
    @emotions
  end
# Reader for emotion, so we can pull the instance variable outside of the class

  def name
    @name
  end
# Reader for name, so we can pull the instance variable outside of the class


  def report
    @emotions.each do |feeling, value|
# Each do goes through the array... the array is outside the class)
      if value == 3
        puts "I am feeling a high amount of #{feeling}"
      elsif value == 2
        puts "I am feeling a medium amount of #{feeling}"
      elsif value == 1
        puts "I am feeling a low amount of #{feeling}"
      end
    end
  end
end


billy = Person.new("Billy", emotions = {
  Sadness: rand(1...4),
  Happiness: rand(1...4),
  Anger: rand(1...4),
  Excitement: rand(1...4)
})

puts billy.report
