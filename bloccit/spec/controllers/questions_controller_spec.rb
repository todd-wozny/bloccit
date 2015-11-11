require 'rails_helper'
 include RandomData

RSpec.describe QuestionsController, type: :controller do
  
   let (:my_question) { Question.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    it "assigns [my_question] to @questions" do
       get :index
 # #9
       expect(assigns(:questions)).to eq([my_question])
     end
   end

  
  
end


  

   

     