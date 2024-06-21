prompt --workspace/credentials/app_172091_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 172091 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>172091
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(40866334107903404195)
,p_name=>'App 172091 Push Notifications Credentials'
,p_static_id=>'App_172091_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
