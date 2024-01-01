prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'retruned Page'
,p_alias=>'RETRUNED-PAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'retruned Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231128060251'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31715324531244134)
,p_plug_name=>'get Data'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(31715377867244235)
,p_name=>'medicine data'
,p_parent_plug_id=>wwv_flow_imp.id(31715324531244134)
,p_template=>wwv_flow_imp.id(6797869184922772)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "order_id",',
'       "medcine_id",',
'       "quantitiy"',
'  from "ph_orders_medcine"',
'    where "order_id" = :P25_ORDER_ID ;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P25_ORDER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>20
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34102329049172504)
,p_query_column_id=>1
,p_column_alias=>'order_id'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34102338372172505)
,p_query_column_id=>2
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(34102485834172506)
,p_query_column_id=>3
,p_column_alias=>'quantitiy'
,p_column_display_sequence=>50
,p_column_heading=>'Quantitiy'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34102701139172508)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>20
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:Y,27:P27_ORDER_ID,P27_MEDCINE_NAME,P27_QUANTITYHIDDEN:#order_id#,#medcine_id#,#quantitiy#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-pencil-square"></span>'
,p_column_link_attr=>'title="My Button" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31715153895244133)
,p_name=>'P25_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
