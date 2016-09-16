module Refinery
  module Mails
    module Admin
      class MailsController < ::Refinery::AdminController
        skip_before_action :authenticate_refinery_user!, only: [:create]
        crudify :'refinery/mails/mail',
                :title_attribute => 'email'

        def get_csv
          @mails = Refinery::Mails::Mail.select(:email).distinct
          respond_to do |format|
            format.html
            format.csv { send_data @mails.to_csv }
            format.xls  { render text: @mails.to_csv  }
          end
        end
        
        private

        # Only allow a trusted parameter "white list" through.
        def mail_params
          params.require(:mail).permit(:email)
        end
      end
    end
  end
end
