class CmAdmin::ChatbotPolicy < ApplicationPolicy

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
  
end