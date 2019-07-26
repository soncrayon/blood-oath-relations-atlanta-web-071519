class Follower
    attr_accessor :name, :age, :life_motto
    
    @@all = []

    def self.all
        @@all 
    end

    def self.of_a_certain_age(age_floor)
       Follower.all.select{|f| f.age >= age_floor} 
    end

    def self.most_active
        max_cults = Follower.all.map{|f| f.cults.length}.max 
        Follower.all.select{|f| f.cults.length == max_cults}  
    end

    # def self.top_ten
        
    # end

    def initialize(props={})
        self.name = props[:name]
        self.age = props[:age]
        self.life_motto = props[:life_motto]
        @@all << self 
    end

    def cults
        f_cults = BloodOath.all.select{|o| o.follower == self}
        f_cults.map{|o| o.cult}
    end

    def join_cult(cult_instance)
        BloodOath.new(follower: self, cult: cult_instance)
    end

    def my_cults_slogans
        self.cults.map{|c| c.slogan}
    end

end