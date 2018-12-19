class UserPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
      if user.admin?
        scope.all
      else
        scope.none
      end
    end
  end

  def edit?
    user.admin
  end

  def update?
    user.admin
  end

  def show?
    user.admin
  end

end
