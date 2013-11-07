class ProjectPolicy < ApplicationPolicy
attr_reader :user, :project

  def initialize(user, project)
    @user = user
    @project = project
  end

  def create?
   user.editor? if user.present?
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
