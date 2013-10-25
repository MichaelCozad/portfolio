class CommentPolicy < ApplicationPolicy
attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end


  def update?
    user.editor? if user.present?
  end


  def publish?
    user.editor? if user.present?
  end


  def destroy?
    user.editor? if user.present?
  end


  Scope = Struct.new(:user, :scope) do
    def resolve
      if user.present? && user.editor?
        scope.all
      else
        scope.where(published: true)
      end
    end
  end
end
