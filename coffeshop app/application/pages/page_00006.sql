prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>unistr('\0639\0645\0644 \0637\0644\0628 \062C\062F\064A\062F')
,p_alias=>unistr('\0639\0645\0644-\0637\0644\0628-\062C\062F\064A\062F')
,p_step_title=>unistr('\0639\0645\0644 \0637\0644\0628 \062C\062F\064A\062F')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(39412008463721735275)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAMSAFWAT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230114164251'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39415979336894949737)
,p_name=>unistr('\0627\0644\0645\0634\0631\0648\0628\0627\062A ')
,p_template=>wwv_flow_imp.id(39412077420347735712)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>6
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" ,'),
unistr('       "\0627\0633\0645_\0627\0644\0645\0634\0631\0648\0628",'),
unistr('       "\0633\0639\0631_\0627\0644\0645\0634\0631\0648\0628"'),
'  ',
unistr('  from "\0627\0644\0645\0634\0631\0648\0628\0627\062A"'),
unistr('    where upper("\0627\0633\0645_\0627\0644\0645\0634\0631\0648\0628") like upper(''%''||:P6_SEARCH||''%'');')))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P6_SEARCH'
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
 p_id=>wwv_flow_imp.id(39415981741125949761)
,p_query_column_id=>1
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628')
,p_column_display_sequence=>10
,p_column_heading=>unistr('\0627\0636\0627\0641\0647')
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>' <span aria-hidden="true" class="t-Icon fa fa-plus-circle"></span>'
,p_column_link_attr=>unistr('title="#\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628#" class=" del t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--success t-Button--simple"')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415981874573949762)
,p_query_column_id=>2
,p_column_alias=>unistr('\0627\0633\0645_\0627\0644\0645\0634\0631\0648\0628')
,p_column_display_sequence=>40
,p_column_heading=>unistr('\0627\0633\0645 \0627\0644\0645\0634\0631\0648\0628')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415981924076949763)
,p_query_column_id=>3
,p_column_alias=>unistr('\0633\0639\0631_\0627\0644\0645\0634\0631\0648\0628')
,p_column_display_sequence=>50
,p_column_heading=>unistr('\0633\0639\0631 \0627\0644\0645\0634\0631\0648\0628')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415983347730949777)
,p_query_column_id=>4
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\062D\0630\0641')
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-minus-circle"></span>'
,p_column_link_attr=>unistr('id="#\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628#" class=" add t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--danger t-Button--simple"')
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(39415980500010949748)
,p_name=>unistr('\0627\0644\0637\0644\0628\0627\062A \0627\0644\062D\0627\0644\064A\0647')
,p_template=>wwv_flow_imp.id(39412077420347735712)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select "\0631\0642\0645_\0627\0644\0637\0644\0628",'),
unistr('       "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628",'),
'       CCOUNT,',
'       ORDERS_DRINKS_ID',
unistr('  from "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" where "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID;')))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(39415980525295949749)
,p_query_column_id=>1
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\0637\0644\0628')
,p_column_display_sequence=>20
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415980627226949750)
,p_query_column_id=>2
,p_column_alias=>unistr('\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628')
,p_column_display_sequence=>40
,p_column_heading=>unistr('\0627\0633\0645 \0627\0644\0645\0634\0631\0648\0628')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>unistr('select "\0627\0633\0645_\0627\0644\0645\0634\0631\0648\0628" d , "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" i from "\0627\0644\0645\0634\0631\0648\0628\0627\062A" g')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415983033364949774)
,p_query_column_id=>3
,p_column_alias=>'CCOUNT'
,p_column_display_sequence=>50
,p_column_heading=>'count'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39415980826471949752)
,p_query_column_id=>4
,p_column_alias=>'ORDERS_DRINKS_ID'
,p_column_display_sequence=>10
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(39417777835068149933)
,p_query_column_id=>5
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\062D\0630\0641 \0627\0644\0645\0634\0631\0648\0628')
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>' <span aria-hidden="true" class="t-Icon fa fa-times-square"></span>'
,p_column_link_attr=>unistr('title="#\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628#" class=" can  t-Button t-Button--noLabel t-Button--icon t-Button--hot t-Button--danger t-Button--simple"')
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39416877117802382655)
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
 p_id=>wwv_flow_imp.id(39417778415955149938)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39415980500010949748)
