prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>46808186347481499425
,p_default_application_id=>65145
,p_default_id_offset=>39385775416825152027
,p_default_owner=>'WKSP_SWNBXSTN2DNKNT'
);
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0644\0628\0627\062A')
,p_alias=>unistr('\0642\0627\0626\0645\0647-\0627\0644\0637\0644\0628\0627\062A')
,p_step_title=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0644\0628\0627\062A')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAMSAFWAT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230114182005'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39420181633639738949)
,p_name=>unistr('\0627\0644\0637\0627\0644\0628\0627\062A')
,p_template=>wwv_flow_imp.id(39412077420347735712)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select "\0631\0642\0645_\0627\0644\0641\0627\062A\0648\0631\0647",'),
unistr('       "\0627\0644\062A\0627\0631\064A\062E",'),
unistr('       "\0631\0642\0645_\0627\0644\0637\0644\0628",'),
unistr('       "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647",'),
unistr('       "\0645\062C\0645\0648\0639_\0627\0644\062D\0633\0627\0628"'),
unistr('  from "\0627\0644\0641\0627\062A\0648\0631\0647" where '),
'    ',
unistr('    "\0631\0642\0645_\0627\0644\0637\0644\0628" like (''%''||:P9_SEARCH||''%'') or'),
unistr('    "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647" like (''%''||:P9_SEARCH||''%'') or'),
unistr('        "\0627\0644\062A\0627\0631\064A\062E" like (''%''||:P9_SEARCH||''%'') '),
'        /* or',
unistr('         TO_DATE("\0627\0644\062A\0627\0631\064A\062E" , ''DD/MM/YYYY'') like TO_DATE((''%''||:P9_DATE||''%''), ''DD/MM/YYYY'');*/')))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P9_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(39412112781506735877)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39420181760652738950)
,p_query_column_id=>1
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\0641\0627\062A\0648\0631\0647')
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39420181851832738951)
,p_query_column_id=>2
,p_column_alias=>unistr('\0627\0644\062A\0627\0631\064A\062E')
,p_column_display_sequence=>40
,p_column_heading=>unistr('\0627\0644\062A\0627\0631\064A\062E')
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39420181991690738952)
,p_query_column_id=>3
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\0637\0644\0628')
,p_column_display_sequence=>20
,p_column_heading=>unistr('\0637\0628\0627\0639\0647 \0627\0644\0641\0627\062A\0648\0631\0647')
,p_use_as_row_header=>'N'
,p_column_link=>unistr('f?p=&APP_ID.:7:&SESSION.:HIDE:&DEBUG.::P7_ORDER_ID,P7_TABLE_ID,P7_DATE:#\0631\0642\0645_\0627\0644\0637\0644\0628#,#\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647#,#\0627\0644\062A\0627\0631\064A\062E#')
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-newspaper-o"></span>'
,p_column_link_attr=>unistr('title="#\0631\0642\0645_\0627\0644\0641\0627\062A\0648\0631\0647#" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--simple"')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39420182097282738953)
,p_query_column_id=>4
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647')
,p_column_display_sequence=>30
,p_column_heading=>unistr('\0631\0642\0645 \0627\0644\062A\0631\0628\064A\0632\0647')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39420182169358738954)
,p_query_column_id=>5
,p_column_alias=>unistr('\0645\062C\0645\0648\0639_\0627\0644\062D\0633\0627\0628')
,p_column_display_sequence=>60
,p_column_heading=>unistr('\0645\062C\0645\0648\0639 \0627\0644\062D\0633\0627\0628')
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39421076302792739487)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(39412089865080735756)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(39411980447539734837)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(39412152001450736114)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39420183062392738963)
,p_name=>'P9_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39420181633639738949)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>unistr('\0628\062D\062B')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(39412147634539736069)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<html dir="rtl" lang="ar">',
unistr('<h3 style="text-align:right">\0647\0646\0627 \064A\0645\0643\0646\0643 \0627\0644\0628\062D\062B \0628\0627\0633\062A\062E\062F\0627\0645 </h3>'),
unistr('<h5 style="text-align:right"> \0631\0642\0645 \0627\0644\0637\0644\0628 </h5>'),
unistr('<h5 style="text-align:right"> \0631\0642\0645 \0627\0644\062A\0631\0628\064A\0632\0647 </h5>'),
unistr('<h5 style="text-align:right"> DD/MM/YYYY  \062A\0627\0631\064A\062E \0627\0644\0637\0644\0628 \0628\0635\064A\063A\0647   </h5>'),
'</html> '))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39420183453469738967)
,p_name=>'P9_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39420181633639738949)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>unistr('\0627\0644\062A\0627\0631\064A\062E')
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(39412147634539736069)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(39422180627898369431)
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39420183133350738964)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420183223868738965)
,p_event_id=>wwv_flow_imp.id(39420183133350738964)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39420181633639738949)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39420183557688738968)
,p_name=>'date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_DATE'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420183678377738969)
,p_event_id=>wwv_flow_imp.id(39420183557688738968)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39420181633639738949)
);
wwv_flow_imp.component_end;
end;
/
