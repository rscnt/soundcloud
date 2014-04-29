class SessionsController < ApplicationController
    def new
        redirect_to '/auth/soundcloud'
    end

    def create
        auth = request.env['omniauth.auth']
        user = User.where(:provider => auth['provider'],
                      :uid => auth['uid']).first || User.create_with_omniauth(auth)
        session[:uid] = user.uid
        session[:token] = user.token
        redirect_to '/tracks/', notice => 'Signed in!'
    end


    def destroy
        reset_session
        redirect_to root_url, notice: 'Signed out!'
    end
end
