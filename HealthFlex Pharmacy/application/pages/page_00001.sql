prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Pharmacy'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.gg:before',
'{',
'    content: url("#APP_FILES#united-nations.png");',
'    color: red;',
'    width: 2px;',
'    height: 2px;',
'}',
'',
'.card__icon {',
'  width: 100%;',
'  height: 100%;',
'  object-fit: cover;',
'}'))
,p_step_template=>wwv_flow_imp.id(6733501178922514)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231227004646'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6908711381923486)
,p_plug_name=>'Pharmacy'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6774661697922689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8500516064065203)
,p_plug_name=>'Low Stock Medcine'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(8500618018065204)
,p_region_id=>wwv_flow_imp.id(8500516064065203)
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
 p_id=>wwv_flow_imp.id(8500781676065205)
,p_chart_id=>wwv_flow_imp.id(8500618018065204)
,p_seq=>10
,p_name=>'low stock'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'substr((select "medcine_name" from "ph_medcine" m where m."medcine_id" = s."medcine_id"),1,20) as "name", ',
'"quantity" from "ph_shortcomings" s'))
,p_items_value_column_name=>'quantity'
,p_group_short_desc_column_name=>'name'
,p_items_label_column_name=>'name'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_font_color=>'#a23535'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(8500857554065206)
,p_chart_id=>wwv_flow_imp.id(8500618018065204)
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
 p_id=>wwv_flow_imp.id(8500965746065207)
,p_chart_id=>wwv_flow_imp.id(8500618018065204)
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
 p_id=>wwv_flow_imp.id(8501166958065209)
,p_plug_name=>'Expired medcine '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select substr((select "medcine_name" from "ph_medcine" m where m."medcine_id" = e."medcine_id"),1,30)',
'as "name"  , "expired_date"  as "date" from "ph_expired_medcine" e ;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'date'
,p_attribute_03=>'name'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8502438786065222)
,p_plug_name=>'User Activity'
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
 p_id=>wwv_flow_imp.id(8502557150065223)
,p_region_id=>wwv_flow_imp.id(8502438786065222)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_title=>'Users'
,p_legend_position=>'start'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(8502670585065224)
,p_chart_id=>wwv_flow_imp.id(8502557150065223)
,p_seq=>10
,p_name=>'activities'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "user_name",',
'            sum((extract(day from ("logout_date" - "login_date") )*24 + extract(hour from ("logout_date" - "login_date")))*60+ extract(minute from ("logout_date" - "login_date"))) / 60 as "login hours",',
'        sum((extract(day from ("logout_date" - "login_date") )*24 + extract(hour from ("logout_date" - "login_date")))*60+ extract(minute from ("logout_date" - "login_date")))|| '' Minute'' as "minute" ',
'from "ph_user_activity"',
'        where ',
'          extract (day from ("logout_date" - "login_date")) <= 1   -- to get one day very time you use date filter ;',
'        and',
'          (:P1_DATE = to_char("login_date",''YYYY-MM-DD'') or :P1_DATE is null)',
'group by "user_name";',
'',
''))
,p_ajax_items_to_submit=>'P1_DATE'
,p_items_value_column_name=>'login hours'
,p_items_label_column_name=>'user_name'
,p_items_short_desc_column_name=>'minute'
,p_custom_column_name=>'minute'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8504065820065238)
,p_name=>'P1_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8502438786065222)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sysdate',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8504143113065239)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8504260106065240)
,p_event_id=>wwv_flow_imp.id(8504143113065239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8502438786065222)
);
wwv_flow_imp.component_end;
end;
/
