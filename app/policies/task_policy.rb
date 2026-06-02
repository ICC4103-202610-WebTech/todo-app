class TaskPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def complete?
    record.user == user
  end

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.where(user: user)
    end
  end
end
