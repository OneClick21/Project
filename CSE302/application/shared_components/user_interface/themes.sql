prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 276360
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>276360
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(62249054044425566355)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(62248818965217566249)
,p_default_dialog_template=>wwv_flow_imp.id(62248813793361566247)
,p_error_template=>wwv_flow_imp.id(62248803709013566242)
,p_printer_friendly_template=>wwv_flow_imp.id(62248818965217566249)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(62248803709013566242)
,p_default_button_template=>wwv_flow_imp.id(62248969038767566314)
,p_default_region_template=>wwv_flow_imp.id(62248895744232566282)
,p_default_chart_template=>wwv_flow_imp.id(62248895744232566282)
,p_default_form_template=>wwv_flow_imp.id(62248895744232566282)
,p_default_reportr_template=>wwv_flow_imp.id(62248895744232566282)
,p_default_tabform_template=>wwv_flow_imp.id(62248895744232566282)
,p_default_wizard_template=>wwv_flow_imp.id(62248895744232566282)
,p_default_menur_template=>wwv_flow_imp.id(62248908156054566287)
,p_default_listr_template=>wwv_flow_imp.id(62248895744232566282)
,p_default_irr_template=>wwv_flow_imp.id(62248885965786566278)
,p_default_report_template=>wwv_flow_imp.id(62248934027130566298)
,p_default_label_template=>wwv_flow_imp.id(62248966597946566313)
,p_default_menu_template=>wwv_flow_imp.id(62248970657412566315)
,p_default_calendar_template=>wwv_flow_imp.id(62248970747605566315)
,p_default_list_template=>wwv_flow_imp.id(62248950469715566305)
,p_default_nav_list_template=>wwv_flow_imp.id(62248962299515566311)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(62248962299515566311)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(62248956859851566308)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(62248831815503566255)
,p_default_dialogr_template=>wwv_flow_imp.id(62248829076046566254)
,p_default_option_label=>wwv_flow_imp.id(62248966597946566313)
,p_default_required_label=>wwv_flow_imp.id(62248967869770566313)
,p_default_navbar_list_template=>wwv_flow_imp.id(62248956499532566308)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.1/')
,p_files_version=>98
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
