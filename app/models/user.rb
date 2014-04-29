class User < ActiveRecord::Base

    def user_params
        params.require(:user).permit(:name, :nickname, :image, :provider, :uid,
                                     :token)
    end

    def self.create_with_omniauth(omniauth_hash)
            create! do |created_user|
                created_user.provider = omniauth_hash['provider']
                created_user.uid = omniauth_hash['uid']
                if omniauth_hash['info']
                    created_user.name = omniauth_hash['info']['name'] || ''
                    created_user.nickname = omniauth_hash['info']['nickname'] || ''
                    created_user.image = omniauth_hash['info']['image'] || ''
                    created_user.name = omniauth_hash['info']['location'] || ''
                end
                if omniauth_hash['credentials']
                    created_user.token = omniauth_hash['credentials']['token']
                end
            end
    end
end
