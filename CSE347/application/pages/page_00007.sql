prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Blank'
,p_alias=>'BLANK'
,p_step_title=>'Blank'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<video autoplay loop id ="video-background" muted plaus-inline>',
'<source src="#APP_FILES#videoplayback (1).mp4" type="video/mp4"> </video>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'video {',
'  object-fit: cover;',
'  width: 100vw;',
'  height: 100vh;',
'  position: fixed;',
'  top: 0;',
'  left: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11204743411311944115)
,p_plug_name=>'Breadcrumb'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(3435251497716628514)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3435829629533628603)
);
wwv_flow_imp.component_end;
end;
/
