# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lldata_session',
  :secret      => 'fd11f731075d5404c4361160aa14dffb7d05462ad9c5ed449513af615276d743b27dcea2ec6d68294fcc1365032ccd060a89dea4ac63b247841bed4e8dad80e8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
