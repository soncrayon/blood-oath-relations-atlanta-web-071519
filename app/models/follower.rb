class Follower
    attr_accessor :name, :age, :life_motto, :cults 
    
    @@all = []

    def self.all
        @@all 
    end

    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age >= age}
    end

    def initialize(name, age, life_motto)
        self.name = name
        self.age = age
        self.life_motto = life_motto
        self.cults = []
        @@all << self 
    end

    def join_cult(new_cult)
        cult_to_join = Cult.all.find{|cult| new_cult == cult} 
        cult_to_join.followers << self  
        self.cults << cult_to_join    
    end

    def my_cults_slogans
        self.cults.map{|c| c.slogan}
    end

end