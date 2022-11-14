class CmAdmin::ChatbotPolicy < ApplicationPolicy

  def index?
    true
  end

  def update?
    index?
  end

  def destroy?
    index?
  end

end