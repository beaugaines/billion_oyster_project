# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

NewBillOyst::Application.config.secret_key_base = ENV['APP_SECRET_TOKEN'] || 'b6c8e0314acf909c16cadcedc384b4d4a8ce2d517c5b9f6148ef126283c5a4ae262ab29e841d01c510d237711386dbdbf6d57f57014d0ecd9069e5721b0d07ba'
