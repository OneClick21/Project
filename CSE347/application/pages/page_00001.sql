prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Red Cycle'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<video autoplay loop id ="video-background" muted plaus-inline>',
'<source src="#APP_FILES#videoplayback (1).mp4" type="video/mp4"> </video>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'video {',
'  object-fit: cover;',
'  width: auto;',
'  height: auto;',
'  position: fixed;',
'  right: 0;',
'  bottom: 0;',
'  min-width: 100%;',
'  min-height: 100%;',
'}',
'',
'.button{',
'  border: none;',
'  color: white;',
'  padding: 30px 30px;',
'  text-align: center;',
'  text-decoration: none;',
'  display: inline-block;',
'  font-size: 30px;',
'  margin: 4px 2px;',
'  cursor: pointer;',
'  background-color: #1d9c0125;',
'}',
'',
'.button:hover {',
'  background-color: #1d9c01;',
'  color: white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11407832127424850304)
,p_button_sequence=>10
,p_button_name=>'Donor'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(3435828152276628602)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Become a Donor'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'button'
,p_icon_css_classes=>'fa-lg fa-emoji-big-eyes-smile'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41531280795360838527)
,p_button_sequence=>20
,p_button_name=>'About'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3435828043250628602)
,p_button_image_alt=>'About Us'
,p_button_redirect_url=>'f?p=&APP_ID.:20020:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'button'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp.component_end;
end;
/
