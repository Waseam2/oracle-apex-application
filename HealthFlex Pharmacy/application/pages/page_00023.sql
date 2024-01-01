prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Returned Order'
,p_alias=>'RETURNED-ORDER'
,p_step_title=>'Returned Order'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231128085757'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28709390409291100)
,p_plug_name=>'Get information '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(28710661087291113)
,p_name=>'Invoice Detalis'
,p_parent_plug_id=>wwv_flow_imp.id(28709390409291100)
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."invoice_id",',
'       v."invoice_date",',
'       v."order_id",',
'       v."total_price",',
'       v."client_name"',
'  from "ph_invoice" v join "ph_orders_medcine" o',
'on v."order_id" = o."order_id"',
'where ',
'v."type" =''s''  and months_between(sysdate , v."invoice_date") < :RETURNED_DURATION and',
'',
'   ( (o."medcine_id" = (select  "medcine_id" from "ph_medcine" where "barcode_id" = :P23_MEDCINE_SEARCH fetch first 1 row only ) or :P23_MEDCINE_SEARCH is null) ',
'      or  ',
'      (o."medcine_id" = (select "medcine_id" from "ph_medcine" where "medcine_name" like ''%''||:P23_MEDCINE_SEARCH ||''%'' order by length("medcine_name") fetch first 1 row only ) or :P23_MEDCINE_SEARCH is null)',
'   )'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_MEDCINE_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34104917366172530)
,p_query_column_id=>1
,p_column_alias=>'invoice_id'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34104943656172531)
,p_query_column_id=>2
,p_column_alias=>'invoice_date'
,p_column_display_sequence=>40
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34105093053172532)
,p_query_column_id=>3
,p_column_alias=>'order_id'
,p_column_display_sequence=>20
,p_column_heading=>'Order Id'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::P25_ORDER_ID:#order_id#'
,p_column_linktext=>'#order_id#'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34105132902172533)
,p_query_column_id=>4
,p_column_alias=>'total_price'
,p_column_display_sequence=>50
,p_column_heading=>'Total Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34105312035172534)
,p_query_column_id=>5
,p_column_alias=>'client_name'
,p_column_display_sequence=>60
,p_column_heading=>'Client Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31713520427244116)
,p_name=>'Invoice Detalis'
,p_parent_plug_id=>wwv_flow_imp.id(28709390409291100)
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "invoice_id",',
'       "invoice_date",',
'       "order_id",',
'       "total_price",',
'       "client_name"',
'  from "ph_invoice"',
'  where ',
'    "type" = ''s'' ',
'    and ',
'    ((upper("client_name") like upper(''%''||:P23_CLIENT_NAME ||''%'') and "order_id" = :P23_ORDER_NO) ',
'    OR   ',
'    (:P23_CLIENT_NAME is null and "order_id" = :P23_ORDER_NO)',
'    or   ',
'    (upper("client_name") like upper(''%''||:P23_CLIENT_NAME ||''%'') and :P23_ORDER_NO is null )',
'    or    ',
'    :P23_ORDER_NO is null and :P23_CLIENT_NAME is null ) and months_between(sysdate, "invoice_date") < :RETURNED_DURATION',
'    ',
'    ',
'    ',
'    ',
'    ;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_MEDCINE_SEARCH,P23_ORDER_NO,P23_CLIENT_NAME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31713586150244117)
,p_query_column_id=>1
,p_column_alias=>'invoice_id'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31713666893244118)
,p_query_column_id=>2
,p_column_alias=>'invoice_date'
,p_column_display_sequence=>30
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31713919233244120)
,p_query_column_id=>3
,p_column_alias=>'order_id'
,p_column_display_sequence=>20
,p_column_heading=>'Order Id'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:25:&SESSION.:hide:&DEBUG.:25:P25_ORDER_ID:#order_id#'
,p_column_linktext=>'#order_id#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31714229284244123)
,p_query_column_id=>4
,p_column_alias=>'total_price'
,p_column_display_sequence=>50
,p_column_heading=>'Total Price'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31714269227244124)
,p_query_column_id=>5
,p_column_alias=>'client_name'
,p_column_display_sequence=>60
,p_column_heading=>'Client Name'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(28712960119291136)
,p_name=>'Return Order'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       "medcine_id",',
'       "quantitiy"',
'  from "ph_orders_medcine"',
'',
'  where "order_id" = :P23_ORDER_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_ORDER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28713702574291143)
,p_query_column_id=>1
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>20
,p_column_heading=>'Medcine Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(13400597312436552)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28713812395291144)
,p_query_column_id=>2
,p_column_alias=>'quantitiy'
,p_column_display_sequence=>30
,p_column_heading=>'Quantitiy'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31711710819244098)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Delete'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-trash"></span>'
,p_column_link_attr=>'title="#medcine_id#" class=" delete t-Button t-Button--noLabel t-Button--icon t-Button--danger t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(29106333627879363)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6814904117922810)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6705368347922322)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(6876976300923024)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31712475216244106)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28712960119291136)
,p_button_name=>'done'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Done'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ORDER_ID,P7_INVOICE_TYPE:&P23_ORDER_ID.,r'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31712417894244105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(28712960119291136)
,p_button_name=>'cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31712720993244108)
,p_branch_name=>'goToHome'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31712417894244105)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28709569867291102)
,p_name=>'P23_MEDCINE_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(28709390409291100)
,p_prompt=>'Medcine Search'
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
 p_id=>wwv_flow_imp.id(28713181710291138)
