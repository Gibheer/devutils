require 'thor'
require 'thor/group'

class Init < Thor::Group
  include Thor::Actions

  # needs to be given for a new project
  argument :project_name

  desc 'initialize a new project'
  def init
    Init.source_root(File.expand_path('../../', __FILE__))
    directory('template', project_name)
  end
end

class Commands < Thor
  register(Init, 'init', 'init PROJECT_NAME', 'initialize a new project')
end
