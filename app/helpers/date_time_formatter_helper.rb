module DateTimeFormatterHelper
	def show_time_only(date)
		formatted_date = ""
		unless date.blank?
	  	formatted_date = date.strftime("%H:%M")
		end

		formatted_date
  end
end
