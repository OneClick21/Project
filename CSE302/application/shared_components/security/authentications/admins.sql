prompt --application/shared_components/security/authentications/admins
begin
--   Manifest
--     AUTHENTICATION: Admins
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>23218690882094214236
,p_default_application_id=>276360
,p_default_id_offset=>0
,p_default_owner=>'WKSP_JUBAYERCSE302SUMMER23'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(64198547297315582643)
,p_name=>'Admins'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'my_auth'
,p_attribute_05=>'N'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION my_auth (',
'p_username IN VARCHAR2,',
'p_password IN VARCHAR2)',
'RETURN BOOLEAN AS',
'found number := 0;',
'BEGIN',
'SELECT 1 into found FROM ADMINS',
'WHERE user_Name = p_username',
'AND user_Password = p_password',
'AND user_Activated  = 1;',
'RETURN TRUE;',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
'RETURN FALSE;',
'END;'))
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
