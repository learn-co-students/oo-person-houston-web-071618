require 'pry'

class Person
attr_reader :name, :happiness, :hygiene, :bank_account

def initialize(name, bank_account = 25, hygiene = 8, happiness = 8)
  @name = name
  @bank_account = bank_account
  @happiness = happiness
  @hygiene = hygiene
end

def clean?
  if @hygiene > 7
    true
  else
    false
end
end

def happy?
  if @happiness > 7
    true
  else
    false
end
end

def bank_account=(num)
  @bank_account = num
end

def happiness= (num)
  if num > 10
    @happiness = 10
  elsif num < 0
    @happiness = 0
  else
    @happiness = num
  end
end

def hygiene= (num)
  if num > 10
    @hygiene = 10
  elsif num < 0
    @hygiene = 0
  else
    @hygiene = num
  end
end

def get_paid(salary)
  @bank_account += salary
  return 'all about the benjamins'
end

def take_bath
  self.hygiene += 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end

def call_friend(person)
  person.happiness += 3
  self.happiness += 3
  return "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    person.happiness -= 2
    self.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    person.happiness += 1
    self.happiness += 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end

end
