# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
Rails.application.config.assets.precompile += %w[ BerkeleyMonoTrial-Regular.ttf ]
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w[ admin.js admin.css ]

# Add this line:
Rails.application.config.assets.precompile += %w[bootstrap-icons.scss]
Rails.application.config.assets.precompile += %w[ application.scss ]
