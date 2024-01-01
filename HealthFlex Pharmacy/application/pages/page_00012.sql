prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'medcine menu'
,p_alias=>'MEDCINE-MENU'
,p_step_title=>'medcine menu'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#styles#MIN#.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231108010148'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(11611128425472722)
,p_name=>'medcine menu'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "medcine_id",',
'       "barcode_id",',
'       "medcine_name",',
'       "unit_id",',
'       "QUANTITY",',
'       "buy_price",',
'       "sell_price",',
'       "expired_date",',
'       provider_id,',
'       NOTES,',
'       case ',
'        when  "QUANTITY" < :MINQUANTITI  then ''red''',
'        else ''green''',
'        end as color,',
'       case ',
'       when  months_between("expired_date" , sysdate) < 0 then ''red''',
'       when  months_between("expired_date" , sysdate) < :lastmindate then ''red''',
'       when  months_between("expired_date" , sysdate) < :MINDATE  then ''orange''',
'       else ''green''',
'       end as color2 ',
'  ',
'  from "ph_medcine"',
'  where ',
'  upper("medcine_name") like upper(''%''||:P12_SEARCH||''%'')',
'  or',
'  upper("barcode_id") like upper(''%''||:P12_SEARCH||''%'')',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P12_MEDCINE_ID,P12_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11611467784472733)
,p_query_column_id=>1
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>20
,p_column_heading=>'EDIT'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP:P13_MEDCINE_ID:\#medcine_id#\'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-pencil-square"></span>'
,p_column_link_attr=>' title="Edit" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--success t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11611867938472741)
,p_query_column_id=>2
,p_column_alias=>'barcode_id'
,p_column_display_sequence=>30
,p_column_heading=>'Barcode ID'
,p_use_as_row_header=>'N'
,p_column_css_class=>'searchFormat'
,p_column_hit_highlight=>'&P12_SEARCH.'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11612306497472741)
,p_query_column_id=>3
,p_column_alias=>'medcine_name'
,p_column_display_sequence=>40
,p_column_heading=>'Medcine Name'
,p_use_as_row_header=>'N'
,p_column_css_class=>'searchFormat'
,p_column_hit_highlight=>'&P12_SEARCH.'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11612693530472741)
,p_query_column_id=>4
,p_column_alias=>'unit_id'
,p_column_display_sequence=>50
,p_column_heading=>'Unit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11602473685472628)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14202869930481919)
,p_query_column_id=>5
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>60
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR#">#QUANTITY#</span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11613033671472741)
,p_query_column_id=>6
,p_column_alias=>'buy_price'
,p_column_display_sequence=>70
,p_column_heading=>'Buy Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11613474172472744)
,p_query_column_id=>7
,p_column_alias=>'sell_price'
,p_column_display_sequence=>80
,p_column_heading=>'Sell Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11613919028472744)
,p_query_column_id=>8
,p_column_alias=>'expired_date'
,p_column_display_sequence=>90
,p_column_heading=>'Expired Date'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR2#">#expired_date#</span>'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11203413562959715)
,p_query_column_id=>9
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Delete'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-trash"></span>'
,p_column_link_attr=>'title="#medcine_id#" class=" delete t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--danger t-Button--simple" delete '
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(25602966531020016)
,p_query_column_id=>9
,p_column_alias=>'PROVIDER_ID'
,p_column_display_sequence=>100
,p_column_heading=>'Provider Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(26101154785406035)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(11203259085959714)
,p_query_column_id=>10
,p_column_alias=>'NOTES'
,p_column_display_sequence=>110
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20629103023889598)
,p_query_column_id=>11
,p_column_alias=>'COLOR'
,p_column_display_sequence=>120
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(20629155645889599)
,p_query_column_id=>12
,p_column_alias=>'COLOR2'
,p_column_display_sequence=>130
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11614386267472746)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11611128425472722)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'add medcine'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13'
,p_button_css_classes=>'addbtn'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11204007706959721)
,p_name=>'P12_MEDCINE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11611128425472722)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11204244382959724)
,p_name=>'P12_SEARCH'
,p_item_sequence=>10
,p_prompt=>'Search'
,p_placeholder=>'search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'search'
,p_field_template=>wwv_flow_imp.id(6872578399923000)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11614708760472746)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11611128425472722)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11615137783472752)
,p_event_id=>wwv_flow_imp.id(11614708760472746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11611128425472722)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11203435775959716)
,p_name=>'delete'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11203607695959717)
,p_event_id=>wwv_flow_imp.id(11203435775959716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'are you sure you want to delete this medcine?'
,p_attribute_03=>'danger'
,p_attribute_04=>'fa-exclamation'
,p_attribute_05=>'popupMessages'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11203656283959718)
,p_event_id=>wwv_flow_imp.id(11203435775959716)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_MEDCINE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11204089814959722)
,p_event_id=>wwv_flow_imp.id(11203435775959716)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from "ph_medcine" where "medcine_id" = :P12_MEDCINE_ID;'
,p_attribute_02=>'P12_MEDCINE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11204214533959723)
,p_event_id=>wwv_flow_imp.id(11203435775959716)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11611128425472722)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11204360100959725)
,p_name=>'search'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11204492433959726)
,p_event_id=>wwv_flow_imp.id(11204360100959725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11611128425472722)
);
wwv_flow_imp.component_end;
end;
/
