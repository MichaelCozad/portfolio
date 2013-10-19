class PostPolicy < ApplicationPolicy
  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end

    def create?
    user.admin? or not post.published?
    end
  end
end
