class Vehicle
    attr_accessor :type, :function

    def initialize(type, function=[])
        @type = type
        @function = function
    end

    def max_speed
        if @type == 'plane'
            1000
        elsif @type == 'supercar'
            300
        elsif @type == 'car'
            200
        elsif @type == 'motorbike'
            150
        else
            30
        end
    end
end