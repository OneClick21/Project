prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>172091
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3435251916183628514)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3435951962413628737)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(5726667484246851976)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-card'
,p_security_scheme=>wwv_flow_imp.id(3435944959812628731)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6083763081258304632)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Information'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(3435944959812628731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11204743014228944115)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Blank'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_security_scheme=>wwv_flow_imp.id(3435944959812628731)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16979137307293029280)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'My Request'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31046856090560443806)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Requests'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41260302871732678856)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'User Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-address-card'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(41481316049188781027)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Donor Responses'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp.component_end;
end;
/
