class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::History::Trackable

  paginates_per 5
  belongs_to :user
  has_many :comments

  field :title, type: String
  field :body, type: String

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 1 }

  track_history   on: [:fields], modifier_field: :user
end
