module RedmineUserSpecificTheme
end

require_dependency 'redmine_user_specific_theme/hooks/view_hooks'
require_dependency 'redmine_user_specific_theme/patches/user_preference_patch'
require_dependency 'redmine_user_specific_theme/patches/application_helper_patch'

UserPreference.prepend(RedmineUserSpecificTheme::Patches::UserPreferencePatch)
ApplicationHelper.prepend(RedmineUserSpecificTheme::Patches::ApplicationHelperPatch)
ActionView::Base.prepend(ApplicationHelper)
