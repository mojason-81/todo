class TaskPolicy < ApplicationPolicy
  def index?
    true
  end

  def new?
    true
  end

  def update?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end

  class Scope < Scope
    # attr_reader :user, :scope

    # def initialize(user, scope)
    #   @user  = user
    #   @scope = scope
    # end

    def resolve
      scope.where(user: user)
    end
  end
end
