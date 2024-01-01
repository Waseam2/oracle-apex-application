prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'shortcoming medecine'
,p_alias=>'SHORTCOMING-MEDECINE'
,p_step_title=>'shortcoming medecine'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231209101914'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20633655317889644)
,p_plug_name=>'shortcoming medecine'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(6814904117922810)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(6705368347922322)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(6876976300923024)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(24216823871695185)
,p_name=>'shortcoming medecine'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum as rowNumber,',
'       "shortcoming_id",',
'       "medcine_id",',
'       "quantity"',
'  from "ph_shortcomings"'))
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(24706878764626598)
,p_query_column_id=>1
,p_column_alias=>'ROWNUMBER'
,p_column_display_sequence=>10
,p_column_heading=>'Rownumber'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24217384054695316)
,p_query_column_id=>2
,p_column_alias=>'shortcoming_id'
,p_column_display_sequence=>0
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24217679026695330)
,p_query_column_id=>3
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>20
,p_column_heading=>'Medcine'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(24216875054695281)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(24218050416695330)
,p_query_column_id=>4
,p_column_alias=>'quantity'
,p_column_display_sequence=>30
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(20633472002889642)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'-------------------------this cursor to add medicine to the table ---------------------',
'cursor addData is select "medcine_id" , "QUANTITY" from "ph_medcine" where "QUANTITY" < :MINQUANTITI ; ',
'-------------------------this cursor to delete medicine from the table ------------------',
'cursor removeData is select "medcine_id"  from "ph_medcine" where "QUANTITY" > :MINQUANTITI ; ',
'found number := 0 ;  -- this for test case if the medicine is exist in table or not avoid duplicated .',
'rmData number := 0; -- test for delete medicine from table ',
'begin',
'    ----------------if the medicine have minmum quantity add it to the table ----------------',
'    for i in addData',
'        loop',
'            -- check if the medicine is already exist in the table don''t add them againe ---',
'            select count(*) into found from "ph_shortcomings" where "medcine_id" = i."medcine_id"; ',
'',
'            if found = 0 then ',
'                insert into "ph_shortcomings" ("medcine_id" , "quantity") values (i."medcine_id" , i."QUANTITY");',
'            else ',
'                update "ph_shortcomings" set "quantity" =i."QUANTITY" where "medcine_id" = i."medcine_id";',
'            end if ;',
'',
'        end loop ;',
'    ---------------if the medicine it''s quantity increase delete it from the table ---------------------',
'    for f in removedata ',
'        loop',
'            select count(*) into rmData from "ph_shortcomings" where "medcine_id" = f."medcine_id";',
'                if rmData <> 0 then ',
'                    delete from "ph_shortcomings" where "medcine_id" = f."medcine_id" ; ',
'                end if ; ',
'',
'        end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
