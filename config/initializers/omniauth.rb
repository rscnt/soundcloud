# not the smart way to do it.

Rails::application::config.middleware.use OmniAuth::Builder do
    OMNIAUTH_CONFIG = YAML.load_file("#{Rails.root}/config/omniauth_secrets.yml")[Rails.env]
    provider "soundcloud", OMNIAUTH_CONFIG['soundclould_client_id'], OMNIAUTH_CONFIG['soundcloud_client_secret']
end
