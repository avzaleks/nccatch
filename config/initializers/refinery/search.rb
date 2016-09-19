Refinery::Search.configure do |config|
  config.enable_for = ["Refinery::Page", "Refinery::Blogs::Blog", "Refinery::Recipes::Recipe"]
  # config.page_url = "/search"
  # config.results_per_page = 10
end