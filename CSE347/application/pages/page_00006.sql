prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Donor Form'
,p_alias=>'DONOR-FORM'
,p_step_title=>'Donor Form'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.button{',
'  padding: 15px 32px;',
'  text-align: center;',
'  text-decoration: none;',
'  display: inline-block;',
'  font-size: 15px;',
'  margin: 4px 2px;',
'  cursor: pointer;',
'  border: 2px solid red;',
'  transition-duration: 0.4s;',
'  color: black;',
'  ',
'}',
'',
'.button:hover {',
'  background-color: red;',
'  color: white;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11146647335796161629)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3435367225102628571)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3435251497716628514)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3435829629533628603)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11146648048713161703)
,p_plug_name=>'Donor Form'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(3435354875481628565)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DONORID,',
'       NAME,',
'       DATEOFBIRTH,',
'       GENDER,',
'       PHOTO,',
'       PHONE_NUMBER,',
'       EMAIL,',
'       BLOODTYPE,',
'       LASTDONATIONDATE,',
'       ADDRESS,',
'       FILE_NAME,',
'       MIME_TYPE,',
'       UPDATE_DATE,',
'       CHARACTER_SET',
'  from DONOR'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11146655331506161709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3435828043250628602)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11146655976789161709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3435828043250628602)
,p_button_image_alt=>'Revoke Donorship'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_css_classes=>'button'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11146656726475161710)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3435828043250628602)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(41209234990685908247)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_button_name=>'UPDATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3435828043250628602)
,p_button_image_alt=>'Update InFo'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(11146657000369161710)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6445871422583891038)
,p_name=>'P6_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6445871596538891039)
,p_name=>'P6_MIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_source=>'MIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6445871672404891040)
,p_name=>'P6_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6445871746375891041)
,p_name=>'P6_CHARACTER_SET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_source=>'CHARACTER_SET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146648340687161704)
,p_name=>'P6_DONORID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select id',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'DONORID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146648725211161704)
,p_name=>'P6_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select name',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(3435826857139628601)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146649174137161704)
,p_name=>'P6_DATEOFBIRTH'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select dateofbirth',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Date of Birth'
,p_source=>'DATEOFBIRTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(3435826857139628601)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146649571967161705)
,p_name=>'P6_GENDER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select gender',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Gender'
,p_source=>'GENDER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(3435826857139628601)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146649959704161705)
,p_name=>'P6_PHOTO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_prompt=>'Photo'
,p_source=>'PHOTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(3435825550128628600)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'DROPZONE_INLINE'
,p_attribute_15=>'512'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146650377352161705)
,p_name=>'P6_PHONE_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select phone_number',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Phone Number'
,p_source=>'PHONE_NUMBER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>11
,p_field_template=>wwv_flow_imp.id(3435826857139628601)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146650784219161706)
,p_name=>'P6_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select email',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(3435825550128628600)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146651171149161706)
,p_name=>'P6_BLOODTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select bloodtype',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Bloodtype'
,p_source=>'BLOODTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(3435826857139628601)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146651577101161706)
,p_name=>'P6_LASTDONATIONDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_prompt=>'Last Donation Date'
,p_source=>'LASTDONATIONDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(3435825550128628600)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11146651923776161707)
,p_name=>'P6_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_source_plug_id=>wwv_flow_imp.id(11146648048713161703)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select address',
'from sign_up',
'where username = APEX_CUSTOM_AUTH.GET_USERNAME'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(3435825550128628600)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41209234580735908243)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CREATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into donor(DONORID,',
'       NAME,',
'       DATEOFBIRTH,',
'       GENDER,',
'       PHOTO,',
'       PHONE_NUMBER,',
'       EMAIL,',
'       BLOODTYPE,',
'       LASTDONATIONDATE,',
'       ADDRESS,',
'       FILE_NAME,',
'       MIME_TYPE,',
'       UPDATE_DATE,',
'       CHARACTER_SET)values(:P6_DONORID,',
'       :P6_NAME,',
'       :P6_DATEOFBIRTH,',
'       :P6_GENDER,',
'       :P6_PHOTO,',
'       :P6_PHONE_NUMBER,',
'       :P6_EMAIL,',
'       :P6_BLOODTYPE,',
'       :P6_LASTDONATIONDATE,',
'       :P6_ADDRESS,',
'       :P6_FILE_NAME,',
'       :P6_MIME_TYPE,',
'       :P6_UPDATE_DATE,',
'       :P6_CHARACTER_SET);',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11146656726475161710)
,p_internal_uid=>41209234580735908243
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41209234620155908244)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'update donor set DONORID = :P6_DONORID,',
'       NAME = :P6_NAME,',
'       DATEOFBIRTH = :P6_DATEOFBIRTH,',
'       GENDER = :P6_GENDER,',
'       PHOTO = :P6_PHOTO,',
'       PHONE_NUMBER = :P6_PHONE_NUMBER,',
'       EMAIL = :P6_EMAIL,',
'       BLOODTYPE = :P6_BLOODTYPE,',
'       LASTDONATIONDATE = :P6_LASTDONATIONDATE,',
'       ADDRESS = :P6_ADDRESS,',
'       FILE_NAME = :P6_FILE_NAME,',
'       MIME_TYPE = :P6_MIME_TYPE,',
'       UPDATE_DATE = :P6_UPDATE_DATE,',
'       CHARACTER_SET = :P6_CHARACTER_SET',
'       where donorid = :P6_DONORID;',
'       ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(41209234990685908247)
,p_internal_uid=>41209234620155908244
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41209234771592908245)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete from donor',
'       where donorid = :P6_DONORID;',
'       ',
'  end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11146655976789161709)
,p_internal_uid=>41209234771592908245
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(41209235031232908248)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41209235031232908248
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11146657507690161711)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11146648048713161703)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Donor Form'
,p_internal_uid=>11146657507690161711
);
wwv_flow_imp.component_end;
end;
/
