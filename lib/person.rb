# your code goes here
require "pry"

class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene


   def initialize(name)

     @name = name
     @bank_account = 25
     @happiness = 8
     @hygiene = 8

     # if @happiness > 10
     #   @happiness = 10
     # elsif @happiness < 1
     #   @happiness = 0
     # end
   end

   def happiness=(happiness)
     @happiness = happiness
     if @happiness > 10
       @happiness = 10
     elsif @happiness < 0
         @happiness = 0
       end
     end

   def hygiene=(hygiene)
     @hygiene = hygiene
     if @hygiene > 10
       @hygiene = 10
     elsif @hygiene < 0
         @hygiene = 0
       end
     end

   def clean?
     if hygiene > 7
       return true
     else
       false
     end
   end

   def happy?
     if @happiness > 7
       return true
     else
       false
     end
   end

   def get_paid(salary)
     @bank_account += salary
      "all about the benjamins"
   end

   def take_bath
     # binding.pry
       self.hygiene=(@hygiene + 4)
      # if self.hygiene > 10
      #  @hygiene = 10

      # end


     "♪ Rub-a-dub just relaxing in the tub ♫"

   end

   def work_out
     self.happiness += 2
     self.hygiene=(@hygiene - 3)
     "♪ another one bites the dust ♫"
   end

   def call_friend(friend)
     self.happiness=(@happiness + 3)
     friend.happiness += 3
     "Hi #{friend.name}! It's #{@name}. How are you?"
     # binding.pry

   end

   def start_conversation(friend, topic)
     if topic == "politics"
       self.happiness -= 2
       friend.happiness -= 2
       'blah blah partisan blah lobbyist'
     elsif topic == "weather"
       self.happiness=(@happiness + 1)
       friend.happiness += 1
       'blah blah sun blah rain'
     else
       "blah blah blah blah blah"
     end
   end

end
