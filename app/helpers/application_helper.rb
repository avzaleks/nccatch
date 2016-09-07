module ApplicationHelper
	def remove_http(link)
		if link.include?('https://')
			link.delete('https://')
		elsif link.include?('http://')
			link.delete('http://')
		else
			link
		end
	end
end
