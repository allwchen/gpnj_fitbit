OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '268289346403-1mvld3alojr284fc7j3iba465v97m2g4.apps.googleusercontent.com', '3aeJXKNlQsD9LDffftRPI9di',
    {
      client_options: {
        ssl: {
          ca_file: Rails.root.join("cacert.pem").to_s
        }
      },
      skip_jwt: true
    }
end
