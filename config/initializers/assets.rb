# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'



# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( sub/main.js )
#Rails.application.config.assets.precompile += %w( sub/jquery-1.7.2.min.js )
Rails.application.config.assets.precompile += %w( sub/jquery-ui-1.8.21.custom.min.js )
Rails.application.config.assets.precompile += %w( player.js )
Rails.application.config.assets.precompile += %w( baseplayer.js baseplayer.css )
Rails.application.config.assets.precompile += %w( songs.js )
Rails.application.config.assets.precompile += %w( users.css )
Rails.application.config.assets.precompile += %w( users.js )
#Rails.application.config.assets.precompile += %w( inplayer.js )

Rails.application.config.assets.precompile += %w( initaudioplayer-1.css )

#%w( controller_songs controller_users controller_review ).each do |controller|
  #Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.css"]
#end

