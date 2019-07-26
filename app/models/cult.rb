class Cult
    attr_accessor :name, :location, :founding_year, :slogan
    
    @@all = []

    def self.all
        @@all 
    end

    def self.find_by_name(cult_string)
        Cult.all.find{|c| c.name == cult_string}
    end

    def self.find_by_location(location_string)
        Cult.all.find{|c| c.location == location_string}
    end

    def self.find_by_founding_year(year_string)
        Cult.all.find{|c| c.founding_year == year_string}
    end

    def self.least_popular
        min_followers = Cult.all.map{|c| c.followers.length}.min 
        Cult.all.select{|c| c.followers.length == min_followers}
    end

    # def self.most_common_location
    #     location1 = Cult.all.map{|c| c.location}
    #     max_location = location1.map{|l| location1.count(l)}.max 
    #     if max_location == 
    # end


    def initialize(props={})
        self.name = props[:name]
        self.location = props[:location]
        self.founding_year = props[:founding_year]
        self.slogan = props[:slogan]
        @@all << self 
    end

    def followers
        cult_oaths = BloodOath.all.select{|o| o.cult == self}
        cult_oaths.map{|o| o.follower}
    end

    def recruit_follower(follower)
        BloodOath.new(cult: self, follower: follower, date: Time.now)
    end

    def cult_population
        BloodOath.all.select{|o| o.cult == self}.length 
    end

    def average_age
        self.followers.map{|f| f.age}.sum / self.followers.length
    end

    def my_followers_mottos
        self.followers.map{|f| f.life_motto}
    end

end