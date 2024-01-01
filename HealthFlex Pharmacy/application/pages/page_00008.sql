prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Unit menu'
,p_alias=>'UNIT-MENU'
,p_step_title=>'Unit menu'
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
,p_last_upd_yyyymmddhh24miss=>'20230627143942'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10307347086912550)
,p_name=>'Unit menu'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>20
,p_region_sub_css_classes=>'tfont'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "unit_id",',
'       "unit_name"',
'  from "ph_unit"',
'  where upper("unit_name") like upper(''%''||:P8_SEARCH ||''%'');'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P8_SEARCH'
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
 p_id=>wwv_flow_imp.id(10307764240912563)
,p_query_column_id=>1
,p_column_alias=>'unit_id'
,p_column_display_sequence=>20
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP:P9_UNIT_ID:\#unit_id#\'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-pencil-square"></span>'
,p_column_link_attr=>' title="Edit" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--success t-Button--simple"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10308190395912571)
,p_query_column_id=>2
,p_column_alias=>'unit_name'
,p_column_display_sequence=>40
,p_column_heading=>'Unit Name'
,p_use_as_row_header=>'N'
,p_column_css_class=>'searchFormat'
,p_column_hit_highlight=>'&P8_SEARCH.'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(6918882436930342)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Delete'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-trash"></span>'
,p_column_link_attr=>'title="#unit_id#" class=" delete t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--danger t-Button--simple" delete '
,p_column_alignment=>'CENTER'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10308659723912571)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10307347086912550)
,p_button_name=>'Add_Unit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Unit'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9'
,p_button_css_classes=>'addbtn'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6919289011930346)
,p_name=>'P8_UNIT_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10500558760022664)
,p_name=>'P8_SEARCH'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10309004783912571)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10307347086912550)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10309516947912577)
,p_event_id=>wwv_flow_imp.id(10309004783912571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10307347086912550)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6918649513930340)
,p_name=>'search Refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_SEARCH'
,p_bind_type=>'bind'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6918742109930341)
,p_event_id=>wwv_flow_imp.id(6918649513930340)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10307347086912550)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6918987242930343)
,p_name=>'deleteUnit'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6919118559930344)
,p_event_id=>wwv_flow_imp.id(6918987242930343)
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
 p_id=>wwv_flow_imp.id(6919158888930345)
,p_event_id=>wwv_flow_imp.id(6918987242930343)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_UNIT_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10511994398195297)
,p_event_id=>wwv_flow_imp.id(6918987242930343)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'delete from "ph_unit" where "unit_id" = :P8_UNIT_ID;'
,p_attribute_02=>'P8_UNIT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10512085555195298)
,p_event_id=>wwv_flow_imp.id(6918987242930343)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10307347086912550)
);
wwv_flow_imp.component_end;
end;
/
