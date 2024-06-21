prompt --application/shared_components/user_interface/lovs/sign_up_name_1
begin
--   Manifest
--     SIGN_UP.NAME_1
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
 p_id=>wwv_flow_imp.id(16957872621082605123)
,p_lov_name=>'SIGN_UP.NAME_1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SIGN_UP'
,p_return_column_name=>'USERNAME'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
