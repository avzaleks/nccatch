# helper
module ApplicationHelper
	def banner_alt(banner)
		banner.image.alt || "Banner"
	end

	def truncator(msg)
    if msg.body.length > 150
      msg.body.truncate_words(30, omission: " ").html_safe
    else
      msg.body.html_safe
    end
	end

	def events_time(event)
		start_f, end_date_f = event.start_date.strftime('%l%P'), event.end_date.strftime('%l%P')
		hours_diff = ((Time.parse(event.end_date.to_s) - Time.parse(event.start_date.to_s)).to_i / 60 ) / 60
		if hours_diff > 24
			start_f
		else
			start_f + " - " + end_date_f
		end
	end

	def events_date(event)
		start_m = event.start_date.strftime('%b')
		start_d = event.start_date.strftime('%e')
		end_m   = event.end_date.strftime('%b')
		end_d   = event.end_date.strftime('%e')
		hours_diff = ((Time.parse(event.end_date.to_s) - Time.parse(event.start_date.to_s)).to_i / 60 ) / 60
		# if hours_diff > 24
		# 	[ {day: start_d, month: start_m}, { day: end_d, month: end_m} ]
		# else
			[ {day: start_d, month: start_m} ]
		# end
	end
end
