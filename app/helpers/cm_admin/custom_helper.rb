module CmAdmin::CustomHelper
  def user_collection(_model, _ctx)
    ::User.all.map{|user| [user.email, user.id]}
  end

  def chatbot_collection(_model, _ctx)
    ::Chatbot.all.map{|cb| [cb.name.titleize, cb.id]}
  end
end
  