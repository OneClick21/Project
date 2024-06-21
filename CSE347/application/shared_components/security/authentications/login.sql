prompt --application/shared_components/security/authentications/login
begin
--   Manifest
--     AUTHENTICATION: Login
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>172091
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(5722839095872789160)
,p_name=>'Login'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'login'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
