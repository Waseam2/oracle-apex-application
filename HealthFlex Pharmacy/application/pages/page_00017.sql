prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Notification'
,p_alias=>'NOTIFICATION'
,p_page_mode=>'MODAL'
,p_step_title=>'Notification'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231001012202'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19308013194993628)
,p_name=>'notification'
,p_template=>wwv_flow_imp.id(6742125961922563)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOT_ID,',
'       substr(MEDCINE_NAME,1,20) as Medcine_name,',
'       BARCODE,',
'       MEDCINE_ID,',
'       STATUS,',
'       INFORMATION',
'  from PH_NOTIFICATION'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<h1 style="text-align:center">no notification found </h1>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19308071808993629)
,p_query_column_id=>1
,p_column_alias=>'NOT_ID'
,p_column_display_sequence=>10
,p_column_heading=>'close'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-times-circle"></span>'
,p_column_link_attr=>'title="#NOT_ID#" class=" delete t-Button t-Button--noLabel t-Button--icon t-Button--danger t-Button--simple"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20629623924889603)
,p_query_column_id=>2
,p_column_alias=>'MEDCINE_NAME'
,p_column_display_sequence=>50
,p_column_heading=>'Medcine Name'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&MEDCINE_NAME.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20629647424889604)
,p_query_column_id=>3
,p_column_alias=>'BARCODE'
,p_column_display_sequence=>60
,p_column_heading=>'Barcode'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19308364141993632)
,p_query_column_id=>4
,p_column_alias=>'MEDCINE_ID'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20629831409889605)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20629856595889606)
,p_query_column_id=>6
,p_column_alias=>'INFORMATION'
,p_column_display_sequence=>80
,p_column_heading=>'Information'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19309079472993639)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19308013194993628)
,p_button_name=>'clear_all'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Clear All'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(19309191243993640)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19308013194993628)
,p_button_name=>'refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--simple:t-Button--iconLeft:t-Button--hoverIconSpin'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'refresh'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19308654977993635)
,p_name=>'P17_NOTI_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19308509439993633)
,p_name=>'deleteNotifiy'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19308596763993634)
,p_event_id=>wwv_flow_imp.id(19308509439993633)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_NOTI_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19308798474993636)
,p_event_id=>wwv_flow_imp.id(19308509439993633)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'delete from PH_NOTIFICATION where NOT_ID = :P17_NOTI_ID ; ',
'',
'end;'))
,p_attribute_02=>'P17_NOTI_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19308895901993637)
,p_event_id=>wwv_flow_imp.id(19308509439993633)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19308013194993628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19309348209993642)
,p_name=>'clearTable'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19309079472993639)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19309477820993643)
,p_event_id=>wwv_flow_imp.id(19309348209993642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete from PH_NOTIFICATION;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19309537900993644)
,p_event_id=>wwv_flow_imp.id(19309348209993642)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19308013194993628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19309634008993645)
,p_name=>'RefreshNotification'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(19309191243993640)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19309775706993646)
,p_event_id=>wwv_flow_imp.id(19309634008993645)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'cursor cur is select "medcine_name" , "medcine_id", "barcode_id" , QUANTITY  from "ph_medcine" where QUANTITY < :MINQUANTITI;',
'cursor dat is select "medcine_name" , "medcine_id", "barcode_id" , "expired_date" from "ph_medcine" where  months_between("expired_date" , sysdate ) < :lastmindate ; ',
'found number(20) := 0    ;',
'found2 number(20) :=0 ;',
'begin ',
'    for i in cur ',
'        loop',
'            select count(*)  into found  from PH_NOTIFICATION where  MEDCINE_ID = i."medcine_id" ; ',
'                if found = 0 then',
'                --''the medcine ''||i."medcine_name"||'' available in the stock only ''||i.QUANTITY||''. barcode id is ''||i."barcode_id"||'' '' , ''quantitiy'', i."medcine_id"',
'                    insert into PH_NOTIFICATION (MEDCINE_NAME , BARCODE , MEDCINE_ID , STATUS, INFORMATION) values (i."medcine_name",i."barcode_id",i."medcine_id",''quantity'' , ''this product have minmum quantitiy ''||i.QUANTITY); ',
'                end if ;',
'        end loop;',
'',
'    for f in dat ',
'        loop',
'            select count(*)  into found2  from PH_NOTIFICATION where  MEDCINE_ID = f."medcine_id" ; ',
'                if found2 = 0 then',
'                 --   insert into PH_NOTIFICATION (NOT_TEXT , NOT_RESON , MEDCINE_ID) values (''the medcine ''||f."medcine_name"||'' is goning to  expired , exired date is  ''||f."expired_date"||''. barcode id is ''||f."barcode_id"||'' '' , ''expired'', f."med'
||'cine_id");',
'                      insert into PH_NOTIFICATION (MEDCINE_NAME , BARCODE , MEDCINE_ID , STATUS, INFORMATION) values (f."medcine_name",f."barcode_id",f."medcine_id",''date'' , ''expired date of this medcine is  ''||f."expired_date"); ',
'',
'                end if ;',
'        end loop;',
'end ;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20629017472889597)
,p_event_id=>wwv_flow_imp.id(19309634008993645)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19308013194993628)
);
wwv_flow_imp.component_end;
end;
/
