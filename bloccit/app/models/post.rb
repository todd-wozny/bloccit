class Post < ActiveRecord::Base
    belongs_to :topic
    has_many :comments, dependent: :destroy
    
    # Add 3 lines
   validates :title, length: { minimum: 5 }, presence: true
   validates :body, length: { minimum: 20 }, presence: true
   validates :topic, presence: true

end
