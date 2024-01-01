prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Income'
,p_alias=>'INCOME'
,p_step_title=>'Income'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231204123831'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20631351713889621)
,p_plug_name=>'controls'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(23802265181841591)
,p_name=>'Income'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "income_id",',
'       "money",',
'       "income_date"',
'  from "ph_income"  ',
'  where  ',
'     -------------- first case if  you want to filter the content with month-----------',
'         :P20_YEAR = 0  and (  extract(month from "income_date") = :P20_MONTH )',
'         or',
'     --------------- second case if you want to filter the content with year-------------------',
'         :P20_MONTH = 0 and (extract(year from "income_date") = :P20_YEAR)',
'         or ',
'     ----------------third case if you want to filter the content with year and month ',
'         extract(month from "income_date") = :P20_MONTH ',
'         and  ',
'         extract(year from "income_date") = :P20_YEAR',
'         or ',
'           :P20_MONTH=0 and :P20_YEAR =0 ;',
'      ',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P20_YEAR,P20_MONTH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<h2> No Data found in Incoming </h2>'
,p_query_row_count_max=>500
,p_report_total_text_format=>'Total profits'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(23802582025841669)
,p_query_column_id=>1
,p_column_alias=>'income_id'
,p_column_display_sequence=>0
,p_column_heading=>'Income ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(23803023692841683)
,p_query_column_id=>2
,p_column_alias=>'money'
,p_column_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(23803385680841683)
,p_query_column_id=>3
,p_column_alias=>'income_date'
,p_column_display_sequence=>10
,p_column_heading=>'Income Date'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_DATE,P16_TYPE:#income_date#,s'
,p_column_linktext=>'#income_date#'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28709177930291098)
,p_plug_name=>'Income'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6814904117922810)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6705368347922322)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(6876976300923024)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38307470945261640)
,p_plug_name=>'Income Chart day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(38307575096261641)
,p_region_id=>wwv_flow_imp.id(38307470945261640)
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
 p_id=>wwv_flow_imp.id(38307731104261642)
,p_chart_id=>wwv_flow_imp.id(38307575096261641)
,p_seq=>10
,p_name=>'income chart  with day '
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       "money" as "money",',
'       extract (day from "income_date") as "date",',
'       to_char("income_date",''YYYY-MM-DD'') as full_date',
'  from "ph_income"  ',
'  where  ',
'     -------------- first case if  you want to filter the content with month-----------',
'         :P20_YEAR = 0  and (  extract(month from "income_date") = :P20_MONTH )',
'         or',
'     --------------- second case if you want to filter the content with year-------------------',
'         :P20_MONTH = 0 and (extract(year from "income_date") = :P20_YEAR)',
'         or ',
'     ----------------third case if you want to filter the content with year and month ',
'         extract(month from "income_date") = :P20_MONTH ',
'         and  ',
'         extract(year from "income_date") = :P20_YEAR',
'         or ',
'           :P20_MONTH=0 and :P20_YEAR =0 ',
'           order by extract(day from "income_date") ;',
'      ',
''))
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'date'
,p_items_short_desc_column_name=>'FULL_DATE'
,p_custom_column_name=>'money'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_items_label_font_color=>'#6d0404'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(40702699347108797)
,p_plug_name=>'Income Chart month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(40702822975108798)
,p_region_id=>wwv_flow_imp.id(40702699347108797)
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
 p_id=>wwv_flow_imp.id(40702990926108800)
,p_chart_id=>wwv_flow_imp.id(40702822975108798)
,p_seq=>20
,p_name=>'income chart  with month'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'          sum("money") as "money",',
'        extract (month from "income_date") as "date"',
'  from "ph_income"  ',
'  where  ',
'     -------------- first case if  you want to filter the content with month-----------',
'         :P20_YEAR = 0  and (  extract(month from "income_date") = :P20_MONTH )',
'         or',
'     --------------- second case if you want to filter the content with year-------------------',
'         :P20_MONTH = 0 and (extract(year from "income_date") = :P20_YEAR)',
'         or ',
'     ----------------third case if you want to filter the content with year and month ',
'         extract(month from "income_date") = :P20_MONTH ',
'         and  ',
'         extract(year from "income_date") = :P20_YEAR',
'         or ',
'           :P20_MONTH=0 and :P20_YEAR =0 ',
'           group by extract (month from "income_date");',
'      ',
''))
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'date'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_items_label_font_color=>'#1e1c21'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20631487138889622)
,p_name=>'P20_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20631351713889621)
,p_item_default=>'extract(year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(YEAR) AS D',
'     , TO_CHAR(YEAR) AS R',
'  FROM ( SELECT 2018+LEVEL AS YEAR',
'           FROM DUAL',
'        CONNECT BY LEVEL <= TO_NUMBER(TO_CHAR(SYSDATE  , ''YYYY'')) - 1800',
'       )',
' ORDER BY YEAR'))
,p_lov_display_null=>'YES'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20631557873889623)
,p_name=>'P20_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20631351713889621)
,p_item_default=>'extract(month from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:January;1,February;2,March;3,April;4,May;5,June;6,July;7,August;8,September;9,October;10,November ;11,December;12'
,p_lov_display_null=>'YES'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20632274450889630)
,p_name=>'P20_TOTAL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20631351713889621)
,p_item_default=>':income'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>1000
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20632079581889628)
,p_name=>'refreshRejon'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_YEAR,P20_MONTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20632914491889636)
,p_event_id=>wwv_flow_imp.id(20632079581889628)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' begin',
'',
'select sum("money") into :P20_TOTAL  from "ph_income" where ',
'        :P20_MONTH = 0 and extract (year from "income_date") = :P20_YEAR ',
'        or',
'        :P20_YEAR = 0 and extract  (month from "income_date") = :P20_MONTH',
'        or',
'        extract (year from "income_date") = :P20_YEAR and extract(month from "income_date") = :P20_MONTH',
'        or',
'        :P20_MONTH = 0 and :P20_YEAR = 0 ;',
'',
'end ; '))
,p_attribute_02=>'P20_MONTH,P20_YEAR'
,p_attribute_03=>'P20_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20632222696889629)
,p_event_id=>wwv_flow_imp.id(20632079581889628)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(23802265181841591)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20632471684889632)
,p_event_id=>wwv_flow_imp.id(20632079581889628)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_TOTAL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40703560254108806)
,p_event_id=>wwv_flow_imp.id(20632079581889628)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38307470945261640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(40703641348108807)
,p_event_id=>wwv_flow_imp.id(20632079581889628)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(40702699347108797)
);
wwv_flow_imp.component_end;
end;
/
