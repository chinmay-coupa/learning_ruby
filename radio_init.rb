#! usr/bin/env ruby

require_relative 'radio.rb'

r1=Radio.new
puts r1.volume
puts r1.band
puts r1.frequency

r_am=Radio.am({volume:7})
puts r_am.status

r_fm=Radio.fm({volume:8})
puts r_fm.status
