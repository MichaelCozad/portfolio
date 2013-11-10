class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :comments, as: :commentable

  attr_accessible :body, :title, :published

  scope :published, where(published: true)

  self.per_page = 5

  def publish!
    self.published = true
    save!
  end

  def authored_by?(user)
    author == user
  end

end
