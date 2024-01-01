prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'return Medicine'
,p_alias=>'RETURN-MEDICINE'
,p_page_mode=>'MODAL'
,p_step_title=>'return Medicine'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6704822410922303)
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231127150227'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30901231401085124)
,p_plug_name=>'return Medicine'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'ph_returned_medcine'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30903563778085172)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6744902575922569)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30904026474085172)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(30903563778085172)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(30906198797085280)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(30903563778085172)
,p_button_name=>'save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(28713398383291140)
,p_branch_name=>'goToReturnPage'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_ORDER_ID:&P28_ORDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(30906198797085280)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28711977230291126)
,p_name=>'P28_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_item_source_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_prompt=>'Quantity'
,p_source=>'quantity'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28712130133291127)
,p_name=>'P28_ALLOW_RETURNED_QUANTITY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_prompt=>'Allow Returned Quantity'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28713281443291139)
,p_name=>'P28_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30901500228085136)
,p_name=>'P28_RETURN_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_item_source_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_source=>'return_id'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30901867395085160)
,p_name=>'P28_MEDCINE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_prompt=>'Medcine Id'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'MEDCINE.NAME'
,p_lov=>'select substr("medcine_name",1,40) as name , "medcine_id" as id from "ph_medcine"'
,p_cattributes_element=>'width:40px;'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(30902317031085169)
,p_name=>'P28_RETURN_REASON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_item_source_plug_id=>wwv_flow_imp.id(30901231401085124)
,p_prompt=>'Return Reason'
,p_source=>'return_reason'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(28712469106291131)
,p_validation_name=>'compareWithAllowQuantity'
,p_validation_sequence=>10
,p_validation=>':P28_QUANTITY   <= :P28_ALLOW_RETURNED_QUANTITY'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The returned Quantity can''t be more than allow quantity ',
''))
,p_when_button_pressed=>wwv_flow_imp.id(30906198797085280)
,p_associated_item=>wwv_flow_imp.id(28711977230291126)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(28712831615291134)
,p_validation_name=>'ifAllowed Quantity Null'
,p_validation_sequence=>20
,p_validation=>'P28_ALLOW_RETURNED_QUANTITY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'you can''t return this medcine no medcine allowed to return '
,p_associated_item=>wwv_flow_imp.id(28712130133291127)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(30904121779085172)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(30904026474085172)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(30904922295085191)
,p_event_id=>wwv_flow_imp.id(30904121779085172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28712138655291128)
,p_name=>'getInformation'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28712304502291129)
,p_event_id=>wwv_flow_imp.id(28712138655291128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    -- select sum(o."quantitiy") into :P23_QUANTITY from "ph_orders_medcine" o , "ph_invoice" v ',
'    --     where o."medcine_id" = :P23_MEDCINE_SEARCH and v."type" = ''s'' and o."order_id" = v."order_id" ; ',
'',
'select sum("quantitiy") into :P28_ALLOW_RETURNED_QUANTITY from "ph_orders_medcine" o , "ph_invoice" v  ',
'where',
' o."medcine_id" = :P28_MEDCINE_ID  and o."order_id" = v."order_id" and v."type" = ''s'' and months_between(  sysdate,v."invoice_date" ) < 0.25 and o."quantitiy" > 0   -- you can return medcine for last week only ',
'  ;',
''))
,p_attribute_02=>'P28_MEDCINE_ID'
,p_attribute_03=>'P28_ALLOW_RETURNED_QUANTITY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(28712883100291135)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'processing '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'tempFound number(5) := 0 ;',
'cursor GetData is  select sum(o."quantitiy") , v."invoice_date"   from "ph_orders_medcine" o , "ph_invoice" v ',
'        where (o."medcine_id" = :P28_MEDCINE_ID and o."order_id" = v."order_id" and v."type" = ''s'' and months_between(  sysdate,v."invoice_date" ) < 0.25 and o."quantitiy" <> 0 )  -- you can return medcine for last week only ',
'        group by v."invoice_date";',
'begin ',
'   ',
'    ---------------------check order id -------------------------',
'           if :P28_ORDER_ID is null then ',
'             insert into "ph_orders" ("type") values (''r'');',
'             :P28_ORDER_ID := "order_seq".currval;',
'            end if ; ',
'    --------------------end check order id ----------------------',
'',
'  -----------insert order in orders_medcine table ------------------',
'    select count(*) into  tempFound from "ph_orders_medcine" where "medcine_id" = :P28_MEDCINE_ID and "order_id" = :P28_ORDER_ID;',
'',
'            if tempfound = 0 then ',
'                insert into "ph_orders_medcine" ("order_id" ,"medcine_id" ,"quantitiy") ',
'                        values',
'                             (:P28_ORDER_ID , :P28_MEDCINE_ID, :P28_QUANTITY);',
'            else ',
'                update "ph_orders_medcine" set "quantitiy" = "quantitiy" + :P28_QUANTITY where ',
'                    "medcine_id" = :P28_MEDCINE_ID and "order_id" = :P28_ORDER_ID;',
'            end if;',
'  -----------end insert ---------------------------------',
'',
'',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'add failed',
'',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(30906198797085280)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'add successfully',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30907325955085316)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(30906540925085300)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(30901231401085124)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form return Medicine'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
