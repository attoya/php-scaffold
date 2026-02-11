{*
*
* @notice Only add here for items that should be for both layout.html and plain.html
* @note   This is used as a non-body tag to prevent issues by linking everything to body tag.
*
*}
{*
url_session_basic_logout="{# url 'session_basic_logout' #}"
url_session_oauth_logout="{# url 'session_oauth_logout' #}"
user_id="{$user.id}"
user_company_id="{$user.company_id}"
user_company_location_id="{$user.company_location_id}"
deploy_datetime="{$deploy_datetime}"
deploy_release="{$deploy_release}"
deploy_build="{$deploy_build}"
server_current="{$server_current}"
environment="{$environment}"
system_tag="{$system_tag}"
view_lock="{$view_lock}"
url_session_poll="{# url 'session_poll' #}"
url_message_blowout_new="{# url 'message_blowout_new' #}"
notify_toast_message="{$component_notify_toast.message}"
notify_toast_message_type="{$component_notify_toast.notify_toast_message_type}"
notify_toast_use_type="{$component_notify_toast.use_type}"
notify_push_meta_vapid_key="{# component_notify_push_meta 'vapid_key' #}"
url_drive_uploader="{# url 'drive_uploader' #}"
drive_file_max_size="{$drive_file_max_size}"
url_markdown_to_html="{# url 'markdown_to_html' #}"
*}
debug="{$smarty.const.DEBUG}"
debug_dev="{$smarty.const.DEBUG_DEV}"
debug_view="{$smarty.const.DEBUG_VIEW}"
debug_ajax="{$smarty.const.DEBUG_AJAX}"
debug_form="{$smarty.const.DEBUG_FORM}"
debug_model="{$smarty.const.DEBUG_MODEL}"
debug_trigger="{$smarty.const.DEBUG_TRIGGER}"
debug_redirect="{$smarty.const.DEBUG_REDIRECT}"
debug_database="{$smarty.const.DEBUG_DATABASE}"
debug_exception="{$smarty.const.DEBUG_EXCEPTION}"
debug_permission="{$smarty.const.DEBUG_PERMISSION}"