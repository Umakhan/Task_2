require 'timezone'

class ShowTime

	attr_accessor :zone 

	def show_time
		timezone = Timezone[@zone]
		timezone.time_with_offset(Time.now)
	end

end


