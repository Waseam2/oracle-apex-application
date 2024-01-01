prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Invoice'
,p_alias=>'INVOICE1'
,p_step_title=>'Invoice'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231208130944'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(19305964111993608)
,p_name=>'invoices'
,p_template=>wwv_flow_imp.id(6742125961922563)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "invoice_id",',
'       "invoice_date",',
'       "user_id",',
'       "order_id",',
'       "type",',
'       "provider_id",',
'       "total_price",',
'       "client_name"',
'      ',
'',
'  from "ph_invoice" ',
'  where "invoice_date" like (''%''||:P16_DATE||''%'')',
'    and   ',
'        "order_id" like (''%''||:P16_ORDER_ID ||''%'')',
'    and  ',
'        "type"  like  (''%''||:P16_TYPE||''%'') ; ',
' ',
'    '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P16_DATE,P16_TYPE,P16_ORDER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'not found'
,p_query_no_data_found=>'<h1> no invoice found </h1>'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19306065103993609)
,p_query_column_id=>1
,p_column_alias=>'invoice_id'
,p_column_display_sequence=>10
,p_column_heading=>'show bill'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.:hide:&DEBUG.:7:P7_ORDER_ID,P7_INVOICE_TYPE,P7_DATE,P7_CLIENT_NAME:#order_id#,#type#,#invoice_date#,#client_name#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-file-text-o"></span>'
,p_column_link_attr=>'title="invoice" class="t-Button t-Button--noLabel t-Button--icon t-Button--success t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19306210862993610)
,p_query_column_id=>2
,p_column_alias=>'invoice_date'
,p_column_display_sequence=>20
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19306294831993611)
,p_query_column_id=>3
,p_column_alias=>'user_id'
,p_column_display_sequence=>30
,p_column_heading=>'User Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20307843073975916)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19306396950993612)
,p_query_column_id=>4
,p_column_alias=>'order_id'
,p_column_display_sequence=>40
,p_column_heading=>'Order Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19306483364993613)
,p_query_column_id=>5
,p_column_alias=>'type'
,p_column_display_sequence=>50
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20308255123003936)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19306631269993614)
,p_query_column_id=>6
,p_column_alias=>'provider_id'
,p_column_display_sequence=>60
,p_column_heading=>'Provider Id'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(19306671141993615)
,p_query_column_id=>7
,p_column_alias=>'total_price'
,p_column_display_sequence=>70
,p_column_heading=>'Total Price'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(31713172920244113)
,p_query_column_id=>8
,p_column_alias=>'client_name'
,p_column_display_sequence=>80
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19307025558993618)
,p_name=>'P16_DATE'
,p_item_sequence=>10
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(19307600621993624)
,p_name=>'P16_TYPE'
,p_item_sequence=>20
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:sell invoice;s,buy invoice;b,return invoice;r'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'no type'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19307659936993625)
,p_name=>'P16_ORDER_ID'
,p_item_sequence=>30
,p_prompt=>'order id'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19307129270993619)
,p_name=>'dateRfresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_DATE,P16_TYPE,P16_ORDER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19307164123993620)
,p_event_id=>wwv_flow_imp.id(19307129270993619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19305964111993608)
);
wwv_flow_imp.component_end;
end;
/
