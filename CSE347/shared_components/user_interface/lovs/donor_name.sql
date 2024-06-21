prompt --application/shared_components/user_interface/lovs/donor_name
begin
--   Manifest
--     DONOR.NAME
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
 p_id=>wwv_flow_imp.id(31046861381031443812)
,p_lov_name=>'DONOR.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DONOR'
,p_return_column_name=>'DONORID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
