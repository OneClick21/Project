prompt --application/shared_components/user_interface/lovs/blood_request_blood_type
begin
--   Manifest
--     BLOOD_REQUEST.BLOOD_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>172091
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31046862039391443813)
,p_lov_name=>'BLOOD_REQUEST.BLOOD_TYPE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BLOOD_REQUEST'
,p_return_column_name=>'REQUESTID'
,p_display_column_name=>'BLOOD_TYPE'
,p_default_sort_column_name=>'BLOOD_TYPE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
