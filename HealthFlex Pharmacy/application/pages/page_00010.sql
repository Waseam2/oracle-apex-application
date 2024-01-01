prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Provider Menu'
,p_alias=>'PROVIDER-MENU'
,p_step_title=>'Provider Menu'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#styles.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.tfont',
'{',
'    font-size: 50px;',
'    font-weight: bolder;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20230627144058'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(17707792188395409)
,p_name=>'Provider menu'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>20
,p_region_sub_css_classes=>'tfont'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "provider_id",',
'       "provider_name",',
'       "phone",',
'       "Email",',
'       "balance",',
'       TYPE',
'  from "ph_providers"',
'',
'  where upper("provider_name") like upper(''%'' || :P10_SEARCH ||''%'')'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10512185115195299)
,p_query_column_id=>1
,p_column_alias=>'provider_id'
,p_column_display_sequence=>20
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::P11_PROVIDER_ID:#provider_id#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-pencil-square"></span>'
,p_column_link_attr=>' title="Edit" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--success t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10512327372195300)
,p_query_column_id=>2
,p_column_alias=>'provider_name'
,p_column_display_sequence=>30
,p_column_heading=>'Provider Name'
,p_use_as_row_header=>'N'
,p_column_css_class=>'searchFormat'
,p_column_hit_highlight=>'&P10_SEARCH.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10512337310195301)
,p_query_column_id=>3
,p_column_alias=>'phone'
,p_column_display_sequence=>40
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10602249776239822)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Delete'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-trash"></span>'
,p_column_link_attr=>'title="#provider_id#" class=" delete t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--danger t-Button--simple" delete '
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10512516843195302)
,p_query_column_id=>4
,p_column_alias=>'Email'
,p_column_display_sequence=>50
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10512630658195303)
,p_query_column_id=>5
,p_column_alias=>'balance'
,p_column_display_sequence=>60
,p_column_heading=>'Balance'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10512688879195304)
,p_query_column_id=>6
,p_column_alias=>'TYPE'
,p_column_display_sequence=>70
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(10711678184284464)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10602674723239825)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17707792188395409)
,p_button_name=>'Add_Provider'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Provider'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
,p_button_css_classes=>'addbtn'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10603076765239853)
,p_name=>'P10_SEARCH'
,p_item_sequence=>10
,p_prompt=>'Search'
,p_placeholder=>'search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'search'
,p_field_template=>wwv_flow_imp.id(6872578399923000)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10603485392239856)
,p_name=>'P10_PROVIDER_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10603837076239858)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(17707792188395409)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10604377337239864)
,p_event_id=>wwv_flow_imp.id(10603837076239858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17707792188395409)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10604823780239866)
,p_name=>'search Refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10605318804239866)
,p_event_id=>wwv_flow_imp.id(10604823780239866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17707792188395409)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10605684611239866)
,p_name=>'deleteUnit'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10606188533239867)
,p_event_id=>wwv_flow_imp.id(10605684611239866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'are you sure you want to delete this unit?'
,p_attribute_03=>'warning'
,p_attribute_04=>'fa-exclamation'
,p_attribute_05=>'popupMessages'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10606661548239867)
,p_event_id=>wwv_flow_imp.id(10605684611239866)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_PROVIDER_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10607180076239867)
,p_event_id=>wwv_flow_imp.id(10605684611239866)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from "ph_providers" where "provider_id" = :P10_PROVIDER_ID;'
,p_attribute_02=>'P10_PROVIDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10607705086239867)
,p_event_id=>wwv_flow_imp.id(10605684611239866)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17707792188395409)
);
wwv_flow_imp.component_end;
end;
/
