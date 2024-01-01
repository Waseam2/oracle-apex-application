prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Statistics'
,p_alias=>'STATISTICS'
,p_step_title=>'Statistics'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231231120214'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13400859564780715)
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
 p_id=>wwv_flow_imp.id(13501107014891511)
,p_plug_name=>'Income & Expenses '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13501238765891512)
,p_region_id=>wwv_flow_imp.id(13501107014891511)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_title=>'Months & Year'
,p_legend_position=>'end'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13501373895891513)
,p_chart_id=>wwv_flow_imp.id(13501238765891512)
,p_seq=>10
,p_name=>'compare months '
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(month from "income_date") as "date" , sum("money") as "money" , ''income'' as "type" from "ph_income"',
'where ',
'    (extract(month from "income_date") = :P30_MONTH or :P30_MONTH is null)',
'    and ',
'    (extract (year from "income_date") = :P30_YEAR or :P30_YEAR is null )',
'group by extract(month from "income_date") ',
'',
'union all',
'',
'select extract(month from EXPENSES_DATE) as "date" , sum("money") as "money" , ''expeneses'' as "type" from "ph_expenses"',
'where ',
'    (extract(month from "EXPENSES_DATE") = :P30_MONTH or :P30_MONTH is null)',
'    and ',
'    (extract(year from "EXPENSES_DATE") = :P30_YEAR or :P30_YEAR is null) ',
'group by extract(month from EXPENSES_DATE) ;',
'',
''))
,p_ajax_items_to_submit=>'P30_YEAR,P30_MONTH'
,p_series_name_column_name=>'date'
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'type'
,p_items_short_desc_column_name=>'type'
,p_custom_column_name=>'date'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13503199053891531)
,p_chart_id=>wwv_flow_imp.id(13501238765891512)
,p_seq=>20
,p_name=>'compare years'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select extract(year from "income_date") as "date" , sum("money") as "money" , ''income'' as "type" from "ph_income"',
'where extract(year from "income_date") = :P30_YEAR',
'group by extract(year from "income_date") ',
'',
'union all',
'',
'select extract(year from EXPENSES_DATE) as "date" , sum("money") as "money" , ''expeneses'' as "type" from "ph_expenses"',
'where extract(year from "EXPENSES_DATE") = :P30_YEAR',
'group by extract(year from EXPENSES_DATE) ;',
'',
''))
,p_ajax_items_to_submit=>'P30_YEAR'
,p_series_name_column_name=>'date'
,p_items_value_column_name=>'money'
,p_group_name_column_name=>'money'
,p_group_short_desc_column_name=>'money'
,p_items_label_column_name=>'type'
,p_items_short_desc_column_name=>'money'
,p_custom_column_name=>'money'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(13502924560891529)
,p_chart_id=>wwv_flow_imp.id(13501238765891512)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(13503068895891530)
,p_chart_id=>wwv_flow_imp.id(13501238765891512)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13501891578891518)
,p_plug_name=>'comming soon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6742125961922563)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<h1 style="text-align:center;text-transform:capitalize;">comming soon ......! </h1>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13503281540891532)
,p_plug_name=>'best-selling medicne'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(13503724292891537)
,p_region_id=>wwv_flow_imp.id(13503281540891532)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(13503895461891538)
,p_chart_id=>wwv_flow_imp.id(13503724292891537)
,p_seq=>10
,p_name=>'best seller'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select "medcine_name" from "ph_medcine" m where m."medcine_id" = o."medcine_id" ) as medcine_name,',
' sum("quantitiy") as quantity from "ph_orders_medcine" o , "ph_orders" d , "ph_invoice" v',
' where o."order_id" = d."order_id" and o."order_id" = v."order_id" and d."type" = ''s'' ',
'    and ',
'        (extract (month from v."invoice_date") = :P30_MONTH_BEST_SELLER or  :P30_MONTH_BEST_SELLER is null )',
'    and ',
'        (extract (year from v."invoice_date") = :P30_YEAR_BEST_SELLER or :P30_YEAR_BEST_SELLER is null )',
'    ',
' ',
'',
'group by "medcine_id"  order by  sum("quantitiy") desc',
'',
'fetch first :P30_TOP  row only ; '))
,p_ajax_items_to_submit=>'P30_YEAR_BEST_SELLER,P30_MONTH_BEST_SELLER,P30_TOP'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'MEDCINE_NAME'
,p_items_short_desc_column_name=>'MEDCINE_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(13504313675891543)
,p_chart_id=>wwv_flow_imp.id(13503724292891537)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(13504440860891544)
,p_chart_id=>wwv_flow_imp.id(13503724292891537)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19000181312605301)
,p_plug_name=>'User Activity'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19000200676605302)
,p_region_id=>wwv_flow_imp.id(19000181312605301)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19000379920605303)
,p_chart_id=>wwv_flow_imp.id(19000200676605302)
,p_seq=>10
,p_name=>'user Activity'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "user_name",',
'sum(extract(hour from ("logout_date" - "login_date"))+ extract(minute from ("logout_date" - "login_date"))/60 ) as "login hours",',
'"user_name" || ''  '' ||round(sum(extract(hour from ("logout_date" - "login_date"))+ extract(minute from ("logout_date" - "login_date"))/60 ),2)||'' Hours'' as tooltip',
'from "ph_user_activity"',
'where ',
'    (extract (month from ("login_date")) = :P30_MONTH_USER_ACTIVITY or :P30_MONTH_USER_ACTIVITY is null)',
'   and',
'    (extract (year from ("login_date")) = :P30_YEAR_USER_ACTIVITY or :P30_YEAR_USER_ACTIVITY is null)',
'    ',
'group by "user_name"',
'order by "login hours" desc ;',
'',
''))
,p_ajax_items_to_submit=>'P30_MONTH_USER_ACTIVITY,P30_YEAR_USER_ACTIVITY'
,p_items_value_column_name=>'login hours'
,p_items_label_column_name=>'user_name'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_custom_column_name=>'user_name'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19001094493605310)
,p_chart_id=>wwv_flow_imp.id(19000200676605302)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19001146909605311)
,p_chart_id=>wwv_flow_imp.id(19000200676605302)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19001600445605316)
,p_plug_name=>'Providers Medicine'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19001777427605317)
,p_region_id=>wwv_flow_imp.id(19001600445605316)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19001870780605318)
,p_chart_id=>wwv_flow_imp.id(19001777427605317)
,p_seq=>10
,p_name=>'Provider Medcine'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "medcine_name"  , "QUANTITY"  , "medcine_name"|| ''  ''||CHR(13)|| "QUANTITY" as tooltip',
'from "ph_medcine"  ',
' where provider_id = :P30_PROVIDER_NAME or :P30_PROVIDER_NAME is null ; '))
,p_ajax_items_to_submit=>'P30_PROVIDER_NAME'
,p_items_value_column_name=>'QUANTITY'
,p_items_label_column_name=>'medcine_name'
,p_items_short_desc_column_name=>'TOOLTIP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19001926915605319)
,p_chart_id=>wwv_flow_imp.id(19001777427605317)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19002091541605320)
,p_chart_id=>wwv_flow_imp.id(19001777427605317)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19002405941605324)
,p_plug_name=>'Income In Day '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>70
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19002526102605325)
,p_region_id=>wwv_flow_imp.id(19002405941605324)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19002687361605326)
,p_chart_id=>wwv_flow_imp.id(19002526102605325)
,p_seq=>10
,p_name=>'Income'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char("income_date",''YYYY-MM-DD'') as "in_date" , "money" ',
'',
'from "ph_income"',
'',
'where (:P30_YEAR_INCOME = extract(year from "income_date") or :P30_YEAR_INCOME is null)',
'     and ',
'      (:P30_MONTH_INCOME = extract(month from "income_date") or :P30_MONTH is null)',
''))
,p_ajax_items_to_submit=>'P30_YEAR_INCOME,P30_MONTH_INCOME'
,p_series_name_column_name=>'in_date'
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'in_date'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19002713242605327)
,p_chart_id=>wwv_flow_imp.id(19002526102605325)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19002802472605328)
,p_chart_id=>wwv_flow_imp.id(19002526102605325)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19003352580605333)
,p_plug_name=>'Income In Month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19003423646605334)
,p_region_id=>wwv_flow_imp.id(19003352580605333)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(19003542220605335)
,p_chart_id=>wwv_flow_imp.id(19003423646605334)
,p_seq=>10
,p_name=>'Income In Month'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char("income_date",''YYYY-MM'') as "in_date" , sum("money") as "money"',
'',
'from "ph_income" ',
'where ',
'    :P30_YEAR_INCOME_MONTH = extract(year from "income_date")',
'group by to_char("income_date", ''YYYY-MM'')',
'',
'',
'',
''))
,p_ajax_items_to_submit=>'P30_YEAR_INCOME_MONTH'
,p_series_name_column_name=>'in_date'
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'in_date'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19003677553605336)
,p_chart_id=>wwv_flow_imp.id(19003423646605334)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(19003776957605337)
,p_chart_id=>wwv_flow_imp.id(19003423646605334)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19004978400605349)
,p_plug_name=>'Expenses In Month'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(19005097322605350)
,p_region_id=>wwv_flow_imp.id(19004978400605349)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(20100535279048601)
,p_chart_id=>wwv_flow_imp.id(19005097322605350)
,p_seq=>10
,p_name=>'expenses in month'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(EXPENSES_DATE,''YYYY-MM'' ) as Ex_Date, sum("money") as "money"',
'from "ph_expenses" ',
'where :P30_YEAR_EXPENSES = extract (year from EXPENSES_DATE)',
'group by to_char(expenses_date,''YYYY-MM'' )'))
,p_ajax_items_to_submit=>'P30_YEAR_EXPENSES'
,p_series_name_column_name=>'EX_DATE'
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'EX_DATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(20100677659048602)
,p_chart_id=>wwv_flow_imp.id(19005097322605350)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(20100790968048603)
,p_chart_id=>wwv_flow_imp.id(19005097322605350)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20101152856048607)
,p_plug_name=>'Expenses In Day'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(20101232890048608)
,p_region_id=>wwv_flow_imp.id(20101152856048607)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(20101330825048609)
,p_chart_id=>wwv_flow_imp.id(20101232890048608)
,p_seq=>10
,p_name=>'Expenses In Month'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  to_char(expenses_date,''YYYY-MM-DD'') as "ex_date" , "money" ',
'from "ph_expenses"',
'where',
'    (:P30_MONTH_EXPENSES_DAY = extract(month from expenses_date) or :P30_MONTH_EXPENSES_DAY is null)',
'    and ',
'    (:P30_YEAR_EXPENSES_DAY = extract(year from expenses_date) or :P30_YEAR_EXPENSES_DAY is null)',
'    '))
,p_ajax_items_to_submit=>'P30_MONTH_EXPENSES_DAY,P30_YEAR_EXPENSES_DAY'
,p_items_value_column_name=>'money'
,p_items_label_column_name=>'ex_date'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(20101473296048610)
,p_chart_id=>wwv_flow_imp.id(20101232890048608)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(20101551923048611)
,p_chart_id=>wwv_flow_imp.id(20101232890048608)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13503397188891533)
,p_name=>'P30_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13501107014891511)
,p_item_default=>'extract(year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year d ,',
'       year r ',
'       from ',
'       (',
'           select level +2019 as year from dual ',
'            connect by level <= 200',
'       )',
'       order by year ;'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13503409893891534)
,p_name=>'P30_MONTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13501107014891511)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'extract(month from sysdate)',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:January;1,February;2,March;3,April;4,May;5,June;6,July;7,August;8,September;9,October;10,November;11,December;12'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13504538143891545)
,p_name=>'P30_YEAR_BEST_SELLER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13503281540891532)
,p_item_default=>'extract (year from sysdate )'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year d , ',
'       year r ',
'       from  ',
'       (',
'           select level + 2018 as year from dual ',
'            connect by level <= 200 ',
'       )',
'       order by year ;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13504622845891546)
,p_name=>'P30_MONTH_BEST_SELLER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13503281540891532)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'extract (month from sysdate)',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MONTHS'
,p_lov=>'.'||wwv_flow_imp.id(18522329441688135)||'.'
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
 p_id=>wwv_flow_imp.id(13504700465891547)
