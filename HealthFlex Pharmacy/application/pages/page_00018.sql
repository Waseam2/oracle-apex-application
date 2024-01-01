prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'buy medicine'
,p_alias=>'BUY-MEDICINE'
,p_page_mode=>'MODAL'
,p_step_title=>'buy medicine'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231112005054'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24708946916626619)
,p_plug_name=>'Buy medicine'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24709608135626625)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(24709685176626626)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_button_name=>'Buy'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Buy'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(24711653427626646)
,p_branch_name=>'ReturnToBuyPage'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ORDER_ID:&P18_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(24709685176626626)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24709175971626621)
,p_name=>'P18_MEDICINE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_prompt=>'Medicine Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24709232909626622)
,p_name=>'P18_BARCODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_prompt=>'barcode'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24709342886626623)
,p_name=>'P18_QUANTITY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_prompt=>'quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24709449822626624)
,p_name=>'P18_EXPIRED_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_prompt=>'expired date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24710019647626629)
,p_name=>'P18_MEDICNE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24710215221626631)
,p_name=>'P18_BUY_PRICE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_prompt=>'Buy Price'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24711225888626641)
,p_name=>'P18_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25602768264020014)
,p_name=>'P18_PROVIDER_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(24708946916626619)
,p_prompt=>'Provider Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROVIDENAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "provider_name" as name , "provider_id" as provider_id from',
'    "ph_providers"'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(25601077828019997)
,p_validation_name=>'notempty'
,p_validation_sequence=>10
,p_validation=>'P18_QUANTITY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#LABEL# must have some value.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(24709342886626623)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(25601239181019999)
,p_validation_name=>'notEmpty'
,p_validation_sequence=>20
,p_validation=>'P18_EXPIRED_DATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'#LABEL# must have some value.'
,p_associated_item=>wwv_flow_imp.id(24709449822626624)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24709824197626627)
,p_name=>'close '
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(24709608135626625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24709860316626628)
,p_event_id=>wwv_flow_imp.id(24709824197626627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24710299139626632)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'addToOrderMenu'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'begin ',
'',
'      -------------------if the order id not assigned -------------------  ',
'    if :P18_ORDER_ID is null  then ',
'        insert into "ph_orders" ("type") values (''b'');',
'        :P18_ORDER_ID := "order_seq".currval ; ',
'    end if ;',
'',
'    -------------------- insert medcine in orders items table -------------------',
'',
'',
'     IF checkmedcine(:P18_ORDER_ID , :P18_MEDICNE_ID) <> true then ',
'            insert into "ph_orders_medcine" ("order_id" , "medcine_id" , "quantitiy" , "provider_id","expired_date","buy_price") ',
'                                    values  (:P18_ORDER_ID , :P18_MEDICNE_ID , :P18_QUANTITY , :P18_PROVIDER_NAME , :P18_EXPIRED_DATE,:P18_BUY_PRICE );',
'            -- update "ph_medcine" set "QUANTITY" = "QUANTITY" + :P18_QUANTITY , "expired_date" =:P18_EXPIRED_DATE,',
'            --        "buy_price" = :P18_BUY_PRICE, provider_id = :P18_PROVIDER_NAME',
'            --      where "medcine_id" = :P18_MEDICNE_ID ; ',
'     else ',
'            update "ph_orders_medcine" set "quantitiy" = "quantitiy" + :P18_QUANTITY ,"provider_id" = :P18_PROVIDER_NAME,',
'                "expired_date" = :P18_EXPIRED_DATE, "buy_price" = :P18_BUY_PRICE where',
'                    "order_id" = :P18_ORDER_ID and "medcine_id" =:P18_MEDICNE_ID;',
'                --  update "ph_medcine" set "QUANTITY" = "QUANTITY" + :P18_QUANTITY , "expired_date" =:P18_EXPIRED_DATE,',
'                --    "buy_price" = :P18_BUY_PRICE, provider_id = :P18_PROVIDER_NAME',
'                --  where "medcine_id" = :P18_MEDICNE_ID ; ',
'     end if ; ',
'',
'',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'add failed  #SQLERRM_TEXT#',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(24709685176626626)
,p_process_success_message=>'add successfully to chart '
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(24710101995626630)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'select  "barcode_id" ,substr("medcine_name", 0 , 50) as medicine_name ,"buy_price" , provider_id , "expired_date" into ',
'       :P18_BARCODE ,  :P18_MEDICINE_NAME,:P18_BUY_PRICE ,:P18_PROVIDER_NAME,:P18_EXPIRED_DATE  from "ph_medcine"',
'       where "medcine_id" = :P18_MEDICNE_ID;',
'',
'end ; '))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
