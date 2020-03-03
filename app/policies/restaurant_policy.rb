class RestaurantPolicy < ApplicationPolicy
  # record == whatever you call authorize on (authorize @restaurant)
  # user == current_user
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
    !user.nil?
  end

  def destroy?
    update?
  end
end
