require 'TaskApi/rails'

module TaskApi
  class Engine < ::Rails::Engine
    isolate_namespace TaskApi
  end
end