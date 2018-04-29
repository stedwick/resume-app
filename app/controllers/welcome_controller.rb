class WelcomeController < ApplicationController
  def index
    # Caching: In production, cached and revalidated after one hour. On staging, revalidated after one minute and cleared after five. In development, revalidated every 15 seconds and cleared every minute.
    if Rails.env.development?
      updated_at_rounded = Time.now.utc.to_a
      updated_at_rounded[0] = updated_at_rounded[0] - (updated_at_rounded[0] % 60)
      updated_at_rounded = Time.utc *updated_at_rounded
      if @person.updated_at.utc != updated_at_rounded
        @person.touch time: updated_at_rounded
      end
    end
    if Rails.env.staging?
      updated_at_rounded = Time.now.utc.to_a
      updated_at_rounded[1] = updated_at_rounded[1] - (updated_at_rounded[1] % 5)
      updated_at_rounded = Time.utc *updated_at_rounded
      if @person.updated_at.utc != updated_at_rounded
        @person.touch time: updated_at_rounded
      end
    end
    my_etag          = @person
    my_last_modified = @person.updated_at.utc
    my_expires_in    = 1.hour
    my_expires_in    = 1.minute if Rails.env.staging?
    if Rails.env.development?
      # Enable/disable caching. By default caching is disabled.
      if Rails.root.join('tmp/caching-dev.txt').exist?
        my_expires_in = 15.seconds
      else
        my_expires_in = 1.seconds
      end
    end
    fresh_when etag: my_etag, last_modified: my_last_modified, public: true
    expires_in my_expires_in, public: true
    request.session_options[:skip] = true
  end
end
