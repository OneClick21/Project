prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>276360
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'Players Performance'
,p_alias=>'PLAYERS-PERFORMANCE'
,p_step_title=>'Players Performance'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(62807690736803892445)
,p_plug_name=>'PLAYER'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(62248895744232566282)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(62807691162762892449)
,p_name=>'Batting Performance'
,p_template=>wwv_flow_imp.id(62248895744232566282)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BATTING_PERFORMANCE.PLAYERS_PLAYER_ID as PLAYERS_PLAYER_ID,',
'    BATTING_PERFORMANCE.MATCH_ID as MATCH_ID,',
'    BATTING_PERFORMANCE.BALL_PLAYED as BALL_PLAYED,',
'    BATTING_PERFORMANCE.RUNS as RUNS,',
'    BATTING_PERFORMANCE."4s" as "4s",',
'    BATTING_PERFORMANCE."6s" as "6s" ',
' from BATTING_PERFORMANCE BATTING_PERFORMANCE',
' WHERE PLAYERS_PLAYER_ID = :P41_PLAYER_ID and MATCH_ID = :P41_MATCH_ID;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(62248934027130566298)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62807691293346892450)
,p_query_column_id=>1
,p_column_alias=>'PLAYERS_PLAYER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Player Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(63020884471209469992)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685002366163601)
,p_query_column_id=>2
,p_column_alias=>'MATCH_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Match Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685175858163602)
,p_query_column_id=>3
,p_column_alias=>'BALL_PLAYED'
,p_column_display_sequence=>30
,p_column_heading=>'Ball Played'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685243037163603)
,p_query_column_id=>4
,p_column_alias=>'RUNS'
,p_column_display_sequence=>40
,p_column_heading=>'Runs'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685341738163604)
,p_query_column_id=>5
,p_column_alias=>'4s'
,p_column_display_sequence=>50
,p_column_heading=>'4s'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685409945163605)
,p_query_column_id=>6
,p_column_alias=>'6s'
,p_column_display_sequence=>60
,p_column_heading=>'6s'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66014172892373105734)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62248908156054566287)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(62248792319835566236)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(62248970657412566315)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(66015685597433163606)
,p_name=>'Balling Performance'
,p_template=>wwv_flow_imp.id(62248895744232566282)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BALLING_PERFORMANCE.PLAYERS_PLAYER_ID as PLAYERS_PLAYER_ID,',
'    BALLING_PERFORMANCE.MATCH_ID as MATCH_ID,',
'    BALLING_PERFORMANCE.OVERS as OVERS,',
'    BALLING_PERFORMANCE.RUNS as RUNS,',
'    BALLING_PERFORMANCE.WICKETS as WICKETS,',
'    BALLING_PERFORMANCE."4s" as "4s",',
'    BALLING_PERFORMANCE."6s" as "6s" ',
' from BALLING_PERFORMANCE BALLING_PERFORMANCE',
' WHERE PLAYERS_PLAYER_ID = :P41_PLAYER_ID AND MATCH_ID = :P41_MATCH_ID;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(62248934027130566298)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685662293163607)
,p_query_column_id=>1
,p_column_alias=>'PLAYERS_PLAYER_ID'
,p_column_display_sequence=>10
,p_column_heading=>'Player Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(63020884471209469992)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685738356163608)
,p_query_column_id=>2
,p_column_alias=>'MATCH_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Match Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685825411163609)
,p_query_column_id=>3
,p_column_alias=>'OVERS'
,p_column_display_sequence=>30
,p_column_heading=>'Overs'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015685984925163610)
,p_query_column_id=>4
,p_column_alias=>'RUNS'
,p_column_display_sequence=>40
,p_column_heading=>'Runs'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015686096454163611)
,p_query_column_id=>5
,p_column_alias=>'WICKETS'
,p_column_display_sequence=>50
,p_column_heading=>'Wickets'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015686150927163612)
,p_query_column_id=>6
,p_column_alias=>'4s'
,p_column_display_sequence=>60
,p_column_heading=>'4s'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(66015686292601163613)
,p_query_column_id=>7
,p_column_alias=>'6s'
,p_column_display_sequence=>70
,p_column_heading=>'6s'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62807690942823892447)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(62807690736803892445)
,p_button_name=>'search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(62248969038767566314)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(62807690854750892446)
,p_name=>'P41_PLAYER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(62807690736803892445)
,p_prompt=>'Player Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PLAYERS.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62248966597946566313)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66015686372151163614)
,p_name=>'P41_MATCH_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(62807690736803892445)
,p_prompt=>'Match Id'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MATCHES_ID'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(62248966597946566313)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp.component_end;
end;
/
