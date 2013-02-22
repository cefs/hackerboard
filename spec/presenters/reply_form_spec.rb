require "spec_helper"

describe ReplyFormPresenter do

      let(:user) { mock_model(User) }
      let(:question) { mock_model(Question) }
      let(:reply) { mock_model(Reply) }


      context "when user is present" do
         subject{
            ReplyFormPresenter.new(user, question, reply)
         }

         its(:partial) { 
            should eql(:partial => "replies/form", :locals => {:question => question, :reply => reply})
         }
      end

      context "when user is missing" do
         subject{
            ReplyFormPresenter.new(nil, question, reply)
         }

         its(:partial) { 
            should eql(:partial => "replies/require_login")
         }
      end
end