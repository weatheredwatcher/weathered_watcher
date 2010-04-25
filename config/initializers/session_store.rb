# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_weathered_watcher_session',
  :secret      => '570cd003e954ec1c5f89d6bd636f44f0eae15a2ec4dce4eac55efb9ccce379fc2e4793a20413bcfe42d1ff4d6695cddaab349eebbef0509c452e0a3d72db9e1e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
