Rails::Application::Configuration.class_eval do
  attr_accessor :assets
  def assets
    assts = ActiveSupport::OrderedOptions.new
    assts.enabled                  = false
    assts.paths                    = []
    assts.precompile               = [ Proc.new{ |path| ['.js', '.css'].exclude? File.extname(path) },
                                         /(?:\/|\\|\A)application\.(css|js)$/ ]
    assts.prefix                   = "/assets"
    assts.version                  = ''
    assts.debug                    = false
    assts.compile                  = true
    assts.digest                   = false
    assts.manifest                 = nil
    assts.cache_store              = [ :file_store, "#{File.dirname(__FILE__)}/tmp/cache/assets/" ]
    assts.js_compressor            = nil
    assts.css_compressor           = nil
    assts.initialize_on_precompile = true
    @assets ||= assts
    @assets
  end
end
Rails::Application.class_eval do
  attr_accessor :assets
end
require "sprockets_rails/railtie"

