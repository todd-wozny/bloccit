class SponsoredPostsController < ApplicationController
     def index
   #  @topics = Topic.all
   end
   
   def show
    @sponsored_post = SponsoredPost.find(params[:id])
   end
   
    def edit
      @sponsored_post = SponsoredPost.find(params[:id])
  end
   
   def new
      @topic = Topic.find(params[:topic_id])
    @sponsored_post = SponsoredPost.new
  end
  
  def create
 # #9
     @sponsored_post = SponsoredPost.new
     @sponsored_post.title = params[:sponsored_post][:title]
     @sponsored_post.body = params[:sponsored_post][:body]
     @sponsored_post.price = params[:sponsored_post][:price]
     @topic = Topic.find(params[:topic_id])
 # #35
     @sponsored_post.topic = @sponsored_post

 # #10
     if @sponsored_post.save
 # #11
       flash[:notice] = "Sponsored Post was saved."
      redirect_to [@topic, @sponsored_post]
     else
 # #12
       flash[:error] = "There was an error saving the post. Please try again."
       render :new
     end
   end
    
end
