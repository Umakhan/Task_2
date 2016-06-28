require 'timezone_finder'
require 'geocoder'

class TimeZone

	attr_accessor :city
	
	def initialize
		@tf = TimezoneFinder.create
	end
	
	def Search
		results = Geocoder.search(@city)
		lng = results[0].data["geometry"]["location"]["lng"]
		lat = results[0].data["geometry"]["location"]["lat"]
		point = (lng),(lat)
		@tf.timezone_at(*point)	
	end
end


