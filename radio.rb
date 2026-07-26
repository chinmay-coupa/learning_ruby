class Radio 

    attr_accessor :volume,:band
    @@fm_frequencies=88.0..108.0
    @@am_frequencies=540.0..1600.0

    @@fm_default=94.0
    @@am_default=600.0
    
    def self.am(dict={})
        dict.merge!({band:'AM'})
        Radio.new(dict)
    end

    def self.fm(dict={})
        dict.merge!({band:'FM'})
        Radio.new(dict)
    end

    def initialize(dict={})
        self.volume=dict[:volume] || 5
        self.band=dict[:band]|| "AM"
        @fm_frequency=@@fm_default
        @am_frequency=@@am_default

        self.frequency=dict[:frequency]
    end

    def volume=(value)
        return if value<1 || value>10 
        @volume=value
    end 

    def band=(value)
        return unless ['AM','FM'].include?(value)
        @band=value
    end

    def frequency
        @band=='FM' ? @fm_frequency : @am_frequency
    end

    def frequency=(value)
        value=value.to_f
        return unless allowed_frequencies.include?(value)
        if @band=='AM'
            @am_frequency=value
        else
            @fm_frequency=value
        end
    end

    def status
        "station #{frequency} #{band} at volume:#{volume}"
    end

    private

        def allowed_frequencies
            @band=='AM' ? @@am_frequencies : @@fm_frequencies
        end

end
        
    

