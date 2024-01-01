prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Add User'
,p_alias=>'ADD-USER'
,p_page_mode=>'MODAL'
,p_step_title=>'Add User'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function viewPassword()',
'{',
unistr('\00A0 var passwordInput = document.getElementById(''P6_PASSWORD'');'),
unistr('\00A0 var passStatus = document.getElementById(''pass-status'');'),
unistr('\00A0 if (passwordInput.type == ''password''){'),
unistr('\00A0 \00A0 passwordInput.type=''text'';'),
unistr('\00A0 \00A0 passStatus.className=''fa fa-eye-slash field-icon'';'),
unistr('\00A0 \00A0\00A0'),
unistr('\00A0 }'),
unistr('\00A0 else{'),
unistr('\00A0 \00A0 passwordInput.type=''password'';'),
unistr('\00A0 \00A0 passStatus.className=''fa fa-eye field-icon'';'),
unistr('\00A0 }'),
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.btn',
'{',
'    line-height: 60px;',
'    font-size: 20px;   ',
'',
'}',
'',
'.field-icon {',
'right : 30px;',
'margin-left: 5px;',
'margin-top: 0px;',
'position: relative;',
'z-index: 2;',
'}',
'',
'.FormDesign',
'{',
'    background-color: aliceblue;',
'}',
'',
'.addbtn',
'{',
'    background-color: rgba(47, 98, 251, 0.928);',
'    color:black;',
'}',
'.addbtn:hover',
'{',
'        background-color: rgba(1, 64, 74, 0.928);',
'        color:white;',
'',
'}'))
,p_page_css_classes=>'FormDesign'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_css_classes=>'FormDesign'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231213114918'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7300827667037460)
,p_plug_name=>'Add User'
,p_region_css_classes=>'FormDesign'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_ID,',
'       NAME,',
'       PHONE,',
'       EMAIL,',
'       ROLE,',
'       active,',
'       USERNAME,',
'       password',
'  from "ph_users"'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7306020471037514)
,p_plug_name=>'Buttons'
,p_region_css_classes=>'FormDesign'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6744902575922569)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6916867843930322)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_button_name=>'chg_pwd'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'change password'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:P2_USER_ID:&P6_USER_ID.'
,p_button_condition=>'EDIT'
,p_button_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_button_css_classes=>'btn'
,p_grid_new_row=>'N'
,p_grid_column_span=>4
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7306388527037516)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(7306020471037514)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7307799084037538)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(7306020471037514)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P6_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7308193412037538)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7306020471037514)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SAVE'
,p_button_position=>'NEXT'
,p_button_condition=>'P6_USER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7308562159037538)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(7306020471037514)
,p_button_name=>'add'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'NEXT'
,p_button_condition=>'P6_USER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'addbtn'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6918580491930339)
,p_branch_name=>'back'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6914514540930298)
,p_name=>'P6_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_prompt=>'Password'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<i id="pass-status" class="fa fa-eye field-icon" aria-hidden="true" onClick="viewPassword()"></i>',
'',
''))
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>128
,p_begin_on_new_line=>'N'
,p_display_when=>'CREATE'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_css_classes=>'passwd'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7301216024037477)
,p_name=>'P6_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Id'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7301567068037497)
,p_name=>'P6_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(6874137700923010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7301883712037508)
,p_name=>'P6_PHONE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7302236384037508)
,p_name=>'P6_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7302636680037510)
,p_name=>'P6_ROLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_prompt=>'Role'
,p_source=>'ROLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ROLEMENU'
,p_lov=>'.'||wwv_flow_imp.id(7317951618072814)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7303049088037510)
,p_name=>'P6_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>40
,p_colspan=>6
,p_grid_column_css_classes=>'btn'
,p_field_template=>wwv_flow_imp.id(6874137700923010)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8501710324065215)
,p_name=>'P6_ACTIVE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_item_source_plug_id=>wwv_flow_imp.id(7300827667037460)
,p_prompt=>'Active'
,p_source=>'ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7306464418037516)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(7306388527037516)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7307257720037531)
,p_event_id=>wwv_flow_imp.id(7306464418037516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7309346494037544)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(7300827667037460)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Add User'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'process failed  #SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'process complete successfully'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7309742207037546)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_process_error_message=>'process failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'process complete successfully'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7308932615037542)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(7300827667037460)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Add User'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
