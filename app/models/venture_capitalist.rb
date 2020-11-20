class VentureCapitalist

    attr_accessor :name, :total_worth
    #attr_reader

    @@all = []

    def initialize(name, total_worth)
        @name = name 
        @total_worth = total_worth 
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select do |vc|
            vc.total_worth >= 1000000000
        end
    end

end
