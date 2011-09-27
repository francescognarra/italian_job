require "italian_job"

require "rspec/rails/extensions"

require "active_model"

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |f| require f }

I18n.load_path << File.dirname(__FILE__) + "/support/locale.yml"

RSpec.configure do |config|
  config.before do
    I18n.locale = :en
  end
end
