require 'pry'

class Person

  # returns the name instance using @name
  # create a person class that is initialized with a name that cannot be changed.
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    # OR
    # set the method to return the @name
  
      # get paid/receive payments
      # take a bath
      # call a friend
      # start a conversation
      # state if they are happy and/or clean
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    def hygiene=(points_changed)
      @hygiene = points_changed
      @hygiene = 0 if @hygiene < 1
      @hygiene = 10 if @hygiene > 9
    end
  
    def happiness=(points_changed)
      @happiness = points_changed
      @happiness = 0 if @happiness < 1
      @happiness = 10 if @happiness > 9
    end
  
    def clean?
      @hygiene > 7 ? true : false
    end
  
    def happy?
      @happiness > 7 ? true : false
    end
  
    def get_paid(salary_amount)
      @bank_account += salary_amount
      "all about the benjamins"
    end
  
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end
  
    def call_friend(friend)
      # call in method
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{@name}. How are you?"
    end
  
    def start_conversation(person, topic)
      if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness += 1
        person.happiness += 1
         "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  
  end