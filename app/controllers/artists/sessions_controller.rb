class Artists::SessionsController < Devise::SessionsController
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || artist_profile_path
  end
end