
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

end

