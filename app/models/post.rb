class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :comments

  attr_accessible :body, :title, :published


  def publish!
    published = true
    save!
  end

end
