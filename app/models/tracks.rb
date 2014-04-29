class Tracks < ActiveRecord::Base
    def tracks_params
        params.require(:track).permit(
            :track_id,
            :created_at,
            :user_id,
            :duration,
            :commenatable,
            :state,
            :title,
            :permalink,
            :streamable,
            :downloadable,
            :track_type,
            :uri,
            :permalink_url,
            :stream_url,
            :artwork_url
        )
    end

    def self.fetch_tracks(token, uid)
        puts token, uid
        if token
            response = HTTParty.get(
                "https://api.soundcloud.com/users/#{uid}/tracks.json?oauth_token=#{token}"
            )
            if response.is_a?(:each)
            return response
        else
            puts 'token is nil'
            return token
        end
    end
    def self.fetch_track(token, track_id)
        if session[:token].nil?
            token = sessions[:token]
            response = HTTParty.get(
                "https://api.soundcloud.com/tracks/#{track_id}.json?oauth_token=#{token}"
            )
            if response && !response.success?
                if response.code == 401
                    puts 'must define token again'
                end
            else
                puts response.body, response.code, response.message
            end
        end
    end
end
