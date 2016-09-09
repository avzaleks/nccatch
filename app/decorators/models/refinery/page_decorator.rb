# Open the Refinery::Page model for manipulation
Refinery::Page.class_eval do
  # Add an association to the Refinery::Image class, so we
  # can take advantage of the magic that the class provides
  belongs_to :background_image, :class_name => '::Refinery::Image'
end