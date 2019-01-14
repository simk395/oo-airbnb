class Listing

    attr_reader :listing

    @@log = []

    def initialize(listing)
        @listing = listing
        @@log << self
    end

    
    def guests #at this listing give all the people
        people = []
        Trip.all.each do |event|
            if event.listing == self
                people << event.guest
            end
        end
        people
    end

    def trips #give all the trips that go to this listing
        Trip.all.select do |event|
            event.listing == self.listing
        end
    end

    def trip_counts #count the amount of trips for this listing
        trips.length
    end

    def self.find_all_by_city(city) #give all listings for the given city
        Trip.all.select do |place|
            place.listing == city
        end
    end

    def self.most_popular #finds listing with most trips
        
    end

    #take all listings
    #
end
