prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>unistr('\0627\0644\0627\0631\0628\0627\062D')
,p_alias=>unistr('\0627\0644\0627\0631\0628\0627\062D')
,p_step_title=>unistr('\0627\0644\0627\0631\0628\0627\062D')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(39412008463721735275)
,p_protection_level=>'C'
,p_page_component_map=>'08'
,p_last_updated_by=>'WASEAMSAFWAT@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20230113201756'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39422376855225474738)
,p_plug_name=>unistr('\0627\0644\062A\0627\0631\064A\062E')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(39412077420347735712)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
unistr('       TO_DATE("\0627\0644\062A\0627\0631\064A\062E", ''MM/DD/YYYY'') as d,   '),
unistr('       count ("\0631\0642\0645_\0627\0644\0637\0644\0628") as order_t,'),
unistr('       sum ("\0645\062C\0645\0648\0639_\0627\0644\062D\0633\0627\0628")  as total'),
unistr('  from "\0627\0644\0641\0627\062A\0648\0631\0647" group by "\0627\0644\062A\0627\0631\064A\062E" ')))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attribute_01=>'D'
,p_attribute_03=>'TOTAL'
,p_attribute_11=>'month:week:day:list:navigation'
,p_attribute_13=>'Y'
,p_attribute_16=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<span style="text-align:right;color:red">  &ORDER_T. </span> \0639\062F\062F \0627\0644\0637\0627\0644\0628\0627\062A \0641\064A \0627\0644\064A\0648\0645'),
'<br>',
unistr('<span style="text-align:right;color:red "> $ &TOTAL. </span> \0627\062C\0645\0627\0644\064A \0627\0644\0627\0631\0628\0627\062D  \0641\064A \0627\0644\064A\0648\0645')))
,p_attribute_17=>'Y'
,p_attribute_18=>'00'
,p_attribute_19=>'Y'
,p_attribute_20=>'9'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
);
wwv_flow_imp.component_end;
end;
/
