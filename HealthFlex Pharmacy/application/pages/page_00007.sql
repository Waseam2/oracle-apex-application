prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'invoice'
,p_alias=>'INVOICE'
,p_page_mode=>'MODAL'
,p_step_title=>'invoice'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231128073350'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12405071674263338)
,p_plug_name=>'invoice'
,p_region_name=>'invoice'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'cursor cur is select  m."medcine_name" , m."sell_price",o."buy_price", o."quantitiy" ',
'from "ph_medcine" m , "ph_orders_medcine" o ',
'where o."order_id" = :P7_ORDER_ID  and o."medcine_id" = m."medcine_id";',
'total number(20) :=0 ;  --total for partical item',
'sumt number(20) :=0 ;    --total for all items',
'actualPrice number(20) := 0 ; -- this is a real price choose between sell price or buy price depend on the condtion',
'begin',
'---------------------------for type of the invoice ------------------------------',
'    if :P7_INVOICE_TYPE = ''s'' then ',
'       :P7_INVOICE_TYPE := ''sell invoice'' ;',
'    elsif :P7_INVOICE_TYPE = ''r'' then ',
'          :P7_INVOICE_TYPE := ''returned invoice'';',
'    else',
'          :P7_INVOICE_TYPE := ''buy invoice'';',
'    end if;',
'----------------------------end type of the invoice -------------------------------',
'htp.p(',
'    ''',
'    ',
'        <!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <link rel="stylesheet" href="#APP_FILES#invoice.css">',
'    <title>invoice</title>',
'</head>',
'<body>',
'        <div class="container">',
'            <div class="design">',
'            <div class="desHead">',
'                <div class="intro">',
'                    <h1>Medical Invoice</h1>',
'                    <br>',
'                    <br>',
'                    <br>',
'                </div> ',
'                <div class="desBody">',
'                    <table>',
'                        <tr>',
'                            <td>invoice type</td>',
'                            <td>''||:P7_INVOICE_TYPE||''</td>',
'                        </tr>',
'                          <tr>',
'                            <td>order_number</td>',
'                            <td>''||:P7_ORDER_ID||''</td>',
'                        </tr>',
'                        <tr>',
'                            <td>date </td>',
'                            <td>''||:P7_DATE||''</td>',
'                        </tr>',
'                        <tr>',
'                            <td>user name</td>',
'                            <td>''||:P7_USER_NAME||''</td>',
'                        </tr>',
'                        <tr>',
'                            <td>client Name</td>',
'                            <td>''||:P7_CLIENT_NAME||''</td>',
'                        </tr>',
'                       ',
'                    </table>',
'                </div>',
'            </div>',
'            <div class="destable">',
'            <table>',
'                    <thead>',
'                        <tr>',
'                            <th>Medicine</th>',
'                            <th>Quantitiy</th>',
'                            <th>Price</th>',
'                            <th>Total</th>',
'                        </tr>',
'                    </thead>'');',
'',
'for s in cur ',
'loop',
'      ------------------------to choose the sell price or buy price in sell invoice and buy invoice ------------',
'    if :P7_INVOICE_TYPE = ''sell invoice'' or :P7_INVOICE_TYPE = ''returned invoice'' then',
'        actualPrice := s."sell_price";',
'    else ',
'        actualPrice := s."buy_price";',
'    end if ; ',
'-------------------------------------------end choosing -------------------------',
'total := s."quantitiy" * actualPrice;  -- sum items',
'sumt := sumt + total ;  --sum for all items ',
':P7_TOTAL := sumt;',
'htp.p(''',
'                    <tbody>',
'                        <tr>',
'                            <td>''||s."medcine_name"||''</td>',
'                            <td>''||s."quantitiy"||''</td>',
'                            <td>''||actualPrice||'' $</td>',
'                            <td>''||total||'' $</td>',
'                        </tr>',
'                       ',
'                       ',
'                    </tbody>'');',
'end loop;',
'htp.p(''',
'                    <tfoot>',
'                        <tr>',
'                            <td colspan="3">total</td>',
'                            ',
'                            <td>''||sumt||'' $</td>',
'                        </tr> ',
'                    </tfoot>',
'                </table>',
'            </div>    ',
'        </div>',
'        </div>',
'</body>',
'</html>',
'',
'    ''',
');',
'',
'---------------------------to cancel type of the invoice ------------------------------',
'    if :P7_INVOICE_TYPE = ''sell invoice'' then ',
'       :P7_INVOICE_TYPE := ''s'' ;',
'    elsif :P7_INVOICE_TYPE = ''returned invoice'' then ',
'          :P7_INVOICE_TYPE := ''r'';',
'    else',
'          :P7_INVOICE_TYPE := ''b'';',
'    end if;',
'----------------------------end canceltion type of the invoice -------------------------------',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'numtemp number(10) := 0;',
'begin',
'',
'    ',
'',
'  if :P7_ORDER_ID is null or :P7_ORDER_ID = 0  then   -- if no order id there is no invoice ',
'    return false ; ',
'',
'   else ',
'        select count("medcine_id") into numtemp from "ph_orders_medcine" where "order_id" = :P7_ORDER_ID;',
'        if numtemp = 0 then ',
'            return false ;    -- if no medcine in order ',
'        else ',
'            return true ; ',
'        end if ; ',
'  end if; ',
'',
'  ',
'',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14202130068481911)
,p_plug_name=>'no invoice '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1 style="text-align:center">no invoice to display',
'</h1>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'numtemp number(10) := 0;',
'begin',
'',
'    ',
'',
'  if :P7_ORDER_ID is null or :P7_ORDER_ID = 0  then ',
'    return true ; ',
'',
'   else ',
'        select count("medcine_id") into numtemp from "ph_orders_medcine" where "order_id" = :P7_ORDER_ID;',
'        if numtemp = 0 then ',
'            return true ; ',
'        else ',
'            return false  ; ',
'        end if ; ',
'  end if; ',
'',
'  ',
'',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14202442562481915)
,p_button_sequence=>50
,p_button_name=>'back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'back'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'numtemp number(10) := 0;',
'begin',
'',
'    ',
'',
'  if :P7_ORDER_ID is null or :P7_ORDER_ID = 0  then   -- if no order id there is no invoice ',
'    return false ; ',
'',
'   else ',
'        select count("medcine_id") into numtemp from "ph_orders_medcine" where "order_id" = :P7_ORDER_ID;',
'        if numtemp = 0 then ',
'            return false ;    -- if no medcine in order ',
'        else ',
'            return true ; ',
'        end if ; ',
'  end if; ',
'',
'  ',
'',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'print-hide'
,p_icon_css_classes=>'fa-arrow-circle-left'
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14202257808481913)
,p_button_sequence=>60
,p_button_name=>'print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'numtemp number(10) := 0;',
'begin',
'',
'    ',
'',
'  if :P7_ORDER_ID is null or :P7_ORDER_ID = 0  then   -- if no order id there is no invoice ',
'    return false ; ',
'',
'   else ',
'        select count("medcine_id") into numtemp from "ph_orders_medcine" where "order_id" = :P7_ORDER_ID;',
'        if numtemp = 0 then ',
'            return false ;    -- if no medcine in order ',
'        else ',
'            return true ; ',
'        end if ; ',
'  end if; ',
'',
'  ',
'',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'print-hide'
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14202356006481914)
,p_button_sequence=>70
,p_button_name=>'done'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'done'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'numtemp number(10) := 0;',
'begin',
'',
'    /*',
'    declare',
'',
'getRequest varchar2(200);',
'',
'begin ',
'',
'    :P7_REQUES := V(''REQUEST'');',
'',
'end;',
'    */',
'    if V(''REQUEST'') = ''hide'' then ',
'        return false;',
'    else',
'          if :P7_ORDER_ID is null or :P7_ORDER_ID = 0  then   -- if no order id there is no invoice ',
'            return false ; ',
'',
'           else ',
'                select count("medcine_id") into numtemp from "ph_orders_medcine" where "order_id" = :P7_ORDER_ID;',
'                if numtemp = 0 then ',
'                    return false ;    -- if no medcine in order ',
'                else ',
'                    return true ; ',
'                end if ; ',
'          end if; ',
'    end if; ',
'      ',
'',
'',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'print-hide'
,p_icon_css_classes=>'fa-clipboard-check-alt'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25604429990020030)
,p_branch_name=>'goToSell'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14202356006481914)
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P7_BRANCH'
,p_branch_condition_text=>'sell'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25604514391020031)
,p_branch_name=>'gotoBuy'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14202356006481914)
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P7_BRANCH'
,p_branch_condition_text=>'buy'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31712918254244110)
,p_branch_name=>'goToReturned'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(14202356006481914)
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P7_BRANCH'
,p_branch_condition_text=>'returned'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14201443285481905)
,p_name=>'P7_INVOICE_NUMBER'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14201577544481906)
,p_name=>'P7_DATE'
,p_item_sequence=>100
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14201644421481907)
,p_name=>'P7_INVOICE_TYPE'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14201764913481908)
,p_name=>'P7_USER_NAME'
,p_item_sequence=>110
,p_item_default=>'lower(:APP_USER)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14201981319481910)
,p_name=>'P7_ORDER_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19305324097993601)
,p_name=>'P7_TOTAL'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25604258717020029)
,p_name=>'P7_BRANCH'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25604871643020035)
,p_name=>'P7_PROVIER_ID'
,p_item_sequence=>120
,p_item_default=>'select "provider_id" from "ph_orders_medcine" where "order_id" = :P7_ORDER_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31713037280244112)
,p_name=>'P7_CLIENT_NAME'
,p_item_sequence=>140
,p_item_default=>'###############'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14202704322481917)
,p_name=>'close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14202442562481915)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14202747308481918)
,p_event_id=>wwv_flow_imp.id(14202704322481917)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19305002558993598)
,p_name=>'print'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(14202257808481913)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19305091435993599)
,p_event_id=>wwv_flow_imp.id(19305002558993598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.print()'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19305577872993604)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'addToInvoice'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'userID number(5) := 0; ',
'globalDate number := 0 ;  -- to show if the date is exist or not in income date to avoid duplicated ',
'------------------create cursor to take element from orders menu to stock and update values in the stock---------',
'cursor buy is select "medcine_id" , "quantitiy","provider_id","expired_date","buy_price"  from "ph_orders_medcine"',
'    where "order_id" = :P7_ORDER_ID ; ',
'    -----------------------------------------------------------------------------------',
'    --------------cursor for delete medcine from sell order after return --------------',
'    -----------------------------------------------------------------------------------',
'cursor returnMed is select "sell_order_no" , "quantity" , "medcine_id" , "sell_date" from "ph_return_medcine"',
' where "return_order_id" = :P7_ORDER_ID;',
'--- for check the medcine quantity in order_medcine',
'CheckMedcine number(10) :=0 ;',
'---this two variable for return medcine--',
'QuantityStock number (10) := 0 ;',
'SellPrice number(10) := 0 ;',
'medcineQuan number(10) := 0 ;',
'begin ',
'',
'---------------------- get the user id from username --------------',
'select user_id into userID from "ph_users" where name = :P7_USER_NAME;',
'------------------------------put the order data in the invoice table ----------------  ',
'insert into "ph_invoice" ("invoice_date" , "user_id" , "order_id" , "type" , "total_price","provider_id","client_name" ) ',
'                  values (:P7_DATE , userID , :P7_ORDER_ID , :P7_INVOICE_TYPE, :P7_TOTAL,:P7_PROVIER_ID, :P7_CLIENT_NAME );',
'------------------------ if the invoice is sell invoice the total will go to income table ------------------',
'if :P7_INVOICE_TYPE = ''s'' then ',
'------------------------if no income in same date in income date----------------------',
'          select count(*) into globalDate from "ph_income" where "income_date" = :P7_DATE ; ',
'          if globalDate = 0 then ',
'                insert into "ph_income" ("money" , "income_date") values (:P7_TOTAL , :P7_DATE);',
'          else ',
'                update "ph_income" set "money" = "money" + :P7_TOTAL where "income_date" = :P7_DATE;',
'          end if; ',
' --------------to make branch go to sell page',
'    :P7_BRANCH := ''sell'';',
'elsif :P7_INVOICE_TYPE = ''b''then',
'        ',
'        for i in buy ',
'        loop',
'            ------------------add the buy medcine in the stock with all new information --------------------',
'            update "ph_medcine" set "expired_date" = i."expired_date",QUANTITY = QUANTITY + i."quantitiy",',
'                                    PROVIDER_ID = i."provider_id" ,"buy_price" = i."buy_price" where "medcine_id" = i."medcine_id";',
'        end loop;',
'',
'          select count(*) into globalDate from "ph_expenses" where expenses_date = :P7_DATE;',
'          if globalDate = 0 then ',
'                insert into "ph_expenses" ("money" , expenses_date) values (:P7_TOTAL , :P7_DATE) ;',
'          else ',
'                update "ph_expenses" set "money" = "money" + :P7_TOTAL where expenses_date = :P7_DATE;',
'          end if ; ',
' --------------to make branch go to buy page ;',
'    :P7_BRANCH := ''buy'';',
'else ',
'      --------------------------------------------------------------',
'      ---------------check invoice for sell order-------------------',
'      --------------------------------------------------------------',
'      for r in returnMed',
'          loop',
'                select sum ("quantitiy") into CheckMedcine from "ph_orders_medcine" where "order_id" = r."sell_order_no";  ',
'                if CheckMedcine = 0 then ',
'                    delete from "ph_orders_medcine" where "order_id" = r."sell_order_no";',
'                    delete from "ph_invoice" where "order_id" = r."sell_order_no";       ',
'                    delete from "ph_orders" where "order_id" = r."sell_order_no";',
'                --    dbms_output.put_line(''test'');',
'                else ',
'                    ------------get quantity of medcine returned from return_Medcine table-----------',
'                    select "quantitiy" into medcineQuan from "ph_orders_medcine" where "medcine_id" = r."medcine_id" and "order_id" = r."sell_order_no";',
'                    if medcineQuan = 0 then ',
'                        delete from "ph_orders_medcine" where "medcine_id" = r."medcine_id" and "order_id" = r."sell_order_no";',
'                    end if ; ',
'                    select "quantity" into QuantityStock from "ph_return_medcine" where "medcine_id" = r."medcine_id" and "return_order_id" = :P7_ORDER_ID;',
'                    select "sell_price" into SellPrice from "ph_medcine" where "medcine_id" = r."medcine_id";',
'',
'                    update "ph_invoice" set "total_price" = "total_price" - (QuantityStock * SellPrice)',
'                        where "order_id" = r."sell_order_no";',
'                    ',
'',
'                end if;',
'          end loop;',
'',
'     :P7_BRANCH := ''returned'';      ',
'end if ;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'order &P7_ORDER_ID. failed .',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14202356006481914)
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'order &P7_ORDER_ID. successfully completed',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(19305872120993607)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clearOrderData'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'3,4'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14202356006481914)
);
wwv_flow_imp.component_end;
end;
/
