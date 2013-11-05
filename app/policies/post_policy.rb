class PostPolicy < ApplicationPolicy
attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end


  def create?
   user.author? || user.editor? if user.present?
  end



  def update?
    post.authored_by?(user) || user.editor? if user.present?
  end
  alias_method :destroy?, :update?



  def publish?
    user.editor? if user.present?
  end


  Scope = Struct.new(:user, :scope) do
    def resolve
      if user.present? && user.editor?
        scope
      elsif user.present? && user.author?
        scope.where("author_id = ? OR published = ?", user.id, true)
      else
        scope.where(published: true)
      end
    end
  end
end
