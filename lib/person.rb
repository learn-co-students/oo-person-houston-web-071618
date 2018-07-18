# your code goes here
require 'pry'

class Person
  attr_reader :name, :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account=(balance)
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def happiness=(points)
    @happiness = points
    @happiness = filter_points(points)
  end

  def hygiene=(points)
    @hygiene = points
    @hygiene = filter_points(points)
  end

  def filter_points(points)
    if points > 10
      return 10
    elsif points < 0
      return 0
    else
      return points
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    # binding.pry
    filtered_points = 4 + @hygiene
    self.hygiene = filtered_points
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    filtered_hygiene_points = @hygiene - 3
    self.hygiene = filtered_hygiene_points
    filtered_happiness_points = @happiness + 2
    self.happiness = filtered_happiness_points
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    filtered_happiness_points = @happiness + 3
    self.happiness = filtered_happiness_points
    friend_filtered_happiness_points =  friend.happiness + 3
    friend.happiness = friend_filtered_happiness_points
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      filtered_happiness_points = @happiness - 2
      self.happiness = filtered_happiness_points
      friend_filtered_happiness_points = friend.happiness - 2
      friend.happiness = friend_filtered_happiness_points
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      filtered_happiness_points = @happiness + 1
      self.happiness = filtered_happiness_points
      friend_filtered_happiness_points = friend.happiness + 1
      friend.happiness = friend_filtered_happiness_points
      return "blah blah sun blah rain"

    else
      return "blah blah blah blah blah"
    end
  end

end
