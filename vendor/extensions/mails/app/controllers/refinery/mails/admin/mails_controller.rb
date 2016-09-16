module Refinery
  module Mails
    module Admin
      class MailsController < ::Refinery::AdminController

        crudify :'refinery/mails/mail',
                :title_attribute => 'email'

        private

        # Only allow a trusted parameter "white list" through.
        def mail_params
          params.require(:mail).permit(:email)
        end
      end
    end
  end
end
