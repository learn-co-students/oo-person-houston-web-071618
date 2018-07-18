# your code goes hererequire 'pry'
require 'pry'

class Person

attr_accessor :hygiene, :bank_account
# attr_reader :bank_account

@@arr_ppl = []

def initialize(initial_balance = 25, initial_happiness = 8, initial_hygiene = 8, name)

 @bank_account = initial_balance
 @happiness = initial_happiness
 @hygiene = initial_hygiene
 @name = name

end

def name
 @name
end

def happiness
 @happiness
end

def happiness=(new_happiness)
 @happiness = new_happiness
 # if @happiness >= 0 && @happiness <= 10
 #   new_happiness
 # elsif @happiness > 10
 #   new_happiness = 10
 # else
 #   new_happiness = 0
 # end
 @happiness = 0 if @happiness < 0
 @happiness = 10 if @happiness > 10

end

def hygiene=(new_hygiene)
  @hygiene = new_hygiene
  @hygiene = 0 if @hygiene < 0
  @hygiene = 10 if @hygiene > 10
end


def clean?
  if self.hygiene > 7
    true
  else
    false
  end
end

def happy?
  if self.happiness > 7
    true
  else
    false
  end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
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

def call_friend(friend)
  self.happiness += 3
  friend.happiness += 3
  return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
  if topic == "politics"
    self.happiness -= 2
    friend.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end
end

end
