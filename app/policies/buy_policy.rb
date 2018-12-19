class BuyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
      scope.where(user: user)
      end
    end
  end

  def show?
    true
  end

  def create?
    user.kyc_status
  end

  def index?
    true
  end

  def update?
     record.user == user || user.admin
  end



end
