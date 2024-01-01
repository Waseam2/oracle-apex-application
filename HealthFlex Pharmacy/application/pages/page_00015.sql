prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'public setting'
,p_alias=>'PUBLIC-SETTING'
,p_step_title=>'public setting'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231218005521'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(16504678749569026)
,p_plug_name=>'public setting'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16504937336569029)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(16504678749569026)
,p_button_name=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Save'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16504747106569027)
,p_name=>'P15_MINMUM_QUANTITIY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(16504678749569026)
,p_item_default=>'APEX_UTIL.GET_SESSION_STATE(''MINQUANTITI'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Minmum Quantitiy'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<span style="text-transform:capitalize;">this is the minimum quantitiy before warn you about the quantity in the stock</span>'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16504882325569028)
,p_name=>'P15_MINMUM_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(16504678749569026)
,p_item_default=>'apex_util.get_session_state(''MINDATE'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Minimum date '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<span style="text-transform:capitalize;">this the minimum date  you will receive warn in notificatin center of the medcine ,tell you the expire date of medcine (in month)</span>'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16505226003569031)
,p_name=>'P15_LAST_MINMUM_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(16504678749569026)
,p_item_default=>'apex_util.get_session_state(''LASTMINDATE'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Last Minimum Date'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="text-transform:capitalize;"> ',
'    this the last date tell you the medicine is expired and the medicine not valid to use (in Month)',
'    </span>'))
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31714644225244128)
,p_name=>'P15_RETURNED_DURATION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(16504678749569026)
,p_item_default=>'apex_util.get_session_state(''RETURNED_DURATION'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Returned Duration'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1 week;.25,2 weeks;.5,3 weeks;.75,4 weeks;1,5 weeks;1.25,6 weeks;1.5,7 weeks;1.75,8 week;2'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'<span style="text-transform:capitalize">This is the period within which the customer can return the medication</span>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(16505275160569032)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'setItemsValue'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'update "ph_setting" set "setvalue" = :P15_MINMUM_QUANTITIY where "setting" = ''MINQUANTITI'';',
'update "ph_setting" set "setvalue" = :P15_MINMUM_DATE where "setting" = ''MINDATE'';',
'update "ph_setting" set "setvalue" = :P15_LAST_MINMUM_DATE where "setting" = ''lastmindate'';',
'update "ph_setting" set "setvalue" = :P15_RETURNED_DURATION where "setting" = ''RETURNED_DURATION'';',
'apex_util.set_session_state(''MINQUANTITI'' , :P15_MINMUM_QUANTITIY);',
'apex_util.set_session_state(''MINDATE'' , :P15_MINMUM_DATE);',
'apex_util.set_session_state(''LASTMINDATE'' , :P15_LAST_MINMUM_DATE);',
'apex_util.set_session_state(''RETURNED_DURATION'' ,:P15_RETURNED_DURATION);',
'',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error in update '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(16504937336569029)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update successfully',
''))
);
wwv_flow_imp.component_end;
end;
/
