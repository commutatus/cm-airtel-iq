class Current < ActiveSupport::CurrentAttributes
  attribute :user, :request_id, :user_agent, :ip_address, :referrer_url

  resets { Time.zone = 'Mumbai' }

  def user=(user)
    super
  end
end