require "spec_helper"

describe Reply, "Assignments" do
   it "doesn't throw exception" do
      expect{
         Reply.create({
            :body => "Some body",
            :question_id => 1
         })
      }.to_not raise_error
   end
end