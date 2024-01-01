prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Returns'
,p_alias=>'RETURNS'
,p_step_title=>'Returns'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231209111213'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4402396388185417)
,p_plug_name=>'Return Chart Month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(4402437225185418)
,p_region_id=>wwv_flow_imp.id(4402396388185417)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(4402564733185419)
,p_chart_id=>wwv_flow_imp.id(4402437225185418)
,p_seq=>10
,p_name=>'month'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   ',
'         extract ( month from "return_date")  as "date" ,',
'         sum("money") as "money"',
'        from "ph_return_medcine"',
'        where ',
'          (:P19_MONTH = extract (month from "return_date") or :P19_MONTH is null )',
'          and',
'          (:P19_YEAR = extract(year from "return_date") or :P19_YEAR is null )',
'        group by extract ( month from "return_date") ;',
'',
'        '))
,p_ajax_items_to_submit=>'P19_MONTH,P19_YEAR'
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'date'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_items_label_font_color=>'#0f0101'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10904041108601366)
,p_plug_name=>'Return Chart Day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>15
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(6502437293415998)
,p_region_id=>wwv_flow_imp.id(10904041108601366)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_fill_multi_series_gaps=>false
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>false
,p_show_start=>false
,p_show_end=>false
,p_show_progress=>false
,p_show_baseline=>false
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_show_gauge_value=>false
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(6502856753416001)
,p_chart_id=>wwv_flow_imp.id(6502437293415998)
,p_seq=>10
,p_name=>'day'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  to_char("return_date" , ''YYYY-MM-DD'') as "dat_disp",',
'       extract ( day from "return_date")  as "date" ,',
'         sum("money") as "money"',
'        from "ph_return_medcine"',
'        where ',
'          (:P19_MONTH = extract(month from "return_date") or :P19_MONTH is null)',
'          and ',
'          (:P19_YEAR = extract (year from "return_date") or :P19_YEAR is null)',
'        group by to_char("return_date" , ''YYYY-MM-DD'') ,extract ( day from "return_date")  ',
'        ;',
'',
'        '))
,p_ajax_items_to_submit=>'P19_MONTH,P19_YEAR'
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'date'
,p_items_short_desc_column_name=>'dat_disp'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_items_label_font_color=>'#0f0101'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34105452736172536)
,p_plug_name=>'contorls'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(34105569997172537)
,p_name=>'report'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>35
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select  extract(year from "return_date")||''-''||extract(month from "return_date")||''-''||extract(day from "return_date") as "return date",',
'--  sum("money") as money from "ph_return_medcine"',
'--  where ',
'--     (:P19_YEAR = extract(year from "return_date") or :P19_YEAR is null)',
'--     and ',
'--     (:P19_MONTH = extract(month from "return_date") or :P19_MONTH is null)',
'--   group by extract(DAY from "return_date"),extract(month from "return_date"),extract(year from "return_date") order by extract(day from"return_date") desc ;',
'',
'',
'-- select to_char("return_date",''YYYY-MM-DD'') as "return date" ,',
'--     sum("money") as "money" from "ph_return_medcine"',
'--  where ',
'--     (:P19_YEAR = extract(year from "return_date") or :P19_YEAR is null)',
'--     and ',
'--     (:P19_MONTH = extract(month from "return_date") or :P19_MONTH is null)',
'--   group by to_char("return_date",''YYYY-MM-DD'') desc ;',
'',
'select to_char("return_date",''YYYY-MM-DD'') as "return date" , sum("money") as money ',
'from  "ph_return_medcine"',
'   where ',
'    (:P19_YEAR = extract(year from "return_date") or :P19_YEAR is null)',
'    and ',
'    (:P19_MONTH = extract(month from "return_date") or :P19_MONTH is null)',
' group by to_char("return_date",''YYYY-MM-DD'') ;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P19_YEAR,P19_MONTH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34106095114172542)
,p_query_column_id=>1
,p_column_alias=>'return date'
,p_column_display_sequence=>10
,p_column_heading=>'Return Date'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_DATE,P16_TYPE:#return date#,r'
,p_column_linktext=>'#return date#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(34106202066172543)
,p_query_column_id=>2
,p_column_alias=>'MONEY'
,p_column_display_sequence=>20
,p_column_heading=>'Money'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38127836996230391)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34106280260172544)
,p_name=>'P19_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34105452736172536)
,p_item_default=>'extract(year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(year) d,',
'       to_char(year) r',
'from ',
'(',
'select 2018+level as year  from dual',
'connect by level <= 200 )',
'order by year;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34106379850172545)
,p_name=>'P19_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34105452736172536)
,p_item_default=>'extract(month from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:January;1,February;2,March;3,April;4,May;5,June;6,July;7,August;8,September;9,October;10,November;11,December;12'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(34106447004172546)
,p_name=>'P19_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34105452736172536)
,p_prompt=>'total'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38303210889261597)
,p_name=>'refresh Rejon'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_YEAR,P19_MONTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38303364928261599)
,p_event_id=>wwv_flow_imp.id(38303210889261597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'select sum("money") into :P19_TOTAL from "ph_return_medcine" ',
'',
'    where ',
'        (:P19_YEAR = extract(year from "return_date") or :P19_YEAR is null)',
'        and ',
'        (:P19_MONTH = extract(month from "return_date") or :P19_MONTH is null );',
'',
'',
'end;'))
,p_attribute_02=>'P19_YEAR,P19_MONTH'
,p_attribute_03=>'P19_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38303290498261598)
,p_event_id=>wwv_flow_imp.id(38303210889261597)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(34105569997172537)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4402642129185420)
,p_event_id=>wwv_flow_imp.id(38303210889261597)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10904041108601366)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4402748755185421)
,p_event_id=>wwv_flow_imp.id(38303210889261597)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4402396388185417)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38303460075261600)
,p_event_id=>wwv_flow_imp.id(38303210889261597)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P19_TOTAL'
);
wwv_flow_imp.component_end;
end;
/