,p_name=>'P30_TOP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(13503281540891532)
,p_prompt=>'Top Medcine'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Top 3 ;3,Top 5;5,Top 10;10,Top 20;20,Top 50 ;50'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'all'
,p_lov_null_value=>'10000'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19001235166605312)
,p_name=>'P30_MONTH_USER_ACTIVITY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19000181312605301)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'extract (month from sysdate)',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MONTHS'
,p_lov=>'.'||wwv_flow_imp.id(18522329441688135)||'.'
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
 p_id=>wwv_flow_imp.id(19001546580605315)
,p_name=>'P30_YEAR_USER_ACTIVITY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19000181312605301)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'extract (year from sysdate)',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year d, ',
'       year r',
'',
'       from ',
'       (',
'           select level + 2018 as year  from dual ',
'            connect by level <= 200 ',
'           ',
'       )',
'       order by year;'))
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
 p_id=>wwv_flow_imp.id(19002156806605321)
,p_name=>'P30_PROVIDER_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19001600445605316)
,p_prompt=>'Provider Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROVIDENAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "provider_name" as name , "provider_id" as provider_id from',
'    "ph_providers"'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19002949104605329)
,p_name=>'P30_YEAR_INCOME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19002405941605324)
,p_item_default=>'extract(year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year d,',
'       year r  ',
'       from ',
'       (',
'           select level+2018 as year from dual ',
'           connect by level <= 200',
'       )',
'',
'       order by year ;'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19003048038605330)
,p_name=>'P30_MONTH_INCOME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19002405941605324)
,p_item_default=>'extract (month from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MONTHS'
,p_lov=>'.'||wwv_flow_imp.id(18522329441688135)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(19003966260605339)
,p_name=>'P30_YEAR_INCOME_MONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19003352580605333)
,p_item_default=>'extract (year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year d,',
'       year r',
'       from',
'       (',
'           select level + 2018 as year from dual ',
'           connect by level <= 200 ',
'       )',
'       order by year ;'))
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20100802369048604)
,p_name=>'P30_YEAR_EXPENSES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19004978400605349)
,p_item_default=>'extract (year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year d,',
'       year r  ',
'       from ',
'       (',
'           select level + 2018 as year from dual ',
'           connect by level <= 200',
'       )',
'       order by year ;'))
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20101647605048612)
,p_name=>'P30_YEAR_EXPENSES_DAY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20101152856048607)
,p_item_default=>'extract ( year from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select year d ,',
'       year r   ',
'       from ',
'       (',
'           select level +2018 as year from dual ',
'           connect by level <= 200 ',
'       )',
'',
'    order by year ; '))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20101744232048613)
,p_name=>'P30_MONTH_EXPENSES_DAY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20101152856048607)
,p_item_default=>'extract (month from sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MONTHS'
,p_lov=>'.'||wwv_flow_imp.id(18522329441688135)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13503520548891535)
,p_name=>'refresh Rejoin'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_YEAR,P30_MONTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13503685521891536)
,p_event_id=>wwv_flow_imp.id(13503520548891535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13501107014891511)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13504849712891548)
,p_name=>'refersh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_TOP,P30_YEAR_BEST_SELLER,P30_MONTH_BEST_SELLER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13504971697891549)
,p_event_id=>wwv_flow_imp.id(13504849712891548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13503281540891532)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19001339545605313)
,p_name=>'refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_MONTH_USER_ACTIVITY,P30_YEAR_USER_ACTIVITY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19001490321605314)
,p_event_id=>wwv_flow_imp.id(19001339545605313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19000181312605301)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19002261278605322)
,p_name=>'refreshProvider'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_PROVIDER_NAME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19002348471605323)
,p_event_id=>wwv_flow_imp.id(19002261278605322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19001600445605316)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19003106921605331)
,p_name=>'refreshIncome'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_YEAR_INCOME,P30_MONTH_INCOME'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19003285133605332)
,p_event_id=>wwv_flow_imp.id(19003106921605331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19002405941605324)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(19004096769605340)
,p_name=>'refresh incomeInMonth'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_YEAR_INCOME_MONTH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(19004157880605341)
,p_event_id=>wwv_flow_imp.id(19004096769605340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19003352580605333)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20100995829048605)
,p_name=>'refresh expenses'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_YEAR_EXPENSES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20101084770048606)
,p_event_id=>wwv_flow_imp.id(20100995829048605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19004978400605349)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(20101827649048614)
,p_name=>'refresh ExpensesDay'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_YEAR_EXPENSES_DAY,P30_MONTH_EXPENSES_DAY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20101930360048615)
,p_event_id=>wwv_flow_imp.id(20101827649048614)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(20101152856048607)
);
wwv_flow_imp.component_end;
end;
/
