class Comment <ActiveRecord::Base

  belongs_to :commenter, class_name: "User"
  belongs_to :post
  has_many :replies
  has_many :votes, :as => :votable

  def total_votes
    self.votes.where(vote:true).count - self.votes.where(vote:false).count
  end

end





