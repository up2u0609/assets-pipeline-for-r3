require "rails/railtie"

module SprocketsRails
  autoload :Bootstrap,      "sprockets_rails/bootstrap"
  autoload :Helpers,        "sprockets_rails/helpers"
  autoload :LazyCompressor, "sprockets_rails/compressors"
  autoload :NullCompressor, "sprockets_rails/compressors"
  autoload :StaticCompiler, "sprockets_rails/static_compiler"

  # TODO: Get rid of config.assets.enabled
  class Railtie < ::Rails::Railtie

    rake_tasks do
      load "sprockets_rails/assets.rake"
    end

    initializer "sprockets.environment", :group => :all do |app|
      config = app.config
      require 'sprockets'

      app.assets = Sprockets::Environment.new(app.root.to_s) do |env|
        env.logger  = ::Rails.logger
        env.version = ::Rails.env + "-#{1.0}"
        env.cache =  ::Rails.cache
      end

      path = File.join(Rails.public_path,  "manifest.yml")

      if File.exist?(path)
        config.assets.digests = YAML.load_file(path)
      end

      ActiveSupport.on_load(:action_view) do
        include ::SprocketsRails::Helpers::RailsHelper
        app.assets.context_class.instance_eval do
          include ::SprocketsRails::Helpers::IsolatedHelper
          include ::SprocketsRails::Helpers::RailsHelper
        end
      end
    end

    # We need to configure this after initialization to ensure we collect
    # paths from all engines. This hook is invoked exactly before routes
    # are compiled, and so that other Railties have an opportunity to
    # register compressors.
    config.after_initialize do |app|
      SprocketsRails::Bootstrap.new(app).run
    end
  end
end

