prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'outgoings'
,p_alias=>'OUTGOINGS'
,p_step_title=>'outgoings'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231204123508'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(25604958034020036)
,p_name=>'Expenses '
,p_template=>wwv_flow_imp.id(6742125961922563)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "expenses_id",',
'       "money",',
'       EXPENSES_DATE',
'  from "ph_expenses"',
'  where ',
'        :P21_MONTH = 0 and   extract (year from expenses_date) = :P21_YEAR ',
'        or',
'        :P21_YEAR = 0 and extract(month from expenses_date) =:P21_MONTH  ',
'        or',
'        extract(month from expenses_date) = :P21_MONTH   and extract(year from expenses_date) = :P21_YEAR  ',
'        or',
'        :P21_MONTH = 0 and :P21_YEAR = 0 ;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P21_YEAR,P21_MONTH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<h1 style="text-align:center">No data in Table</h1>'
,p_report_total_text_format=>'Total'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25605034346020037)
,p_query_column_id=>1
,p_column_alias=>'expenses_id'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25605139133020038)
,p_query_column_id=>2
,p_column_alias=>'money'
,p_column_display_sequence=>30
,p_column_heading=>'Money'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25605275853020039)
,p_query_column_id=>3
,p_column_alias=>'EXPENSES_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Expenses Date'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_DATE,P16_TYPE:#EXPENSES_DATE#,b'
,p_column_linktext=>'#EXPENSES_DATE#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25605364868020040)
,p_plug_name=>'Contols'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27909124296113928)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40703744007108808)
,p_plug_name=>'Outcomings chart day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(40703973769108810)
,p_region_id=>wwv_flow_imp.id(40703744007108808)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(40704112964108811)
,p_chart_id=>wwv_flow_imp.id(40703973769108810)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       "money",',
'       extract(day from EXPENSES_DATE) as "date",',
'       to_char(EXPENSES_DATE,''YYYY-MM-DD'') as ex_date',
'   from "ph_expenses"',
'  where ',
'        :P21_MONTH = 0 and   extract (year from expenses_date) = :P21_YEAR ',
'        or',
'        :P21_YEAR = 0 and extract(month from expenses_date) =:P21_MONTH  ',
'        or',
'        extract(month from expenses_date) = :P21_MONTH   and extract(year from expenses_date) = :P21_YEAR  ',
'        or',
'        :P21_MONTH = 0 and :P21_YEAR = 0 ;'))
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'date'
,p_items_short_desc_column_name=>'EX_DATE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_items_label_font_color=>'#000000'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40703905494108809)
,p_plug_name=>'Outcoming chart month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(40704667310108817)
,p_region_id=>wwv_flow_imp.id(40703905494108809)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(40704828823108818)
,p_chart_id=>wwv_flow_imp.id(40704667310108817)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       sum("money") as "money",',
'       extract (month from EXPENSES_DATE)  as "date"       ',
'  from "ph_expenses"',
'  where ',
'        :P21_MONTH = 0 and   extract (year from expenses_date) = :P21_YEAR ',
'        or',
'        :P21_YEAR = 0 and extract(month from expenses_date) =:P21_MONTH  ',
'        or',
'        extract(month from expenses_date) = :P21_MONTH   and extract(year from expenses_date) = :P21_YEAR  ',
'        or',
'        :P21_MONTH = 0 and :P21_YEAR = 0 ',
'        group by extract (month from EXPENSES_DATE);'))
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'date'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_items_label_font_color=>'#111111'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25605459736020041)
,p_name=>'P21_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25605364868020040)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'extract (year from sysdate)',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(year) as D,',
'       to_char(year) as R from',
'(select 2015 + level as year from dual ',
'connect by level <= 200 );'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25605625775020042)
,p_name=>'P21_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25605364868020040)
,p_item_default=>'extract( month from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:January;1,February;2,March;3,April;4,May;5,June;6,July;7,August;8,September;9,October;10,November;11,December;12'
,p_lov_display_null=>'YES'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25605655445020043)
,p_name=>'P21_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(25605364868020040)
,p_prompt=>'Total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(25605784891020044)
,p_name=>'refreshTable'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_YEAR,P21_MONTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28709120886291097)
,p_event_id=>wwv_flow_imp.id(25605784891020044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'select sum("money") into :P21_TOTAL from "ph_expenses" where ',
'    :P21_MONTH = 0 and extract(year from expenses_date) = :P21_YEAR',
'    or ',
'    :P21_YEAR = 0 and extract(month from expenses_date) = :P21_MONTH ',
'    or ',
'    extract(month from expenses_date) = :P21_MONTH and extract(year from expenses_date) = :P21_YEAR',
'    or ',
'    :P21_MONTH = 0 and :P21_YEAR = 0 ;  ',
'',
'',
'end;'))
,p_attribute_02=>'P21_YEAR,P21_MONTH'
,p_attribute_03=>'P21_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(25605859704020045)
,p_event_id=>wwv_flow_imp.id(25605784891020044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(25604958034020036)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(28709318210291099)
,p_event_id=>wwv_flow_imp.id(25605784891020044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40704377751108814)
,p_event_id=>wwv_flow_imp.id(25605784891020044)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40703905494108809)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40704579243108816)
,p_event_id=>wwv_flow_imp.id(25605784891020044)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40703744007108808)
);
wwv_flow_imp.component_end;
end;
/
