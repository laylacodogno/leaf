module DateTimeFormatterHelper
	def show_time_only(date)
  date.strftime("%H:%M")
  end
end
