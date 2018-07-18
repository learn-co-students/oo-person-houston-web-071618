class Person

  attr_reader  :name
  attr_accessor :happiness, :hygiene, :balance

  @@friend = ""

  @@people = []

  def initialize(name)
    @name = name
    @balance = 25
    @happiness = 8
    @hygiene = 8
    @@people << self

  end

  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_happy(num)
    @happiness += num
    if @happiness > 10
      @happiness = 10
    end
  end

  def get_sad(num)
    @happiness -= num
    if @happiness < 0
      @happiness = 0
    end
  end

  def get_clean(num)
    @hygiene += num
    if @hygiene > 10
      @hygiene = 10
    end
  end

  def get_dirty(num)
    @hygiene -= num
    if @hygiene < 0
      @hygiene = 0
    end
  end

  def get_paid(salary)
    @balance += salary

    return "All about the Benjamins"
  end

  def take_bath
    get_clean(4)

    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out

    get_happy(2)
    get_dirty(3)

    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # The `call_friend` method should accept another instance of the Person class,
    # or "friend". The method should increment the caller and the callee's happiness points
    # by three. If Stella calls her friend Felix, the method should return "Hi Felix!
    # It's Stella. How are you?"

    self.get_happy(3)
    friend.get_happy(3)
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(converser, topic)

    if topic == "politics"
      self.get_sad(1)
      friend.get_sad(1)
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      
    end
  #   getter
  "blah blah sun blah rain".
  #   * If the topic is not politics or weather, their happiness points don't change
  # and the method returns "blah blah blah blah blah".

  end

end
