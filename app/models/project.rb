class Project < ActiveRecord::Base
  attr_accessible :name, :technologies_used, :published, :title, :body
  has_many :comments, as: :commentable

  validates :technologies_used, presence: true
  validates :name, length: { in: 4..255 }

  scope :published, where(published: true)

  def publish!
    self.published = true
    save!
  end


end
