class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action { @person = Person.find_by_name "Philip Brocoum" }
end
