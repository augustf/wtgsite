# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
#ActionController::Base.session = {
#  :key    => '_wtgsite_session',
#  :secret => 'a726dc2565c8012146d6b38f6ae359c03420c364f11bbfdedf82a2fdf7f56af34b9cef27cf9d8679033bd33664690e3b786b5af02ac1d5c2d03cb36105cd709c'
#}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
Rails.application.config.session_store :active_record_store


