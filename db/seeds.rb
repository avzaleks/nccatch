# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS SponsorInFooters extension
Refinery::SponsorInFooters::Engine.load_seed

unless Refinery::SponsorInFooters::SponsorInFooter.any?
	(1).upto(3) do |i|
		sponsor = Refinery::SponsorInFooters::SponsorInFooter.new
		sponsor.name  = "Sponsor Title 1#{i}"
		sponsor.link  = 'google.com'
		unless ::Refinery::Resource.find_by(file_name: 'img1.jpg')
			file = File.open(File.join(Rails.root, 'db', 'seed_images', 'img1.jpg'))
			image = ::Refinery::Resource.create_resources(file: file)
			sponsor.image_id = image[0].id
		else
			sponsor.image_id = ::Refinery::Resource.find_by(file_name: 'img1.jpg').id
		end
		sponsor.save!

		sponsor2 = Refinery::SponsorInFooters::SponsorInFooter.new
		sponsor2.name  = "Sponsor Title 2#{i}"
		unless ::Refinery::Resource.find_by(file_name: 'img2.jpg')
			file2 = File.open(File.join(Rails.root, 'db', 'seed_images', 'img2.jpg'))
			image2 = ::Refinery::Resource.create_resources(file: file2)
			sponsor2.image_id = image2[0].id
		else
			sponsor2.image_id = ::Refinery::Resource.find_by(file_name: 'img2.jpg').id
		end
		sponsor2.save!
	end
end