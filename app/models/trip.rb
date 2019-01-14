class Trip

    attr_reader :guest, :listing, :duration
    @@trip = []

    def initialize(guest, listing, duration)
        @guest = guest
        @listing = listing
        @duration = duration
        @@trip << self
    end

    def self.all
        @@trip
    end
end
