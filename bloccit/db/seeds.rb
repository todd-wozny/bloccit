include RandomData
 
 
 50.times do

   Question.create!(

     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 questions = Question.all
 
 
 puts "Seed finished"
 puts "#{Question.count} questions created"
 