class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :followers

    @@all = []

    def self.all
        @@all 
    end

    def self.find_by_name(cult_name)
        self.all.find{|cult| cult_name == cult.name}
    end

    def self.find_by_location(location)
        self.all.find{|cult| location == cult.location}
    end

    def self.find_by_founding_year(year)
        self.all.find{|cult| year == cult.founding_year}
    end
    
    def initialize(name, location, founding_year, slogan)
        self.name = name
        self.location = location
        self.founding_year = founding_year
        self.slogan = slogan
        self.followers = []
        @@all << self 
    end

    def recruit_follower(follower)
        self.followers << follower 
        follower.cults << self 
    end

    def cult_population
        self.followers.length 
    end

    def average_age
        self.followers.map{|follower| follower.age}.sum / self.followers.length
    end

    def my_followers_mottos
        self.followers.map{|follower| follower.life_motto}
    end

    

end
