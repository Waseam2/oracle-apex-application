prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'change password'
,p_alias=>'CHANGE-PASSWORD'
,p_page_mode=>'MODAL'
,p_step_title=>'change password'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewPassword()',
'{',
'  var passwordInput = document.getElementById(''P2_NEW_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status'');',
'',
'  if (passwordInput.type == ''password''){',
'    passwordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'    ',
'  }',
'  else{',
'    passwordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }',
'}',
'',
'function viewPassword2()',
'{',
'  var passwordInput = document.getElementById(''P2_CONFIRM_PASSWORD'');',
'  var passStatus = document.getElementById(''pass-status1'');',
'',
'  if (passwordInput.type == ''password''){',
'    passwordInput.type=''text'';',
'    passStatus.className=''fa fa-eye-slash field-icon'';',
'    ',
'  }',
'  else{',
'    passwordInput.type=''password'';',
'    passStatus.className=''fa fa-eye field-icon'';',
'  }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.field-icon {',
'    right : 20px;',
'    margin-left: -5px;',
'    margin-top: 5px;',
'    position: relative;',
'    z-index: 2;',
'}',
'',
'.t-Dialog-body',
'{',
'    background-color: aliceblue;',
'}',
'',
'.ui-dialog-title',
'{',
'    text-align: center;',
'    color:red;',
'',
'}'))
,p_page_css_classes=>'de'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231208114208'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6917013588930323)
,p_plug_name=>'change password'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6917353434930327)
,p_button_sequence=>20
,p_button_name=>'confirm'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Confirm'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>6
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6918141994930335)
,p_branch_name=>'back'
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.:EDIT:&DEBUG.::P6_USER_ID:&P2_USER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(6917353434930327)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6917047054930324)
,p_name=>'P2_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6917013588930323)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6917144013930325)
,p_name=>'P2_NEW_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6917013588930323)
,p_prompt=>'New password'
,p_post_element_text=>'<i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewPassword()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_colspan=>5
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6917304835930326)
,p_name=>'P2_CONFIRM_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(6917013588930323)
,p_prompt=>'confirm password'
,p_post_element_text=>'<i id="pass-status1" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewPassword2()"></i>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_colspan=>5
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(6917433950930328)
,p_validation_name=>'matchPassword'
,p_validation_sequence=>10
,p_validation=>':P2_CONFIRM_PASSWORD = :P2_NEW_PASSWORD'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'passwords not match'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(6917353434930327)
,p_associated_item=>wwv_flow_imp.id(6917304835930326)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6918024597930333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'changePassword'
,p_process_sql_clob=>'update "ph_users" t set t."PASSWORD" = GET_ENPWD(:P2_CONFIRM_PASSWORD) where user_id = :P2_USER_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error password can''t change'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(6917353434930327)
,p_process_success_message=>'password update successfully'
);
wwv_flow_imp.component_end;
end;
/
