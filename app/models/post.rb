class Post < ActiveRecord::Base
	belongs_to :user
	acts_as_votable
	validates :title, :content, presence: true

	def score
		self.get_upvotes.size - self.get_downvotes.size
	end
end
