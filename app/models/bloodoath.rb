class BloodOath
    attr_accessor :date 

    @@all = []

    def self.all
        @@all 
    end
    
    def initialize(date='')
        self.date = date
        @@all << self 
    end
end