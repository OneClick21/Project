prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'BALL INFO'
,p_alias=>'BALL-INFO'
,p_page_mode=>'MODAL'
,p_step_title=>'BALL INFO'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'td[headers=image_width] img{',
'    width: 100px !important;',
'    height: 100px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65806005638475437202)
,p_plug_name=>'BALL INFO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62248885965786566278)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "PLAYER_ID","NAME",',
'"PLAYER_TYPE",',
'sys.dbms_lob.getlength("PLAYER_IMAGE")"PLAYER_IMAGE",',
'"TEAMS_TEAM_NAME",',
'"OVERS",',
'"RUNS",',
'"WICKETS",',
'"MATCH_ID"',
'',
'from "PLAYERS" JOIN "BALLING_PERFORMANCE" ON "PLAYER_ID"= "PLAYERS_PLAYER_ID"',
'WHERE "NAME" = :P35_BALL;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'BALL INFO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(65806005763950437202)
,p_name=>'BALL INFO'
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
,p_internal_uid=>65806005763950437202
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806006123171437203)
,p_db_column_name=>'PLAYER_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Player Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806006508392437204)
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
 p_id=>wwv_flow_imp.id(65806006905937437205)
,p_db_column_name=>'PLAYER_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Player Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806007387832437205)
,p_db_column_name=>'PLAYER_IMAGE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Player Image'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:PLAYERS:PLAYER_IMAGE:PLAYER_ID::::::::'
,p_static_id=>'image_width'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806007796130437205)
,p_db_column_name=>'TEAMS_TEAM_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Teams Team Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806008144896437206)
,p_db_column_name=>'OVERS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Overs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806008503069437206)
,p_db_column_name=>'RUNS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Runs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806008995212437206)
,p_db_column_name=>'WICKETS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Wickets'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65806009326487437206)
,p_db_column_name=>'MATCH_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Match Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65807496867941443026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'658074969'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PLAYER_ID:NAME:PLAYER_TYPE:PLAYER_IMAGE:TEAMS_TEAM_NAME:OVERS:RUNS:WICKETS:MATCH_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65799751275347601103)
,p_name=>'P35_BALL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65806005638475437202)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