,p_name=>'P23_ORDER_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31712128717244102)
,p_name=>'P23_MEDCINE_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31713279186244114)
,p_name=>'P23_ORDER_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(28709390409291100)
,p_prompt=>'Order Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31713378822244115)
,p_name=>'P23_CLIENT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(28709390409291100)
,p_prompt=>'Client Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34104522962172526)
,p_name=>'P23_SELLORDER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28712960119291136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(28711197330291118)
,p_name=>'getInformation'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_MEDCINE_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28711247989291119)
,p_event_id=>wwv_flow_imp.id(28711197330291118)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28710661087291113)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31714762706244129)
,p_event_id=>wwv_flow_imp.id(28711197330291118)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31713520427244116)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31714998503244131)
,p_event_id=>wwv_flow_imp.id(28711197330291118)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28710661087291113)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31711787801244099)
,p_name=>'deleteFromReturnOrder'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31711936632244101)
,p_event_id=>wwv_flow_imp.id(31711787801244099)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_MEDCINE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31712291511244104)
,p_event_id=>wwv_flow_imp.id(31711787801244099)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'',
'Sell_order number(10) := 0 ; ',
'SellQuantity number(10) := 0;',
'sellDate date ;',
'sellPrice number(10) := 0 ; ',
'',
'begin',
'----------------------------------------------get sell price for income table ----------------',
'select "sell_price" into sellPrice from "ph_medcine" where "medcine_id" = :P23_MEDCINE_ID ; ',
'-------------------------------------------------------------------------------',
'select "sell_order_no" , "quantity" , "sell_date"  into sell_order , sellQuantity,sellDate  from "ph_return_medcine"',
'    where  "return_order_id" = :P23_ORDER_ID; ',
'',
'----------------------------end query----------------------------------------------------------',
'--////////////////////////////////////////////////////////////////////////////////////////////',
'------------------------ return every medcine to sell order ----------------------------------',
'   ',
'            update "ph_orders_medcine" set "quantitiy" = "quantitiy" + sellQuantity',
'                where "medcine_id" = :P23_MEDCINE_ID and "order_id" = sell_order; ',
'                --------------delete the medicine in return order table  ------------------------------------------',
'     delete from "ph_orders_medcine" where "medcine_id" = :P23_MEDCINE_ID and "order_id" = :P23_ORDER_ID ; ',
'            --delete the quantity from the stock--',
'            update "ph_medcine" set "QUANTITY" = "QUANTITY" - sellQuantity where "medcine_id" = :P23_MEDCINE_ID;',
'        ',
'    --------------------- Delete medcine from Ph_return_medcine ---------------------------',
'        delete from "ph_return_medcine" where "medcine_id" = :P23_MEDCINE_ID and "return_order_id" = :P23_ORDER_ID;    ',
'    ------------- increase the money in income table if delete retured order -----------------------',
'',
'    update "ph_income" set "money" = "money" + (sellQuantity *sellPrice )  where  "income_date" = sellDate;',
'end;'))
,p_attribute_02=>'P23_MEDCINE_ID,P23_ORDER_NO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31712137454244103)
,p_event_id=>wwv_flow_imp.id(31711787801244099)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28712960119291136)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31714380552244125)
,p_name=>'RefreshIvoiceDetails'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_ORDER_NO,P23_CLIENT_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31714463510244126)
,p_event_id=>wwv_flow_imp.id(31714380552244125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31713520427244116)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31714865592244130)
,p_event_id=>wwv_flow_imp.id(31714380552244125)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(28710661087291113)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31715096177244132)
,p_event_id=>wwv_flow_imp.id(31714380552244125)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31713520427244116)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31712605563244107)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'cursor DelData is select "quantity" , "sell_order_no" , "medcine_id" , "sell_date" from "ph_return_medcine" where "return_order_id" = :P23_ORDER_ID;',
'sellPrice number(10) := 0 ; ',
'begin ',
'',
'    for i in DelData ',
'    loop',
'        select "sell_price" into sellPrice from "ph_medcine" where "medcine_id" = i."medcine_id";',
'        update "ph_orders_medcine" set "quantitiy" = "quantitiy" + i."quantity" ',
'        where "medcine_id" = i."medcine_id" and "order_id" = i."sell_order_no";',
'        ----update medcine quantitiy in the stock---------',
'        update "ph_medcine" set "QUANTITY" = "QUANTITY" - i."quantity" where "medcine_id" = i."medcine_id";',
'        --------------update income table increase money if cancel the retrued order -------------------',
'        update "ph_income" set "money" = "money" + ( sellPrice * i."quantity")  where "income_date" = i."sell_date";',
'    end loop;',
'',
'delete from "ph_orders_medcine" where "order_id" = :P23_ORDER_ID ; ',
'--delete from "ph_orders" where "order_id" = :P23_ORDER_ID ;',
'delete from "ph_return_medcine" where "return_order_id" = :P23_ORDER_ID ; ',
'',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(31712417894244105)
);
wwv_flow_imp.component_end;
end;
/
