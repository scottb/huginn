# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_huginn_session',
  :secret      => '3b4817fb8d4ae83d9140e88662b2ed9b26efd593136e7174a7d8403409968ea3b8358646f4dc8e5d0e7ca7bcf78923724f14c13244e4e386c9809ec72f0e01dc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
