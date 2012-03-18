class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, :type => String
  field :body, :type => String
  validates_presence_of :title
end
