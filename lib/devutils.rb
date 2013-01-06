require 'thor'
require 'thor/group'

class Commands < Thor
  include Thor::Actions
  
  desc 'init PROJECT_NAME', 'initialize a new project named PROJECT_NAME'
  method_option :metrics,
    :default => true,
    :type    => :boolean,
    :desc    => 'install tools for code quality analyzing'
  method_option :docs,
    :default => true,
    :type    => :boolean,
    :desc    => 'install yard for documentation'
  method_option :guard,
    :default => true,
    :type    => :boolean,
    :desc    => 'install guard for automated testing'
  def init(project_name)
    @project_name = project_name
    Commands.source_root(File.expand_path('../..', __FILE__))
    directory('template', project_name)
  end

  private

  attr_reader :project_name
end
