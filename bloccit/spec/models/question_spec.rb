require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question", body: "New Question") }
 
   describe "attributes" do
 # #2
     it "should respond to title" do
       expect(question).to respond_to(:title)
     end
 # #3
     it "should respond to body" do
       expect(question).to respond_to(:body)
     end
   end
end
