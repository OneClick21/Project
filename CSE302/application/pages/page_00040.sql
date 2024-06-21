prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>'STANDINGS'
,p_alias=>'STANDINGS2'
,p_step_title=>'STANDINGS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65985098874390151684)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65985099407646151685)
,p_plug_name=>'STANDINGS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62248885965786566278)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STANDINGS.TEAMS_TEAM_NAME as TEAMS_TEAM_NAME,',
'    STANDINGS.PLAYED as PLAYED,',
'    STANDINGS.WON as WON,',
'    STANDINGS.LOST as LOST,',
'    STANDINGS.NR as NR,',
'    STANDINGS.TIED as TIED,',
'    STANDINGS.NET_RR as NET_RR,',
'    STANDINGS.POINT as POINT ',
' from STANDINGS STANDINGS',
' ORDER BY POINT DESC, WON DESC, NET_RR DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'STANDINGS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(65985099501098151685)
,p_name=>'STANDINGS'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'FARDIN'
,p_internal_uid=>65985099501098151685
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985099931217151686)
,p_db_column_name=>'TEAMS_TEAM_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Teams Team Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985100322543151687)
,p_db_column_name=>'PLAYED'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Played'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985100790920151687)
,p_db_column_name=>'WON'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Won'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985101179568151687)
,p_db_column_name=>'LOST'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Lost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985101524880151687)
,p_db_column_name=>'NR'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985101968408151688)
,p_db_column_name=>'TIED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tied'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985102357018151688)
,p_db_column_name=>'NET_RR'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Net Rr'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65985102744648151688)
,p_db_column_name=>'POINT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Point'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65986564984256910035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'659865650'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TEAMS_TEAM_NAME:PLAYED:WON:LOST:NR:TIED:NET_RR:POINT'
);
wwv_flow_imp.component_end;
end;
/
