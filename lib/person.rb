class Person
  attr_accessor :friend
  attr_reader :name

  def initialize(name)
    @name = name
    @friend = friend
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account= (bank_account)
    @bank_account = bank_account
  end

  def bank_account
    @bank_account
  end

  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10
      @happiness =10
    elsif @happiness < 0
      @happiness = 0
    else
    @happiness
  end
  end

  def happiness
    @happiness
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene =10
    elsif @hygiene < 0
      @hygiene = 0
    else
    @hygiene
  end
  end

  def hygiene
    @hygiene
  end



  def happy?
      @happiness > 7 ? true : false
    end

  def clean?
        @hygiene > 7 ? true : false
    end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end


  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (starter, topic)
    people = [self, starter]
    if topic == "politics"
      people.each {|person| person.happiness -= 2}
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      people.each {|person| person.happiness += 1}
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end


  end


end
