# your code goes here
require 'pry'

class Person

attr_reader :name
#attr_writer
attr_accessor :bank_account

def initialize(name)
  @name = name
  @bank_account = 25
  @happiness_points = 8
  @hygiene_points = 8
end

def happiness
  @happiness_points
end

def happiness=(new_points)
  if new_points > 10
    @happiness_points = 10
  elsif new_points < 0
    @happiness_points = 0
  else
    @happiness_points = new_points
  end
end

def hygiene
  @hygiene_points
end

def hygiene=(new_points)
  if new_points > 10
    @hygiene_points = 10
  elsif new_points < 0
    @hygiene_points = 0
  else
    @hygiene_points = new_points
  end
end

def clean?
  self.hygiene > 7
end

def happy?
  self.happiness > 7
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end


def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness +=2
  self.hygiene -= 3
   "♪ another one bites the dust ♫"
end

def call_friend(instanceClass)

  self.happiness += 3
  instanceClass.happiness += 3
  "Hi #{instanceClass.name}! It's #{self.name}. How are you?"

end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
    "blah blah partisan blah lobbyist"
  elsif
    topic == "weather"
    self.happiness += 1
    person.happiness += 1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end
end
