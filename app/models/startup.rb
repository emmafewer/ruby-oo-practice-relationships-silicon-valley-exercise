
class Startup
    attr_accessor :name 
    attr_reader :founder, :domain

    @@all = []
    def initialize(name, founder, domain)
        @name = name 
        @founder = founder 
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end 

    def self.find_by_founder(founder) 
        self.all.find{|startup| startup.founder == founder}
    end

    def self.domains
        self.all.map{|startup| startup.domain}
    end

    def self.all
        @@all
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end 

    def num_funding_rounds
        FundingRound.all.count{|fr| fr.startup == self}
    end 
 
    def fr_for_startup
        fr_for_startup = FundingRound.all.select{|fr| fr.startup == self}
    end

    def total_funds
        fr_for_startup.sum{|fr|fr.investment}
    end

    def investors
        fr_for_startup.map{|fr| fr.venture_capitalist.name}.uniq
    end

    def big_investors
        vc_name = []
        self.fr_for_startup.each do |fr| 
            if fr.venture_capitalist.total_worth >= 100000000 
                vc_name << fr.venture_capitalist.name
            end
        end
        vc_name
    end     

end

