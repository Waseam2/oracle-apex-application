prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>unistr('\0627\0644\0637\0644\0628\0627\062A')
,p_alias=>unistr('\0627\0644\0637\0644\0628\0627\062A')
,p_step_title=>unistr('\0627\0644\0637\0644\0628\0627\062A')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if ($v("\062D\0627\0644\0647_\0627\0644\062A\0631\0628\064A\0632\0647") == 0){'),
'$("#P2_CODE_ANON").css("background-color", "transparent");',
'',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAMSAFWAT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230112124453'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39409580613884573449)
,p_name=>unistr('\0627\0644\0637\0644\0628\0627\062A')
,p_template=>wwv_flow_imp.id(39412024155497735411)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animColorFill'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0627\062A_\0627\0644\062A\0639\0631\064A\0641\064A" ,'),
unistr('       "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647" CARD_TITLE,'),
'       TABLE_CONDITION CARD_TEXT,',
'       live_order CARD_SUBTEXT,',
'        ''#APP_FILES#icons/tableIcone.png'' CARD_ICON ,',
unistr('       case when table_condition = ''\0645\0634\063A\0648\0644\0647'' then ''red'''),
'            else ''green'' ',
'        end  as color ',
unistr('    from "\0627\0644\062A\0631\0628\064A\0632\0627\062A"  order by "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647"')))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(39412116813819735889)
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
 p_id=>wwv_flow_imp.id(39409582268306573466)
,p_query_column_id=>1
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0627\062A_\0627\0644\062A\0639\0631\064A\0641\064A')
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39409582829942573472)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>80
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6:P6_TABLE_NUMBER,P6_ORDER_ID:#CARD_TITLE#,#CARD_SUBTEXT#'
,p_column_linktext=>unistr('#CARD_TITLE#  <br>\0639\0645\0644 \0637\0644\0628')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39409582962846573473)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>100
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR#">#CARD_TEXT#</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415979081151949734)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>130
,p_column_heading=>'liver_order'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_ORDER_ID,P7_TABLE_ID:#CARD_SUBTEXT#,#CARD_TITLE#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-newspaper-o"></span>'
,p_column_link_attr=>'title="My Button" class="t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--simple"'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>'return  false;'
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415979187873949735)
,p_query_column_id=>5
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>140
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39409582797695573471)
,p_query_column_id=>6
,p_column_alias=>'COLOR'
,p_column_display_sequence=>60
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39417780700725150061)
,p_name=>'P8_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39409580613884573449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39417781182573150066)
,p_name=>'P8_TABLE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(39409580613884573449)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39417781357406150068)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'empyOrBusy'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
' ',
' if :P8_ORDER_ID is not null or :P8_ORDER_ID <> 0 then ',
'',
unistr('    update "\0627\0644\062A\0631\0628\064A\0632\0627\062A" set live_order = :P8_ORDER_ID,'),
unistr('         "TABLE_CONDITION"  = ''\0645\0634\063A\0648\0644\0647'''),
'',
unistr('     where "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647" = :P8_TABLE_ID ;'),
'          ',
'end if ;',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>39417781357406150068
);
wwv_flow_imp.component_end;
end;
/
