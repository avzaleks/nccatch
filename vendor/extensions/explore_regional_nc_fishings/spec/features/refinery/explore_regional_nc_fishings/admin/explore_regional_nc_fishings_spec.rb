# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "ExploreRegionalNcFishings" do
    describe "Admin" do
      describe "explore_regional_nc_fishings", type: :feature do
        refinery_login

        describe "explore_regional_nc_fishings list" do
          before do
            FactoryGirl.create(:explore_regional_nc_fishing, :link => "UniqueTitleOne")
            FactoryGirl.create(:explore_regional_nc_fishing, :link => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.explore_regional_nc_fishings_admin_explore_regional_nc_fishings_path
            expect(page).to have_content("UniqueTitleOne")
            expect(page).to have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.explore_regional_nc_fishings_admin_explore_regional_nc_fishings_path

            click_link "Add New Explore Regional Nc Fishing"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Link", :with => "This is a test of the first string field"
              expect { click_button "Save" }.to change(Refinery::ExploreRegionalNcFishings::ExploreRegionalNcFishing, :count).from(0).to(1)

              expect(page).to have_content("'This is a test of the first string field' was successfully added.")
            end
          end

          context "invalid data" do
            it "should fail" do
              expect { click_button "Save" }.not_to change(Refinery::ExploreRegionalNcFishings::ExploreRegionalNcFishing, :count)

              expect(page).to have_content("Link can't be blank")
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:explore_regional_nc_fishing, :link => "UniqueTitle") }

            it "should fail" do
              visit refinery.explore_regional_nc_fishings_admin_explore_regional_nc_fishings_path

              click_link "Add New Explore Regional Nc Fishing"

              fill_in "Link", :with => "UniqueTitle"
              expect { click_button "Save" }.not_to change(Refinery::ExploreRegionalNcFishings::ExploreRegionalNcFishing, :count)

              expect(page).to have_content("There were problems")
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:explore_regional_nc_fishing, :link => "A link") }

          it "should succeed" do
            visit refinery.explore_regional_nc_fishings_admin_explore_regional_nc_fishings_path

            within ".actions" do
              click_link "Edit this explore regional nc fishing"
            end

            fill_in "Link", :with => "A different link"
            click_button "Save"

            expect(page).to have_content("'A different link' was successfully updated.")
            expect(page).not_to have_content("A link")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:explore_regional_nc_fishing, :link => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.explore_regional_nc_fishings_admin_explore_regional_nc_fishings_path

            click_link "Remove this explore regional nc fishing forever"

            expect(page).to have_content("'UniqueTitleOne' was successfully removed.")
            expect(Refinery::ExploreRegionalNcFishings::ExploreRegionalNcFishing.count).to eq(0)
          end
        end

      end
    end
  end
end
