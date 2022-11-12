class CmAdmin::IntentPolicy < ApplicationPolicy

  def index?
    # @user.super_admin?
    true
  end
  
  def show?
    # @user.super_admin?
    true
  end
  
  def create?
    # @user.super_admin?
    true
  end
  
  def update?
    # @user.super_admin?
    true
  end
  
  def destroy?
    # @user.super_admin?
    true
  end

  def utterances?
    # @user.super_admin?
    true
  end

  def responses?
    # @user.super_admin?
    true
  end
  
end