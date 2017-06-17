module DateTimeFormatterHelper
	def show_time_only(date)
		formatted_date = ""		
		if (!date.blank?)
	  	date.strftime("%H:%M")
  	end

		formatted_date
  end
end
