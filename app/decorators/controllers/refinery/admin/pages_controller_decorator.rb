Refinery::Admin::PagesController.prepend(
  Module.new do
    def permitted_page_params
      super << [:background_image_id]
    end
  end
)