# require_relative 'boot'

# require 'rails/all'

# # Require the gems listed in Gemfile, including any gems
# # you've limited to :test, :development, or :production.
# Bundler.require(*Rails.groups)

# module Myapp
#   class Application < Rails::Application
#     # Initialize configuration defaults for originally generated Rails version.
#     config.load_defaults 5.2

#     # Settings in config/environments/* take precedence over those specified here.
#     # Application configuration can go into files in config/initializers
#     # -- all .rb files in that directory are automatically loaded after loading
#     # the framework and any gems in your application.
#   end
# end

require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module Myapp
class Application < Rails::Application
     config.load_defaults 5.2
     config.middleware.insert_before 0, Rack::Cors do
       allow do
         origins "http://localhost:5050"	# リクエストを許可したいURL
         resource "*",						# リクエストを許可するリソース（データ）
           headers: :any,				    # リクエストを許可するヘッダー
           methods: [:get, :post, :patch]    # リクエストを許可するメソッド
       end
     end
   end
end