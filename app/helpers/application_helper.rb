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
end
