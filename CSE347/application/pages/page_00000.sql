prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41531281698398838536)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3435354875481628565)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_05'
,p_location=>null
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<div class="container">',
'<div class="row">',
'<div class="col col-12 ">',
'',
'    <table width="550" align="center">   ',
'      <tbody><tr>',
'        <td align="center"> ',
'             &nbsp;&nbsp;',
'        	 Developed By :<a href="https://www.facebook.com/profile.php?id=100077078981855&mibextid=gik2fB" target="_blank">',
'             <font color="#2A5C9B" size="-1" style="font-style:italic;font-weight: bold">',
'                  Md Sanwarul Islam </font></a>,',
'                  <a href="https://www.facebook.com/hredoy.majumder.5?mibextid=gik2fB" target="_blank">',
'                  <font color="#2A5C9B" size="-1" style="font-style:italic;font-weight: bold"> ',
'                      Hredoy Majumder </font></a>,<a href="https://www.facebook.com/ramisa.arna?mibextid=gik2fB" target="_blank">',
'                      <font color="#2A5C9B" size="-1" style="font-style:italic;font-weight: bold">',
'                           Ramisa Hossain Arna </font></a>,<a href="https://www.facebook.com/JubayerLikhon.L" target="_blank">',
'                           <font color="#2A5C9B" size="-1" style="font-style:italic;font-weight: bold"> Jubayer Alam Likhon </font></a>',
'             &nbsp;&nbsp;<br>',
'',
'&nbsp;&nbsp; ',
unistr('          	 <span style="color:#2A5C9B">\00A9 Copyright 2023, Red Cycle Limited.</span>      '),
'             &nbsp;&nbsp; ',
'        </td>        ',
'      </tr>      ',
'    </tbody></table>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
