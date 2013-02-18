require "spec_helper"

describe "Logout" do
   context "when logged in" do
      let!(:user) { users(:carlos) }

      before do 
         login :with => user.email #helper para autentica in spec/helpers/integration.rb
         visit "/"
         click_link "Sair"
      end

      it "redirect to home page" do
         current_path.should eql(root_path)
      end

      it "omits user name" do
         page.should_not have_content(user.name)
      end

   end
end