require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'pdfkit'

Bundler.require(*Rails.groups)

module Roka
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.middleware.use 'PDFKit::Middleware', print_media_type: true
  end
end
