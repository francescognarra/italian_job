require 'active_record'
require "italian_job/validators"
require "italian_job/validators/codice_fiscale_format"
require "italian_job/validators/partita_iva_format"

module ItalianJob
  require 'italian_job/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3
end
