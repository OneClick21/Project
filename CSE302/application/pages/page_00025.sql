prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'Venue InFo'
,p_alias=>'VENUE-INFO'
,p_page_mode=>'MODAL'
,p_step_title=>'Venue InFo'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers=image_width] img{',
'    width: 200px !important;',
'    height: 200px !important;',
'}'))
,p_step_template=>wwv_flow_imp.id(62248813793361566247)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_dialog_width=>'1500'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65673809823136133444)
,p_plug_name=>'Venue InFo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62248885965786566278)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT "VENUENAME","LOCATION","CAPACITY",sys.dbms_lob.getlength("VENUE_IMAGE")"VENUE_IMAGE"',
'from "VENUES" join "MATCHES" ON "VENUENAME" = "VENUES_VENUENAME"',
'WHERE "VENUENAME" = :P25_VENUENAME;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Venue InFo'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(65673809904393133444)
,p_name=>'Venue InFo'
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
,p_owner=>'LIKHON'
,p_internal_uid=>65673809904393133444
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65673810397926133445)
,p_db_column_name=>'VENUENAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Venue Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65673810761022133446)
,p_db_column_name=>'LOCATION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65673811177410133446)
,p_db_column_name=>'CAPACITY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Capacity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65673811514560133447)
,p_db_column_name=>'VENUE_IMAGE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Venue Image'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:VENUES:VENUE_IMAGE:VENUENAME::::::::'
,p_static_id=>'image_width'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65673973888201399033)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656739739'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VENUENAME:LOCATION:CAPACITY:VENUE_IMAGE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65664049088019081011)
,p_name=>'P25_VENUENAME'
,p_item_sequence=>20
,p_prompt=>'Venuename'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(62248966597946566313)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
