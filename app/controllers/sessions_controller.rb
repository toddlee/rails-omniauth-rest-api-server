class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    @auth = Authorization.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    if @auth
      raise auth_hash.to_yaml
      # render :text => "Welcome back #{@auth.user.name}! You have already signed up."
    else
      user = User.new :name => auth_hash["info"]["name"], :email => auth_hash["info"]["email"]
      user.authorizations.build :provider => auth_hash["provider"], :uid => auth_hash["uid"]
      user.save
      render :text => "Hi #{user.name}! You've signed up."
    end
  end

  def failure
  end
end
