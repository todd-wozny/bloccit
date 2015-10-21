require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question") }
   let(:answers) { Answer.create!(body: 'Answer Body', question: question) }
 
   describe "attributes" do
     it "should respond to body" do
       expect(answers).to respond_to(:body)
     end
   end
end
   
