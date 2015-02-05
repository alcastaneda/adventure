class Comment <ActiveRecord::Base
acts_as_votable

belongs_to :user
belongs_to :post
has_many :replies
end