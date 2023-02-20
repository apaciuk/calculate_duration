class DurationCoder
    def self.dump(value)
        return unless value
        value.to_i 
    end 

    def self.load(value) 
        return unless value
        ActiveSupport::Duration.build(value) 
    end 
    
end