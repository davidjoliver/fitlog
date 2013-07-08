Fitlog::Application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.assets.debug = false
end
# Fitlog::Application.configure do
#   config.cache_classes = true
#   config.eager_load = false
#   config.serve_static_assets  = true
#   config.static_cache_control = "public, max-age=3600"
#   config.consider_all_requests_local       = true
#   config.action_controller.perform_caching = false
#   config.action_dispatch.show_exceptions = false
#   config.action_controller.allow_forgery_protection = false
#   config.action_mailer.delivery_method = :test
#   config.active_support.deprecation = :stderr
#   config.assets.debug = true
# end
