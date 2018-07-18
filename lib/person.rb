# your code goes here
require 'pry'
class Person

#initialize with name
  def initialize (person_name)
    @name = person_name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
#name cannot be changed can only be read# should remember name (ie read it)
attr_reader :name, :happiness, :hygiene, :bank_account

#readers and writers for happiness points and hygiene points
attr_writer :bank_account, :happiness, :hygiene
#ability to get paid/recieve payments

def deduct_happiness_or_hygiene (attribute, num)
  if attribute - num <10
    attribute = 0
  elsif
    attribute - num
end
end

def happiness= (num)
  if num >10
    @happiness = 10
  elsif num < 0
    @happiness = 0
  else
    @happiness = num
  end
end

def hygiene= (num)
  if num >10
    @hygiene = 10
  elsif num < 0
    @hygiene = 0
  else
    @hygiene = num
  end
end

def clean?
  @hygiene> 7
end

def happy?
  @happiness > 7
end

def get_paid (salary_amount)
@bank_account += salary_amount
"all about the benjamins"
end

def take_bath
  self.hygiene= (@hygiene + 4)
"♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.happiness=(@happiness + 2)
  self.hygiene=(@hygiene - 3)
  "♪ another one bites the dust ♫"
end


#take a bath

#call a friend
def call_friend(friend)
  friend.happiness +=3
  self.happiness +=3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end
#start a conversation
def start_conversation (friend,topic)
  if topic == "politics"
    friend.happiness-=2
    self.happiness -=2
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    friend.happiness+=1
    self.happiness +=1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end



end
