prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65594266240991287515)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(62248829076046566254)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row primary">',
'  <div></div>',
'  <div class="FOLLOW SECTION">',
'    <h3>FOLLOW US</h3>',
'        <div class="social">',
'     <a href="https://www.facebook.com/cricketworldcup/"><i class="fa fa-facebook-square"></i></a>',
'     <a href="https://twitter.com/cricketworldcup"><i class="fa fa-twitter-square"></i></a>',
'     <a href="https://www.youtube.com/user/CricketICC"><i class="fa fa-youtube"></i></a></br>',
'     <a href="https://www.facebook.com/myewu">East West University</a>',
'    </div>',
'    <div class="column link">',
'    <h3>DEVELOPERS</h3>',
'    <ul>',
'      <li><a href="https://www.facebook.com/israt.tamanna.3114">Israt Tamanna</a></li>',
'      <li><a href="https://www.facebook.com/s.nusrat17">Suraiya Nusrat Tanha</a></li>',
'      <li><a href="https://www.facebook.com/profile.php?id=100069297917838">Fardin Islam</a></li>',
'      <li><a href="https://www.facebook.com/profile.php?id=100029980875705">Umme Habiba Fariha</a></li>',
'      <li><a href="https://www.facebook.com/JubayerLikhon.L">Jubayer Likhon</a></li>',
'    </ul>',
'  </div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62991048192945131510)
,p_button_sequence=>10
,p_button_name=>'GET_TICKETS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(62248969187955566314)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Get Tickets'
,p_button_position=>'AFTER_NAVIGATION_BAR'
,p_button_redirect_url=>'https://tickets.cricketworldcup.com/explore/c/icc-cricket-world-cup'
);
wwv_flow_imp.component_end;
end;
/
