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

	def video_link(video)
		link = video.link
		if link || link.include?('v=')
			link.split('v=')[-1]
		end
	end
end
