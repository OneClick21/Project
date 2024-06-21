prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>172091
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Donor Responses'
,p_alias=>'DONOR-RESPONSES'
,p_step_title=>'Donor Responses'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#bg{',
'background-image: url(#APP_FILES#8.jpg);',
'width: 100%; ',
'height: 850px;',
'background-size:cover;',
'background-repeat: no-repeat;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41531281876012838538)
,p_plug_name=>'New'
,p_region_name=>'bg'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3435354875481628565)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41487091646734854024)
,p_plug_name=>'Requested Blood'
,p_parent_plug_id=>wwv_flow_imp.id(41531281876012838538)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3435345079399628558)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'BLOOD_REQUEST'
,p_query_where=>'SIGN_UP_USERNAME=APEX_CUSTOM_AUTH.GET_USERNAME'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Requested Blood'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'<h3><b>My Requests</b></h3>'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41487091781842854025)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LIKHON'
,p_internal_uid=>41487091781842854025
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487091882197854026)
,p_db_column_name=>'REQUESTID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Requestid'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::P12_NEW:#REQUESTID#'
,p_column_linktext=>'#REQUESTID#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487091964421854027)
,p_db_column_name=>'BLOOD_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Blood Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092077233854028)
,p_db_column_name=>'REQUEST_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Request Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092119013854029)
,p_db_column_name=>'REQUESTSTATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Requeststatus'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092278143854030)
,p_db_column_name=>'MEDICAL_CONDITION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Medical Condition'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092367293854031)
,p_db_column_name=>'HOSPITAL_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Hospital Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092418772854032)
,p_db_column_name=>'SIGN_UP_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Sign Up Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092545354854033)
,p_db_column_name=>'SIGN_UP_USERNAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Sign Up Username'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41498756684432332668)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'414987567'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REQUESTID:BLOOD_TYPE:REQUEST_DATE:REQUESTSTATUS:MEDICAL_CONDITION:HOSPITAL_NAME:SIGN_UP_ID:SIGN_UP_USERNAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41487092649941854034)
,p_plug_name=>'Donor Responses'
,p_parent_plug_id=>wwv_flow_imp.id(41531281876012838538)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3435345079399628558)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    RESPONSE.RESPONSEID as RESPONSEID,',
'    RESPONSE.BLOOD_REQUEST_REQUESTID as BLOOD_REQUEST_REQUESTID,',
'    DONOR.DONORID as DONORID,',
'    DONOR.NAME as NAME,',
'    DONOR.DATEOFBIRTH as DATEOFBIRTH,',
'    DONOR.GENDER as GENDER,',
'    DONOR.PHONE_NUMBER as PHONE_NUMBER,',
'    DONOR.EMAIL as EMAIL,',
'    DONOR.BLOODTYPE as BLOODTYPE,',
'    DONOR.LASTDONATIONDATE as LASTDONATIONDATE,',
'    DONOR.ADDRESS as ADDRESS',
'FROM',
'    DONOR,',
'    RESPONSE',
'WHERE',
'    RESPONSE.DONOR_DONORID = DONOR.DONORID',
'    and BLOOD_REQUEST_REQUESTID = :P12_NEW;',
'    ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Donor Responses'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'<h3><b>Donor Response</b></h3>'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(41487092765919854035)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'LIKHON'
,p_internal_uid=>41487092765919854035
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092829524854036)
,p_db_column_name=>'RESPONSEID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Responseid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487092921579854037)
,p_db_column_name=>'BLOOD_REQUEST_REQUESTID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Blood Request Requestid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093032011854038)
,p_db_column_name=>'DONORID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Donorid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093120970854039)
,p_db_column_name=>'NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093246095854040)
,p_db_column_name=>'DATEOFBIRTH'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Dateofbirth'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093388651854041)
,p_db_column_name=>'GENDER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Gender'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093461624854042)
,p_db_column_name=>'PHONE_NUMBER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Phone Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093508144854043)
,p_db_column_name=>'EMAIL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093671371854044)
,p_db_column_name=>'BLOODTYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Bloodtype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093795159854045)
,p_db_column_name=>'LASTDONATIONDATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Lastdonationdate'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(41487093851355854046)
,p_db_column_name=>'ADDRESS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(41499381716195350590)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'414993818'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RESPONSEID:BLOOD_REQUEST_REQUESTID:DONORID:NAME:DATEOFBIRTH:GENDER:PHONE_NUMBER:EMAIL:BLOODTYPE:LASTDONATIONDATE:ADDRESS'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(41531280540010838525)
,p_name=>'P12_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(41487092649941854034)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
