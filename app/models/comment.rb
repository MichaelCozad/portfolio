class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  attr_accessible :approved, :author, :author_email, :author_url, :content, :referrer, :user_agent, :user_ip, :commentable_id, :commentable_type, :published

  scope :published, where(published: true)

  def publish!
    self.published = true
    save!
  end

end
