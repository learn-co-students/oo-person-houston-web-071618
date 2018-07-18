# your code goes here
#First you need to create a person class that is initialized with a name that cannot be changed.
#Each instance of class Personshould be able to remember their name
#Each instance of class Person should start with $25 in their bank accounts
#Each instance of class Person should start with eight happiness points
#Each instance of class Person should start with eight hygiene points
#The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
#The amount in the bank account should also be able to change, though it has no max or min.
require 'pry'


class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end
  def bank_account= (new_amount)
    @bank_account = new_amount
  end

  def hygiene
    @hygiene
  end
  def hygiene= (nature)
    if nature > 10
      @hygiene = 10
    elsif  nature < 0
      @hygiene = 0
  else
    @hygiene = nature
  end
end
  def happiness
    @happiness
  end
  def happiness= (feels)
    if feels > 10
      @happiness = 10
    elsif  feels < 0
      @happiness = 0
  else
    @happiness = feels
  end
end

  def clean?
    @hygiene > 7
  end
  def happy?
    @happiness > 7
end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
  end
  def take_bath
    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    #take a bath
  end
  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2
    return "♪ another one bites the dust ♫"
  end
  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -=2
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
