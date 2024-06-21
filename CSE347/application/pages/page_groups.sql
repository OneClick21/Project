prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 172091
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>172091
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(3435945226227628731)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(40866327093266404187)
,p_group_name=>'User Settings'
);
wwv_flow_imp.component_end;
end;
/
