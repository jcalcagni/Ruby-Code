# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_journal_session',
  :secret      => 'c1734d190170353012bdfcbaefc1f84e0b4b7e03627bcd93126bae00d8ca56539401e06677aa3faeb9a6182615e528e6e6400c791e988efb196e3c89c0388d06'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
