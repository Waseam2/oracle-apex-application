prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'test'
,p_alias=>'TEST'
,p_step_title=>'test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(6704822410922303)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231103100218'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(16503086156569010)
,p_name=>'New'
,p_region_name=>'doc'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "medcine_id",',
'       "barcode_id",',
'       "medcine_name",',
'       "unit_id",',
'       "buy_price",',
'       "sell_price",',
'       "expired_date",',
'       NOTES,',
'       QUANTITY,',
'        months_between( "expired_date" ,:P14_NEW   ) as y,',
'        case ',
'          when  "QUANTITY" < :MINQUANTITI  then ''red'' ',
'            else  ''green'' ',
'          end as color,',
'          case',
'              when months_between("expired_date" , :P14_NEW ) < 0 then ''red'' ',
'              when months_between("expired_date" , :P14_NEW ) < :lastmindate then  ''red''',
'              when months_between("expired_date", :P14_NEW  )  < :MINDATE  then  ''orange''',
'          else    ''green''',
'            end as color2',
'  from "ph_medcine"',
'',
'        '))
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503162003569011)
,p_query_column_id=>1
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>10
,p_column_heading=>'Medcine Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503281050569012)
,p_query_column_id=>2
,p_column_alias=>'barcode_id'
,p_column_display_sequence=>20
,p_column_heading=>'Barcode Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503390863569013)
,p_query_column_id=>3
,p_column_alias=>'medcine_name'
,p_column_display_sequence=>30
,p_column_heading=>'Medcine Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503463253569014)
,p_query_column_id=>4
,p_column_alias=>'unit_id'
,p_column_display_sequence=>60
,p_column_heading=>'Unit Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503569502569015)
,p_query_column_id=>5
,p_column_alias=>'buy_price'
,p_column_display_sequence=>70
,p_column_heading=>'Buy Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503725917569016)
,p_query_column_id=>6
,p_column_alias=>'sell_price'
,p_column_display_sequence=>80
,p_column_heading=>'Sell Price'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503738648569017)
,p_query_column_id=>7
,p_column_alias=>'expired_date'
,p_column_display_sequence=>90
,p_column_heading=>'Expired Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16503847091569018)
,p_query_column_id=>8
,p_column_alias=>'NOTES'
,p_column_display_sequence=>100
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16504163014569021)
,p_query_column_id=>9
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>120
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR#">#QUANTITY#</span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16504571323569025)
,p_query_column_id=>10
,p_column_alias=>'Y'
,p_column_display_sequence=>40
,p_column_heading=>'Y'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16504059165569020)
,p_query_column_id=>11
,p_column_alias=>'COLOR'
,p_column_display_sequence=>110
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16504375889569023)
,p_query_column_id=>12
,p_column_alias=>'COLOR2'
,p_column_display_sequence=>50
,p_column_heading=>'Color2'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR2#">#COLOR2#</span>'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(16506367695569043)
,p_button_sequence=>10
,p_button_name=>'print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(6875364436923021)
,p_button_image_alt=>'Print'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(16504233392569022)
,p_name=>'P14_NEW'
,p_item_sequence=>20
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sysdate',
''))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(6872838964923005)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(16506481036569044)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(16506367695569043)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(16506600883569045)
,p_event_id=>wwv_flow_imp.id(16506481036569044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var sTable = $("#doc .t-Region-bodyWrap").html();',
'',
'var style = "<style>";',
'',
'style = style + ".table {width: 100%;font: 8px Calibri;}";',
'',
'style = style + ".table, th, td { border-collapse: collapse;border:1px solid black;";',
'',
'style = style + "padding: 2px 2px;}";',
'',
'style = style + "</style>";',
'',
'var win = window.open('''', '''', ''height=700,width=700''); // SET THE PAGE HEIGHT AND WIDTH',
'',
'win.document.write(''<html><head>'');',
'',
'win.document.write(''<title>Printable Page</title>'');   // FOR PDF HEADER',
'',
'win.document.write(style);          // ADD STYLE',
'',
'win.document.write(''</head>'');',
'',
'win.document.write(''<body>'');',
'',
'win.document.write(sTable);         // PRINT PART OF THE PAGE',
'',
'win.document.write(''</body></html>'');',
'',
'win.document.close();     // CLOSE THE CURRENT WINDOW.',
'',
'win.print();    // PRINT THE INTENDED PART'))
);
wwv_flow_imp.component_end;
end;
/
