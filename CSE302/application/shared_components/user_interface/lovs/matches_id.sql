prompt --application/shared_components/user_interface/lovs/matches_id
begin
--   Manifest
--     MATCHES_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>276360
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(64905276395747141921)
,p_lov_name=>'MATCHES_ID'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'MATCHES'
,p_return_column_name=>'MATCH_ID'
,p_display_column_name=>'MATCH_ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'MATCH_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
