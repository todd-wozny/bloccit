include RandomData

# Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all
 
 # Create SponsoredPosts
 15.times do
 # #1
   SponsoredPost.create!(
 # #2
    # sponsored_post:  sponsored_posts.sample,
     title:  RandomData.random_sentence,
     price:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 sponsored_posts = SponsoredPost.all
 
 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{SponsoredPost.count} Sponsored Posts created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"