,p_button_name=>'confirm'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(39412150494909736109)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\062A\0627\0643\064A\062F \0627\0644\0637\0644\0628')
,p_button_position=>'CHANGE'
,p_icon_css_classes=>'fa-check-circle'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39417779860510150053)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(39415980500010949748)
,p_button_name=>'cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(39412150494909736109)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0644\063A\0627\0621 \0627\0644\0637\0644\0628 ')
,p_button_position=>'CLOSE'
,p_confirm_message=>unistr('\0647\0644 \0627\0646\062A \0645\062A\0627\0643\062F \0627\0646\0643 \062A\0631\064A\062F \0627\0644\063A\0627\0621 \0627\0644\0637\0644\0628 \061F')
,p_confirm_style=>'warning'
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39417779732828150052)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(39415980500010949748)
,p_button_name=>'bill'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(39412150494909736109)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0627\0644\0641\0627\062A\0648\0631\0647')
,p_button_position=>'DELETE'
,p_icon_css_classes=>'fa-newspaper-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(39417780028629150055)
,p_branch_name=>'afterCancel'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(39417779860510150053)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(39417781312152150067)
,p_branch_name=>'afterconfirm'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_ORDER_ID,P8_TABLE_ID:&P6_ORDER_ID.,&P6_TABLE_NUMBER.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(39417778415955149938)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(39417781752843150072)
,p_branch_name=>'goToBill'
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ORDER_ID,P7_TABLE_ID:&P6_ORDER_ID.,&P6_TABLE_NUMBER.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(39417779732828150052)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39415982441211949768)
,p_name=>'P6_DRINK_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39415982617584949770)
,p_name=>'P6_TABLE_NUMBER'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39415982973221949773)
,p_name=>'P6_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39420182232079738955)
,p_name=>'P6_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(39415979336894949737)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_prompt=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(39412147866554736078)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39417779516739150049)
,p_validation_name=>'confirmVa'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'test_order number (6) := 0 ;',
'found boolean := false ;',
'begin',
'',
'    ',
unistr('   select "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" into test_order from "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" where "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID ; '),
'',
'    if test_order = 0 then ',
'        return false;',
'    else ',
'        return true;',
'    end if ; ',
'    exception ',
'    when no_data_found then ',
'        return false ; ',
'      WHEN TOO_MANY_ROWS THEN',
'        return true ;',
'     ',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\0644\0627 \064A\0648\062C\062F \0637\0644\0628\0627\062A \0644\062A\0627\0643\064A\062F\0647\0627')
,p_when_button_pressed=>wwv_flow_imp.id(39417778415955149938)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(39417780198739150056)
,p_validation_name=>'billValidation'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'test_order number (6) := 0 ;',
'found boolean := false ;',
'begin',
'',
'    ',
unistr('   select "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" into test_order from "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" where "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID ; '),
'',
'    if test_order = 0 then ',
'        return false;',
'    else ',
'        return true;',
'    end if ; ',
'    exception ',
'    when no_data_found then ',
'        return false ; ',
'    when too_many_rows then',
'        return true ; ',
'     ',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\0644\0627 \062A\0648\062C\062F \0637\0644\0628\0627\062A \0644\0639\0631\0636 \0627\0644\0641\0627\062A\0648\0631\0647 ')
,p_when_button_pressed=>wwv_flow_imp.id(39417779732828150052)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39415981008432949753)
,p_name=>'addDrink'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.del'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39415981052586949754)
,p_event_id=>wwv_flow_imp.id(39415981008432949753)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_DRINK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39415982569047949769)
,p_event_id=>wwv_flow_imp.id(39415981008432949753)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'db_drink number(6) :=0 ; ',
'testDrink number(6) :=0 ;',
unistr('found  boolean := false ;  -- db_drink comes from  database table \0637\0644\0628\0627\062A-\0645\0634\0631\0648\0628\0627\062A'),
'',
'begin',
'    if :P6_ORDER_ID is null  then',
unistr('    insert into "\0627\0644\0637\0644\0628\0627\062A"   ("\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647") values (:P6_TABLE_NUMBER);'),
unistr('        :P6_ORDER_ID := "\0627\0644\0637\0644\0628\0627\062A_SEQ".currval ;'),
'    end if ;',
'',
unistr('    /*select "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" into  testDrink from  "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" where  "\0631\0642\0645_\0627\0644\0637\0644\0628" =TO_NUMBER(:P6_ORDER_ID) and  "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" = TO_NUMBER(:P6_DRINK_ID);'),
'   ',
'    exception ',
'    when no_data_found then ',
'        found := false ;',
'     ',
'        if testDrink = 0 then ',
'            found := false ;',
'        else ',
'            found := true ;',
'        end if ;*/',
'        found := GETDRINKSTATE(:P6_ORDER_ID , :P6_DRINK_ID);',
'',
'        if found then ',
unistr('            update "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" set CCOUNT = CCOUNT + 1  where  "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID and  "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" = :P6_DRINK_ID;'),
'            ',
'        else ',
unistr('            insert into  "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A"  ("\0631\0642\0645_\0627\0644\0637\0644\0628", "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" , "CCOUNT") values (:P6_ORDER_ID , :P6_DRINK_ID , 1);'),
'             ',
'        end if ;',
'        ',
'end;'))
,p_attribute_02=>'P6_DRINK_ID,P6_ORDER_ID'
,p_attribute_03=>'P6_ORDER_ID,P6_TABLE_NUMBER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39415982806886949771)
,p_event_id=>wwv_flow_imp.id(39415981008432949753)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39415980500010949748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39417777379414149928)
,p_name=>'removeDrink'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.add'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39417777479603149929)
,p_event_id=>wwv_flow_imp.id(39417777379414149928)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_DRINK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.id'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39417777603564149930)
,p_event_id=>wwv_flow_imp.id(39417777379414149928)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'found boolean := false ;',
'',
'begin ',
'',
'    if :P6_ORDER_ID is not null or :P6_ORDER_ID <> 0 then',
'           found :=getcountState(:P6_ORDER_ID , :P6_DRINK_ID);',
'                if found then ',
'                    found := GETDRINKSTATE(:P6_ORDER_ID , :P6_DRINK_ID);',
'                        if found then',
unistr('                            update "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" set CCOUNT = CCOUNT - 1  where  "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID and  "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" = :P6_DRINK_ID;'),
'                        end if;',
'                else ',
unistr('                    delete from "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A"  where  "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID and  "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" = :P6_DRINK_ID;'),
'',
'                end if ;',
'                ',
'',
'    end if ; ',
'',
'',
'end ;'))
,p_attribute_02=>'P6_DRINK_ID,P6_ORDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39417777629548149931)
,p_event_id=>wwv_flow_imp.id(39417777379414149928)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39415980500010949748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39417777924490149934)
,p_name=>'cancelDrink'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.can'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39417778102887149935)
,p_event_id=>wwv_flow_imp.id(39417777924490149934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_DRINK_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39417778142644149936)
,p_event_id=>wwv_flow_imp.id(39417777924490149934)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
unistr('   delete from "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A"  where  "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID and  "\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" = :P6_DRINK_ID;'),
'',
'end ;'))
,p_attribute_02=>'P6_ORDER_ID,P6_DRINK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39417778306256149937)
,p_event_id=>wwv_flow_imp.id(39417777924490149934)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39415980500010949748)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39420182401822738956)
,p_name=>'search'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_SEARCH'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420182477593738957)
,p_event_id=>wwv_flow_imp.id(39420182401822738956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(39415979336894949737)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39417780001288150054)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'    if :P6_ORDER_ID <> 0 then',
unistr('          delete from  "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" where "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID ;'),
'',
unistr('         delete from  "\0627\0644\0637\0644\0628\0627\062A"   where  "\0631\0642\0645_\0627\0644\0637\0644\0628" = :P6_ORDER_ID ;'),
'    end if ;',
'',
'   if :P6_TABLE_NUMBER <> 0 or :P6_TABLE_NUMBER is not null then',
'',
unistr('                update  "\0627\0644\062A\0631\0628\064A\0632\0627\062A" set TABLE_CONDITION = ''\0641\0627\0631\063A\0647'','),
'                   LIVE_ORDER = null ',
unistr('                   where   "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647" = :P6_TABLE_NUMBER ;  '),
'                           ',
'',
'   end if ;  ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(39417779860510150053)
,p_internal_uid=>39417780001288150054
);
wwv_flow_imp.component_end;
end;
/
