class BloodOath
    attr_accessor :date, :follower, :cult 
    
    @@all = []

    def self.all
        @@all
    end

    def initialize(props={})
        self.date = props[:date]
        self.follower = props[:follower]
        self.cult = props[:cult]
        @@all << self 
    end
end