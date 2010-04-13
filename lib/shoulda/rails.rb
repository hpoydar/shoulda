require 'rubygems'
require 'active_support'
require 'shoulda'

require 'shoulda/active_record'     if defined? ActiveRecord::Base
require 'shoulda/action_controller' if defined? ActionController::Base
require 'shoulda/action_view'       if defined? ActionView::Base
require 'shoulda/action_mailer'     if defined? ActionMailer::Base

# Load in the 3rd party macros from vendorized plugins and gems
# Only works if installed as a plugin, since as a gem Rails.root
# is not initialized yet
if defined?(Rails.root) && Rails.root
  Shoulda.autoload_macros root, File.join("vendor", "{plugins,gems}", "*")
end
