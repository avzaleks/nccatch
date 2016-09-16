require 'csv'

module Refinery
  module Mails
    class Mail < Refinery::Core::BaseModel
      self.table_name = 'refinery_mails'

      validates :email,  :presence => true

      # To enable admin searching, add acts_as_indexed on searchable fields, for example:
      #
      #   acts_as_indexed :fields => [:title]

      def self.to_csv(options = {})
        CSV.generate(options) do |csv|
          column_names = %w(email)
          csv << column_names
          all.each do |product|
            csv << product.attributes.values_at(*column_names)
          end
        end
      end
    end
  end
end
