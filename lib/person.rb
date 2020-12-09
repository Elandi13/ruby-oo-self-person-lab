# require 'pry'

class Person 

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene


        def happiness=(num)
            @happiness = num.clamp(0,10)
        end

        def hygiene=(num)
            @hygiene = num.clamp(0,10)
        end

        def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
            @name = name 
            @bank_account = bank_account
            @happiness = happiness
            @hygiene = hygiene
        end

        def happy? 
            @happiness > 7
        end

        def clean? 
            @hygiene > 7
        end

        def get_paid(salary)
            self.bank_account += salary 
            self.happiness += 1
        return "all about the benjamins"
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
            [friend, self].each {|o| o.happiness += 3 }
            "Hi #{friend.name}! It's #{self.name}. How are you?"

            #i looked at the solution for this one because i was really stuck on what to do but also need clarification on whats going on.
        end

        def start_conversation(person, topic)
            objects = [self, person]
            if topic == "politics"
              objects.each { |o| o.happiness -= 2}
              first, second = ["partisan", "lobbyist"]
            elsif topic == "weather"
              objects.each { |o| o.happiness += 1}
              first, second = ["sun", "rain"]
            end
            first ||= "blah"
            second ||= "blah"
            base_string = "blah blah #{first} blah #{second}"
          end

          # same with this one 
    
end



























