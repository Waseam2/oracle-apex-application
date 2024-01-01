prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'annual financial report'
,p_alias=>'ANNUAL_FINANCIAL_REPORT'
,p_step_title=>'annual financial report'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231204123704'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38303608551261601)
,p_plug_name=>'chart'
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
 p_id=>wwv_flow_imp.id(38303708030261602)
,p_region_id=>wwv_flow_imp.id(38303608551261601)
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
 p_id=>wwv_flow_imp.id(38303783368261603)
,p_chart_id=>wwv_flow_imp.id(38303708030261602)
,p_seq=>10
,p_name=>'Annual Income chart'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(year from"income_date") as dat ,sum("money") as money, ''sell'' as type from "ph_income"  ',
'where extract(year from "income_date") = :P29_YEAR',
'group by extract(year from "income_date")  ',
'',
'union all ',
'',
'select  extract(year from "EXPENSES_DATE") as dat , sum("money") as money , ''buy'' as type from "ph_expenses" ',
'where extract(year from "EXPENSES_DATE") = :P29_YEAR',
'group by extract(year from "EXPENSES_DATE") ',
'',
'union all ',
'',
'select extract (year from "return_date") as dat , sum("money") as money , ''return'' as type from "ph_return_medcine"',
'where  extract(year from "return_date") =  :P29_YEAR ',
'group by extract(year from "return_date")'))
,p_ajax_items_to_submit=>'P29_YEAR'
,p_items_value_column_name=>'MONEY'
,p_items_label_column_name=>'TYPE'
,p_custom_column_name=>'MONEY'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_items_label_font_family=>'Times New Roman'
,p_items_label_font_style=>'italic'
,p_items_label_font_size=>'18'
,p_items_label_font_color=>'#5951f7'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(38306492416261630)
,p_name=>'Annual Income'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(year from"income_date") as dat ,sum("money") as money, ''sell'' as type from "ph_income"  ',
'where extract(year from "income_date") = :P29_YEAR',
'group by extract(year from "income_date")  ',
'',
'union all ',
'',
'select  extract(year from "EXPENSES_DATE") as dat , sum("money") * -1 as money , ''buy'' as type from "ph_expenses" ',
'where extract(year from "EXPENSES_DATE") = :P29_YEAR',
'group by extract(year from "EXPENSES_DATE") ',
'',
'-- union all ',
'',
'-- select extract (year from "return_date") as dat , sum("money") * -1  as money , ''return'' as type from "ph_return_medcine"',
'-- where  extract(year from "return_date") =  :P29_YEAR ',
'-- group by extract(year from "return_date")'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P29_YEAR'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_report_total_text_format=>'Net profit'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'data'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38307251436261638)
,p_query_column_id=>1
,p_column_alias=>'DAT'
,p_column_display_sequence=>10
,p_column_heading=>'Date'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(38306976977261635)
,p_query_column_id=>2
,p_column_alias=>'MONEY'
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
 p_id=>wwv_flow_imp.id(38306817760261633)
,p_query_column_id=>3
,p_column_alias=>'TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38419098168856963)
,p_plug_name=>'annual financial report'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(38306908240261634)
,p_name=>'P29_YEAR'
,p_item_sequence=>10
,p_item_default=>'extract(year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(year) as d ,',
'       to_char(year) as r ',
'      from (',
'          select 2018+level as year',
'           from dual ',
'            connect by level <= 200 ',
'      )',
'     order by year ',
'     ',
'----------------------------------------',
'',
'-- SELECT TO_CHAR(YEAR) AS D',
'--      , TO_CHAR(YEAR) AS R',
'--   FROM ( SELECT 2018+LEVEL AS YEAR',
'--            FROM DUAL',
'--         CONNECT BY LEVEL <= TO_NUMBER(TO_CHAR(SYSDATE  , ''YYYY'')) - 1800',
'--        )',
'--  ORDER BY YEAR'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(38307095456261636)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P29_YEAR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38307186708261637)
,p_event_id=>wwv_flow_imp.id(38307095456261636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38306492416261630)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(38307429241261639)
,p_event_id=>wwv_flow_imp.id(38307095456261636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(38303608551261601)
);
wwv_flow_imp.component_end;
end;
/
