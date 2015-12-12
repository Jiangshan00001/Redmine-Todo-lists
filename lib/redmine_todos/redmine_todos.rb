
require 'redmine_todos/hooks/model_issue_hook'

Rails.configuration.to_prepare do  
	require 'redmine_todos/patches/issue_patch'
	# require 'redmine_todos/patches/projects_helper_patch_todo'
end

module RedmineTodos

  def self.settings() Setting[:plugin_redmine_todos].blank? ? {} : Setting[:plugin_redmine_todos] end

end

