prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Buy Order'
,p_alias=>'BUY-ORDER'
,p_step_title=>'Buy Order'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#styles#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.search',
'{',
'    margin-left:-50px ;',
'}',
'',
'.search::placeholder',
'{',
'    font-size: 20px;',
'    text-align: center;',
'}',
'',
'.search:hover',
'{',
'    color: rgb(103, 201, 88);',
'}',
'.wid',
'{',
'    width: 40px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231118021133'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12303172363927499)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6814904117922810)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6705368347922322)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(6876976300923024)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24706937930626599)
,p_name=>'medicine menu'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       "medcine_id",   ',
'      substr("medcine_name",1,20) as medcine_name, --substr(your_string, 1, 32760) to get limit number of character ',
'       "QUANTITY",',
'       "expired_date",',
'       "buy_price",',
'       "barcode_id"',
'       from "ph_medcine"',
'  where',
'  upper(''%''||"medcine_name"||''%'') like upper (''%''||:P4_SEARCH||''%'') ',
'  or',
'  "barcode_id" = :P4_SEARCH ; ',
'  ',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24707118445626600)
,p_query_column_id=>1
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24708229131626611)
,p_query_column_id=>2
,p_column_alias=>'MEDCINE_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Medcine Name'
,p_use_as_row_header=>'N'
,p_column_css_class=>'searchFormat'
,p_column_hit_highlight=>'&P4_SEARCH.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24707922130626608)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>70
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24707673727626606)
,p_query_column_id=>4
,p_column_alias=>'expired_date'
,p_column_display_sequence=>50
,p_column_heading=>'Expired Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24708516079626614)
,p_query_column_id=>5
,p_column_alias=>'buy_price'
,p_column_display_sequence=>60
,p_column_heading=>'Buy Price'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24708765672626617)
,p_query_column_id=>6
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Buy'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:18:P18_MEDICNE_ID,P18_ORDER_ID:#medcine_id#,&P4_ORDER_ID.'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-credit-card"></span>'
,p_column_link_attr=>'title="My Button" class="t-Button t-Button--noLabel t-Button--icon t-Button--success t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24708847033626618)
,p_query_column_id=>6
,p_column_alias=>'barcode_id'
,p_column_display_sequence=>40
,p_column_heading=>'Barcode Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24710609528626635)
,p_name=>'medicine  orders'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "order_id",',
'       "medcine_id",',
'       "quantitiy"',
'  from "ph_orders_medcine"',
'  where "order_id" = :P4_ORDER_ID;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4_ORDER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24711391335626643)
,p_query_column_id=>1
,p_column_alias=>'order_id'
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24711467365626644)
,p_query_column_id=>2
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>40
,p_column_heading=>'Medcine Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(13400597312436552)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24711552725626645)
,p_query_column_id=>3
,p_column_alias=>'quantitiy'
,p_column_display_sequence=>50
,p_column_heading=>'Quantitiy'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25601397570020000)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>30
,p_column_heading=>'Delete'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-trash"></span>'
,p_column_link_attr=>'title="#medcine_id#" class="  delete  t-Button t-Button--noLabel t-Button--icon t-Button--danger t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25603038122020017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(24710609528626635)
,p_button_name=>'Invoice'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Invoice'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ORDER_ID,P7_INVOICE_TYPE:&P4_ORDER_ID.,b'
,p_icon_css_classes=>'fa-newspaper-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25603251642020019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(24710609528626635)
,p_button_name=>'cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(25604716177020033)
,p_branch_name=>'goToHome'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(25603251642020019)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24708047150626610)
,p_name=>'P4_SEARCH'
,p_item_sequence=>30
,p_prompt=>'Search'
,p_placeholder=>'search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'search'
,p_field_template=>wwv_flow_imp.id(6872578399923000)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24710711418626636)
,p_name=>'P4_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25601713891020003)
,p_name=>'P4_MEDICINE_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(24708608537626615)
,p_name=>'search '
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_SEARCH'
,p_bind_type=>'live'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(24708679200626616)
,p_event_id=>wwv_flow_imp.id(24708608537626615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24706937930626599)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25601481318020001)
,p_name=>'DeleteMedcineFromOrdreList'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25601614924020002)
,p_event_id=>wwv_flow_imp.id(25601481318020001)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4_MEDICINE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this.triggeringElement.title',
''))
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25602103738020007)
,p_event_id=>wwv_flow_imp.id(25601481318020001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'',
'delete from "ph_orders_medcine" where "order_id" =:P4_ORDER_ID and "medcine_id" = :P4_MEDICINE_ID ; ',
'',
'end;'))
,p_attribute_02=>'P4_MEDICINE_ID,P4_ORDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25602329242020009)
,p_event_id=>wwv_flow_imp.id(25601481318020001)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24710609528626635)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25604570716020032)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'    ',
'        delete from "ph_orders_medcine" where "order_id" = :P4_ORDER_ID;',
'        delete from "ph_orders" where "order_id" = :P4_ORDER_ID;',
'      ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25603251642020019)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(25604736209020034)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clearPage'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'4'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(25603251642020019)
);
wwv_flow_imp.component_end;
end;
/
