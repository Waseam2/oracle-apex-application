prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0631\0628\064A\0632\0627\062A')
,p_alias=>unistr('\0642\0627\0626\0645\0647-\0627\0644\0637\0631\0628\064A\0632\0627\062A')
,p_step_title=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0631\0628\064A\0632\0627\062A')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAMSAFWAT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230112123902'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39414184046109865311)
,p_name=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0631\0628\064A\0632\0627\062A')
,p_template=>wwv_flow_imp.id(39412077420347735712)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>unistr('\0627\0644\062A\0631\0628\064A\0632\0627\062A')
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(39412112781506735877)
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
 p_id=>wwv_flow_imp.id(39414184442383865317)
,p_query_column_id=>1
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0627\062A_\0627\0644\062A\0639\0631\064A\0641\064A')
,p_column_display_sequence=>0
,p_use_as_row_header=>'N'
,p_column_link=>unistr('f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP:P3_\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0627\062A_\0627\0644\062A\0639\0631\064A\0641\064A:\005C#\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0627\062A_\0627\0644\062A\0639\0631\064A\0641\064A#\005C')
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-pencil-square"></span>'
,p_column_link_attr=>unistr('title="\062A\0639\062F\064A\0644" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--success t-Button--simple"')
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39414184913197865320)
,p_query_column_id=>2
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647')
,p_column_display_sequence=>20
,p_column_heading=>unistr('\0631\0642\0645 \0627\0644\062A\0631\0628\064A\0632\0647')
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415978706410949730)
,p_query_column_id=>3
,p_column_alias=>'TABLE_CONDITION'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\062D\0627\0644\0647 \0627\0644\062A\0631\0628\064A\0632\0647')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39414185592587865322)
,p_query_column_id=>4
,p_column_alias=>unistr('\0645\0648\0642\0639_\0627\0644\062A\0631\0628\064A\0632\0647')
,p_column_display_sequence=>40
,p_column_heading=>unistr('\0645\0648\0642\0639 \0627\0644\062A\0631\0628\064A\0632\0647')
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39414187423055865339)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39414186094020865322)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39414184046109865311)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(39412150494909736109)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0636\0627\0641\0647 \062C\062F\064A\062F')
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39414186359793865323)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(39414184046109865311)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39414186888538865325)
,p_event_id=>wwv_flow_imp.id(39414186359793865323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39414184046109865311)
);
wwv_flow_imp.component_end;
end;
/
