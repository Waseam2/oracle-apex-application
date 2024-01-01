prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Get Orders'
,p_alias=>'GET-ORDERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Get Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231116115942'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(28709911767291105)
,p_name=>'last orders'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "invoice_date",',
'       "user_id",',
'       "order_id",',
'       "type",',
'       "provider_id",',
'       "total_price"',
'  from "ph_invoice"',
'  where months_between("invoice_date" , sysdate) < 1 ; '))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(28710055460291107)
,p_query_column_id=>1
,p_column_alias=>'invoice_date'
,p_column_display_sequence=>20
,p_column_heading=>'Invoice Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28710220607291108)
,p_query_column_id=>2
,p_column_alias=>'user_id'
,p_column_display_sequence=>30
,p_column_heading=>'User Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20307843073975916)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28710255771291109)
,p_query_column_id=>3
,p_column_alias=>'order_id'
,p_column_display_sequence=>10
,p_column_heading=>'Order Id'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::P23_ORDER_ID:#order_id#'
,p_column_linktext=>'#order_id#'
,p_column_alignment=>'CENTER'
,p_default_sort_column_sequence=>8
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28710409114291110)
,p_query_column_id=>4
,p_column_alias=>'type'
,p_column_display_sequence=>50
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(20308255123003936)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28710484969291111)
,p_query_column_id=>5
,p_column_alias=>'provider_id'
,p_column_display_sequence=>60
,p_column_heading=>'Provider Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26101154785406035)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(28710618820291112)
,p_query_column_id=>6
,p_column_alias=>'total_price'
,p_column_display_sequence=>70
,p_column_heading=>'Total Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
