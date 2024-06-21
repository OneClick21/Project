prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_name=>'Umpire Report'
,p_alias=>'UMPIRE-REPORT'
,p_step_title=>'Umpire Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65384436028792093810)
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
 p_id=>wwv_flow_imp.id(65384436632226093811)
,p_plug_name=>'Umpire Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62248885965786566278)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select "UMPIRE_ID","NAME","AGE",sys.dbms_lob.getlength("UMPIRE_PHOTO")"UMPIRE_PHOTO","NATIONALITY","FILE_NAME","MIME_TYPE","UPDATE_DATE","CHARACTER_SET","MATCHES_MATCH_ID"from "UMPIRES"'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Umpire Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(65384436764574093811)
,p_name=>'Umpire Report'
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
,p_owner=>'FARIHA'
,p_internal_uid=>65384436764574093811
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384437023750093878)
,p_db_column_name=>'UMPIRE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Umpire ID'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384437435298093878)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384437844557093878)
,p_db_column_name=>'AGE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384438287707093879)
,p_db_column_name=>'UMPIRE_PHOTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Umpire Photo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'IMAGE:UMPIRES:UMPIRE_PHOTO:UMPIRE_ID::::::::'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384438654972093879)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384439070454093879)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384439432300093880)
,p_db_column_name=>'MIME_TYPE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mime Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384439820659093880)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Update Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384440248038093880)
,p_db_column_name=>'CHARACTER_SET'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Character Set'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65384440637414093880)
,p_db_column_name=>'MATCHES_MATCH_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Matches Match'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(64905276395747141921)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65384981185482099296)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'653849812'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UMPIRE_ID:NAME:AGE:UMPIRE_PHOTO:NATIONALITY:FILE_NAME:MIME_TYPE:UPDATE_DATE:CHARACTER_SET:MATCHES_MATCH_ID'
);
wwv_flow_imp.component_end;
end;
/
