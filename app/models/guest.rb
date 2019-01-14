class Guest

    attr_reader :name

    @@guests = []

    def initialize(name)
        @name = name
        @@guests << self
    end

    def self.all
        @@guests
    end

    def listings #gives all listings for a guest
        Trips.all.select do |list|
            list.guest == self.name
        end
    end

    def trips #gives all the trips for a guest
        Trips.all.select do |data|
            data.guest == self.name
        end
    end
    
    def trip_counts
        trips.length
    end

    def self.pro_traveler
        container, pro = [], []
        Trips.all.each do |people|
            if container.include?(people.name) == false
                container << people.name
            else
                pro << people.name
            end
        end
        pro
    end

    def self.find_all_by_name(name)
        Trip.all.select do |place|
            place.guest == name
        end
    end
end