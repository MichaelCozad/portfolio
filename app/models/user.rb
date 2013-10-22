class User < ActiveRecord::Base
  has_many :posts, foreign_key: "author_id"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body

  scope :published, where(published: true)

  def author?
    role == 'author'
  end

  def editor?
    role == 'editor'
  end


end
