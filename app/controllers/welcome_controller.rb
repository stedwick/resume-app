class WelcomeController < ApplicationController
  def index
    # Caching
    my_etag          = @person
    my_last_modified = @person.updated_at.utc
    my_expires_in    = 1.hour
    my_expires_in    = 1.minute if Rails.env.staging?
    my_expires_in    = 15.seconds if Rails.env.development?
    fresh_when etag: my_etag, last_modified: my_last_modified, public: true
    expires_in my_expires_in, public: true
    request.session_options[:skip] = true
  end
end
