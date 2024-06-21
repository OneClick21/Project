prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 276360
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>276360
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62249053036417566355)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62249053280950566355)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62249053432249566355)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62249053692562566355)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62249053807346566355)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_FILES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62382639334840271193)
,p_theme_id=>42
,p_name=>'Vita (white)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Body-Title-BG":"#000000","@g_Body-Title-FG":"#ffffff","@g_Accent-BG":"#390276","@irrBg":"#ffffff","@g_Form-BorderRadius":"4px"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#62382639334840271193.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62419722644481931223)
,p_theme_id=>42
,p_name=>'Vita (copy_1)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@Head-Height":"48px","@Nav-Exp":"250px","@Actions-Exp":"200px","@g_Form-BorderRadius":"12px","@Side-Exp":"200px","@g_Danger-BG":"#ffffff","@g_Danger-FG":"#000000","@g_Button-BorderRadius":"12px","@g_Body-Content-Max-Width":"100'
||'%","@g_Container-BorderRadius":"12px","@g_Nav-Accent-BG":"#056ac8","@g_Nav-Accent-FG":"#ffffff","@g_Nav-Badge-BG":"#056ac8","@g_Nav-Badge-FG":"#ffffff","@g_Header-BG":"#056ac8","@g_Header-FG":"#ffffff","@g_Body-Title-BG":"#2c2e31","@g_Body-Title-FG":'
||'"#ffffff"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#62419722644481931223.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(62439811208285763046)
,p_theme_id=>42
,p_name=>'Redwood Light (copy_1)'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_FILES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_css_classes=>' rw-mode-header--dark rw-mode-nav--dark rw-mode-body-header--dark rw-mode-body--dark rw-pillar--pine rw-layout--edge-to-edge'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Redwood-Theme.less'
,p_theme_roller_config=>'{"classes":["rw-mode-header--dark","rw-mode-nav--dark","rw-mode-body-header--dark","rw-mode-body--dark","rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-layout--fixed t-PageBody--scrollTitle","rw-pillar--pine"'
||',"rw-layout--edge-to-edge"],"vars":{},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(65819746828389870294)
,p_theme_id=>42
,p_name=>'Vita - Dark (copy_1)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Region-Header-BG":"#b82952","@g_Region-Header-FG":"#ebebeb","@g_Region-BG":"#31413b","@g_Region-FG":"#f5f5f5"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65819746828389870294.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(65939571010046731833)
,p_theme_id=>42
,p_name=>'Vita - Dark (copy_2)'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Header-BG":"#2b0e66","@g_Header-FG":"#ffffff","@g_Body-BG":"#2b0e66","@g_Body-Text":"#ffffff","@g_Body-Title-BG":"#2b0e66","@g_Body-Title-FG":"#ffffff","@g_Actions-Col-BG":"#2b0e66","@g_Actions-Col-Text":"#ffffff","@l_Left-C'
||'ol-BG":"#2b0e66","@l_Left-Col-Text":"#ffffff"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65939571010046731833.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(65940532628438990761)
,p_theme_id=>42
,p_name=>'Vita - Dark (copy_3)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Header-BG":"#3c3f7c","@g_Header-FG":"#f7f7f7","@g_Body-BG":"#423f88","@g_Body-Text":"#ffffff","@g_Actions-Col-BG":"#422a9a","@g_Actions-Col-Text":"#ffffff","@g_Body-Title-BG":"#313c61","@g_Body-Title-FG":"#ffffff","@l_Left-C'
||'ol-BG":"#3f4d7c","@l_Left-Col-Text":"#ffffff","@g_Nav-Active-BG":"#404e7d","@g_Nav-Active-FG":"#ffffff","@g_NavBarMenu-BG":"#224a5e","@g_NavBarMenu-FG":"#f5f5f5","@g_Nav-BG":"#172c4b","@g_Nav-FG":"#ffffff","@g_Region-Header-BG":"#193754","@g_Region-H'
||'eader-FG":"#ebebeb","@g_Region-BG":"#20263e","@g_Region-FG":"#f5f5f5","@irrBg":"#161e3d","@Head-Height":"52px","@Nav-Exp":"230px","@Actions-Exp":"230px","@Side-Exp":"290px","@g_NavBarMenu-Active-BG":"#10508c","@g_NavBarMenu-Active-FG":"#ffffff"},"cus'
||'tomCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65940532628438990761.css'
,p_theme_roller_read_only=>false
);
wwv_flow_imp.component_end;
end;
/
