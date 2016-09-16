# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Mails" do
    describe "Admin" do
      describe "mails", type: :feature do
        refinery_login

        describe "mails list" do
          before do
            FactoryGirl.create(:mail, :email => "UniqueTitleOne")
            FactoryGirl.create(:mail, :email => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.mails_admin_mails_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.mails_admin_mails_path

            click_link "Add New Mail"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Email", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::Mails::Mail, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::Mails::Mail, :count)

              expect(page).to have_content("Email can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:mail, :email => "UniqueTitle") }

            it "should fail" do
              visit refinery.mails_admin_mails_path

              click_link "Add New Mail"

              fill_in "Email", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::Mails::Mail, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:mail, :email => "A email") }

          it "should succeed" do
            visit refinery.mails_admin_mails_path

            within ".actions" do
              click_link "Edit this mail"
            end

            fill_in "Email", :with => "A different email"
            click_button "Save"

            expect(page).to have_content("'A different email' was successfully updated.")
            expect(page).not_to have_content("A email")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:mail, :email => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.mails_admin_mails_path

            click_link "Remove this mail forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::Mails::Mail.count).to eq(0)
          end
        end

      end
    end
  end
end
