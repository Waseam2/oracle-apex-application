prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>unistr('\0627\0644\0641\0627\062A\0648\0631\0647')
,p_alias=>unistr('\0627\0644\0641\0627\062A\0648\0631\0647')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0627\0644\0641\0627\062A\0648\0631\0647')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
,p_last_updated_by=>'WASEAMSAFWAT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230113202453'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39417781449162150069)
,p_plug_name=>unistr('\0627\0644\0641\0627\062A\0648\0631\0647')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(39412017099159735375)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
unistr('cursor cur is select d."\0627\0633\0645_\0627\0644\0645\0634\0631\0648\0628" , d."\0633\0639\0631_\0627\0644\0645\0634\0631\0648\0628" , o.CCOUNT from "\0627\0644\0645\0634\0631\0648\0628\0627\062A" d , "\0637\0644\0628\0627\062A_\0645\0634\0631\0648\0628\0627\062A" o'),
unistr(' where d."\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" = o."\0631\0642\0645_\0627\0644\0645\0634\0631\0648\0628" and o."\0631\0642\0645_\0627\0644\0637\0644\0628" = :P7_ORDER_ID;'),
' total number(10);',
' total_Order number (10)  := 0;',
'begin ',
'',
'htp.p(''',
'',
'    <html>',
'        <head>',
'        <style>',
'          table {',
'            width:70%; ',
'            margin-left:15%; ',
'            margin-right:15%;',
'             ',
'            }',
'        ',
'        </style>',
'        </head>',
'        <body>',
'            <table style="margin-right:25%;">',
'                <tr>',
'                   ',
'                    <td>''||:P7_ORDER_ID||''</td>',
unistr('                     <td>\0631\0642\0645 \0627\0644\0637\0644\0628 </td>'),
'                </tr>',
'                <tr>',
'                   ',
'                    <td>''||:P7_DATE||''</td>',
unistr('                     <td>\0627\0644\062A\0627\0631\064A\062E</td>'),
'                </tr>',
'                <tr>',
'                   ',
'                    <td>''||:P7_TABLE_ID||''</td>',
unistr('                     <td>\0631\0642\0645 \0627\0644\062A\0631\0628\064A\0632\0647</td>'),
'                </tr>',
'            </table>',
'              ',
'',
'',
''');',
'',
' htp.p(''',
'',
'        <html>',
'        <head>',
'        <style>',
'          table, th, td {',
'              border: 1px ;',
'            }',
'        ',
'        </style>',
'        </head>',
'        <body>',
'         ',
'            <table >',
unistr('            <caption>\0627\0644\0637\0627\0644\0628\0627\062A </caption>'),
'                  <tr>',
unistr('                    <td>\0627\0644\0627\062C\0645\0627\0644\064A</td>'),
unistr('                    <td>\0627\0644\0643\0645\064A\0647</td>'),
unistr('                    <td>\0627\0644\0633\0639\0631</td>'),
unistr('                    <td>\0627\0644\0645\0634\0631\0648\0628 </td>'),
'                   </tr>',
'              ',
'',
' '');',
'    for s in cur ',
'    loop ',
unistr('    total := s."\0633\0639\0631_\0627\0644\0645\0634\0631\0648\0628" * s."CCOUNT" ;'),
'    total_Order := total_Order + total;',
'       htp.p(''',
'       ',
'                <tr>',
'                    <td>$''||total||''</td>',
'                    <td>''||s."CCOUNT"||''</td>',
unistr('                    <td>$''||s."\0633\0639\0631_\0627\0644\0645\0634\0631\0648\0628"||''</td>'),
unistr('                    <td>''||s."\0627\0633\0645_\0627\0644\0645\0634\0631\0648\0628"||''</td>'),
'                   ',
'                </tr>',
'                ',
'       ',
'       '');',
'      end loop ;',
'    htp.p(''',
'                    <tr>',
'                        <td colspan="3">$''||total_order||''</td>',
unistr('                        <td>\0627\0644\0627\062C\0645\0627\0644\064A</td>'),
'                    <tr>',
'                   </table>',
'',
'    '');',
'    :P7_TOTAL := total_Order;',
'end ;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_plug_display_when_condition=>'P7_ORDER_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39417781840303150073)
,p_plug_name=>'button'
,p_region_template_options=>'#DEFAULT#:t-Form--standardPadding:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(39412017099159735375)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_plug_display_when_condition=>'P7_ORDER_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39419876193779613919)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39420181544991738948)
,p_plug_name=>unistr('\0644\0627 \064A\0648\062C\062F \0641\0627\062A\0648\0631\0647')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(39412017099159735375)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>unistr('<h3 style="text-align:center;">\0644\0627 \064A\0648\062C\062F \0641\0627\062A\0648\0631\0647</h3>')
,p_plug_display_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_plug_display_when_condition=>'P7_ORDER_ID'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39417781929142150074)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(39417781840303150073)
,p_button_name=>'back'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(39412150494909736109)
,p_button_image_alt=>unistr('\0627\0644\0631\062C\0648\0639 \0627\0644\064A \0627\0644\0635\0641\062D\0647 \0627\0644\0633\0627\0628\0642\0647')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'HIDE'
,p_button_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39417782091223150075)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(39417781840303150073)
,p_button_name=>'print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(39412150494909736109)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\0637\0628\0627\0639\0647')
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'HIDE'
,p_button_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39417782216621150076)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(39417781840303150073)
,p_button_name=>'end_order'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(39412150494909736109)
,p_button_image_alt=>unistr('\0627\062A\0645\0627\0645 \0627\0644\0637\0644\0628')
,p_button_position=>'NEXT'
,p_button_condition=>'HIDE'
,p_button_condition_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-check-circle-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(39420179790380738930)
,p_branch_name=>'afterEndOrder'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(39417782216621150076)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39417781563056150070)
,p_name=>'P7_ORDER_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39417781621726150071)
,p_name=>'P7_TABLE_ID'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39420179675336738929)
,p_name=>'P7_TOTAL'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(39841886608539710411)
,p_name=>'P7_DATE'
,p_item_sequence=>30
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39420179916409738931)
,p_name=>'close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39417781929142150074)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420179942981738932)
,p_event_id=>wwv_flow_imp.id(39420179916409738931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39420180457580738937)
,p_name=>'print'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(39417782091223150075)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420180670748738939)
,p_event_id=>wwv_flow_imp.id(39420180457580738937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39417781929142150074)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420180775535738940)
,p_event_id=>wwv_flow_imp.id(39420180457580738937)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39417782216621150076)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420180900317738941)
,p_event_id=>wwv_flow_imp.id(39420180457580738937)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39417782091223150075)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420180555788738938)
,p_event_id=>wwv_flow_imp.id(39420180457580738937)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.print();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(39420180984829738942)
,p_name=>'showButton'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(39417781449162150069)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'mousemove'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420181069102738943)
,p_event_id=>wwv_flow_imp.id(39420180984829738942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39417781929142150074)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420181139606738944)
,p_event_id=>wwv_flow_imp.id(39420180984829738942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39417782216621150076)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(39420181247596738945)
,p_event_id=>wwv_flow_imp.id(39420180984829738942)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(39417782091223150075)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(39417782308413150077)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'endOrder'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('    insert into "\0627\0644\0641\0627\062A\0648\0631\0647"  ("\0627\0644\062A\0627\0631\064A\062E" , "\0631\0642\0645_\0627\0644\0637\0644\0628" , "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647","\0645\062C\0645\0648\0639_\0627\0644\062D\0633\0627\0628") values (TO_DATE (sysdate, ''MM/DD/YYYY'') , :P7_ORDER_ID , :P7_TABLE_ID ,:P7_TOTAL );'),
'',
unistr('    update "\0627\0644\062A\0631\0628\064A\0632\0627\062A" set TABLE_CONDITION = ''\0641\0627\0631\063A\0647'','),
'        LIVE_ORDER = null ',
'        ',
unistr('            where "\0631\0642\0645_\0627\0644\062A\0631\0628\064A\0632\0647" = :P7_TABLE_ID ; '),
'           ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(39417782216621150076)
,p_internal_uid=>39417782308413150077
);
wwv_flow_imp.component_end;
end;
/
