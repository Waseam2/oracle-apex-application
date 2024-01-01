prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Edit Data'
,p_alias=>'EDIT-DATA'
,p_page_mode=>'MODAL'
,p_step_title=>'Edit Data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231126144241'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34103030968172511)
,p_plug_name=>'Edit Data'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34103681384172518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(34103030968172511)
,p_button_name=>'cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(34103377945172515)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(34103030968172511)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Save'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(34104301718172524)
,p_branch_name=>'goToReturnPage'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(34103377945172515)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34103071448172512)
,p_name=>'P27_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34103030968172511)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34103177163172513)
,p_name=>'P27_MEDCINE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34103030968172511)
,p_prompt=>'Medicine Name'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'MEDCINE.NAME'
,p_lov=>'select substr("medcine_name",1,40) as name , "medcine_id" as id from "ph_medcine"'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34103293281172514)
,p_name=>'P27_QUANTITY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(34103030968172511)
,p_prompt=>'Quantity return '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'center'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34103796631172519)
,p_name=>'P27_QUANTITYHIDDEN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34103030968172511)
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(34104110308172522)
,p_validation_name=>'don''tIncreaseQuantity'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'    if to_number(:P27_QUANTITY)  <= to_number(:P27_QUANTITYHIDDEN)  and :P27_QUANTITY > 0 then ',
'        return true;',
'    else ',
'        return false;',
'    end if ;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'the Quantity out of range ',
''))
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(34103377945172515)
,p_associated_item=>wwv_flow_imp.id(34103293281172514)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(34104222659172523)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'returnOrder'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'tempFound number(5) := 0 ;',
'returnFound number(5) := 0 ; ',
'RealQuantity number(5) := 0 ;',
'sellPrice number(10)  := 0 ; ',
'sellData date ;',
'begin ',
'      -----------------------------get the sell price to insert it in the return order table ---------------------',
'',
'      select "sell_price" into sellPrice from "ph_medcine" where "medcine_id" = :P27_MEDCINE_NAME ;',
'',
'      ---------------------------get sell order date for decrease money in incoming table',
'      select "invoice_date" into sellData from "ph_invoice" where "order_id" = :P27_ORDER_ID;',
'',
'    ---------------------------check if we have order id in returnd order page or non ----------------------',
'        if :P23_ORDER_ID is null then ',
'            insert into "ph_orders" ("type") values (''r'');',
'            :P23_ORDER_ID := "order_seq".currval;',
'        end if ;',
'',
'        ------------------------------get the real Quantity ----------------------------',
'        RealQuantity :=  :P27_QUANTITY ;',
'    -------------------------insert  into orders table ',
'        select count(*) into  tempFound from "ph_orders_medcine" where "medcine_id" = :P27_MEDCINE_NAME and "order_id" = :P23_ORDER_ID;',
'                if tempfound = 0 then ',
'                insert into "ph_orders_medcine" ("order_id" ,"medcine_id" ,"quantitiy") ',
'                        values',
'                             (:P23_ORDER_ID , :P27_MEDCINE_NAME, RealQuantity);',
'            else ',
'                update "ph_orders_medcine" set "quantitiy" = "quantitiy" + RealQuantity where ',
'                    "medcine_id" = :P27_MEDCINE_NAME and "order_id" = :P23_ORDER_ID;',
'            end if;',
'    --------------------------add the medcine in return medcine because if cancel the order -------------------',
'             select count("medcine_id") into returnFound from "ph_return_medcine" ',
'                 where "sell_order_no" = :P27_ORDER_ID and "medcine_id" = :P27_MEDCINE_NAME ; ',
'             if returnFound = 0 then ',
'                insert into "ph_return_medcine" ("return_date" , "money" , "sell_order_no" , "quantity" , "medcine_id", "return_order_id","sell_date")',
'                                values (sysdate , sellPrice * RealQuantity , :P27_ORDER_ID , RealQuantity , :P27_MEDCINE_NAME , :P23_ORDER_ID,sellData);',
'             else ',
'                update "ph_return_medcine" set "quantity" = "quantity" + RealQuantity , "money" = "money" + (sellPrice * RealQuantity)',
'                        where "sell_order_no" = :P27_ORDER_ID and "medcine_id"= :P27_MEDCINE_NAME ; ',
'             end if;',
'    --------------------------decrease quanitiy for medcine from order_medcine as sell order --------------------',
'',
'            update "ph_orders_medcine" set "quantitiy" = "quantitiy" - RealQuantity ',
'            where "medcine_id" = :P27_MEDCINE_NAME and "order_id" = :P27_ORDER_ID;',
'            ----------------increase the quantity of medcine in the stock--------------',
'update "ph_medcine"  set "QUANTITY"  = "QUANTITY" + RealQuantity where "medcine_id" = :P27_MEDCINE_NAME; ',
'    -------------------return sell order if the client cancel the order ----------------------------------',
'            ------------------decrease the money from income table ------------------------------',
'        update "ph_income" set "money" = "money" - (:P27_QUANTITY * sellPrice)  where "income_date" = sellData ; ',
'          ',
'',
'end; ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(34103377945172515)
);
wwv_flow_imp.component_end;
end;
/
