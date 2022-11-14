class CmAdmin::IntentPolicy < ApplicationPolicy

  def index?
    true
  end

  def update?
    index?
  end

  def destroy?
    index?
  end

  def utterances?
    index?
  end

  def responses?
    index?
  end

end