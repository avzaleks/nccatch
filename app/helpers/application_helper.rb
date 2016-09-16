module ApplicationHelper
		def banner_alt(banner)
			banner.image.alt || "Banner"
		end
end
