class User
    attr_accessor :name, :secretKey

    def initialize(name, secretKey)
        @name = name
        @secretKey = secretKey
    end

    def describes
        "User #{@name} is #{self.role}"
    end

    def role
        if @secretKey == '112233'
            'admin'
        elsif @secretKey == "111222"
            'owner'
        else
            'user'
        end
    end
end