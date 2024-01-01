prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_imp.id(6900146603923203)
,p_name=>'Sell Order'
,p_alias=>'SELL-ORDER'
,p_step_title=>'Sell Order'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#APP_FILES#styles#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.search',
'{',
'    margin-left:-50px ;',
'}',
'',
'.search::placeholder',
'{',
'    font-size: 20px;',
'    text-align: center;',
'}',
'',
'.search:hover',
'{',
'    color: rgb(103, 201, 88);',
'}',
'.wid',
'{',
'    width: 40px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'WASEAM'
,p_last_upd_yyyymmddhh24miss=>'20231122000521'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12400948634263297)
,p_plug_name=>'search '
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(6802440761922783)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>7
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12401248112263300)
,p_name=>'medicine menu'
,p_parent_plug_id=>wwv_flow_imp.id(12400948634263297)
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       "medcine_id",   ',
'      substr("medcine_name",1,20) as medcine_name, --substr(your_string, 1, 32760) to get limit number of character ',
'       "unit_id",',
'       "QUANTITY",',
'       "sell_price",',
'       "expired_date",',
'       NOTES,',
'       case when "QUANTITY" < :MINQUANTITI  then ''red''',
'       else ''green'' ',
'       end as color,',
'       case',
'            when months_between("expired_date" , sysdate) < 0 then ''red''',
'            when months_between("expired_date" , sysdate) < :lastmindate  then ''red''',
'            when months_between("expired_date" , sysdate) < :MINDATE   then ''orange''',
'        else ''green'' ',
'        end as color2 ',
'  from "ph_medcine"',
'  where',
'  upper(''%''||"medcine_name"||''%'') like upper (''%''||:P3_SEARCH||''%'') ',
'  or',
'  "barcode_id" = :P3_SEARCH ; ',
'  ',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1>no medicicne found </h1>',
''))
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12403004590263317)
,p_query_column_id=>1
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>40
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14205004134481940)
,p_query_column_id=>2
,p_column_alias=>'MEDCINE_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Medcine Name'
,p_use_as_row_header=>'N'
,p_column_css_class=>'searchFormat'
,p_column_hit_highlight=>'&P3_SEARCH.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12401952290263307)
,p_query_column_id=>3
,p_column_alias=>'unit_id'
,p_column_display_sequence=>60
,p_column_heading=>'Unit Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(11602473685472628)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(14204674388481937)
,p_query_column_id=>4
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>50
,p_column_heading=>'Quantity'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR#">#QUANTITY#</span>'
,p_report_column_width=>2
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12402217164263309)
,p_query_column_id=>5
,p_column_alias=>'sell_price'
,p_column_display_sequence=>70
,p_column_heading=>'Sell Price'
,p_use_as_row_header=>'N'
,p_column_format=>'FML999G999G999G999G990D00'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12401721700263304)
,p_query_column_id=>6
,p_column_alias=>'expired_date'
,p_column_display_sequence=>80
,p_column_heading=>'Expired Date'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span style="color:#COLOR2#">#expired_date#</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12402817680263315)
,p_query_column_id=>6
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>20
,p_column_heading=>'remove'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>' <span aria-hidden="true" class="t-Icon fa fa-minus-circle"></span>'
,p_column_link_attr=>' title="#medcine_id#" class=" delete t-Button t-Button--noLabel t-Button--icon t-Button--danger t-Button--simple"'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12402319727263310)
,p_query_column_id=>7
,p_column_alias=>'NOTES'
,p_column_display_sequence=>90
,p_column_heading=>'Notes'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12402869061263316)
,p_query_column_id=>7
,p_column_alias=>'DERIVED$02'
,p_column_display_sequence=>10
,p_column_heading=>'add'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-plus-circle"></span>'
,p_column_link_attr=>' title="#medcine_id#" class=" add t-Button t-Button--noLabel t-Button--icon t-Button--success t-Button--simple"'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16505853803569038)
,p_query_column_id=>8
,p_column_alias=>'COLOR'
,p_column_display_sequence=>100
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(16506115387569040)
,p_query_column_id=>9
,p_column_alias=>'COLOR2'
,p_column_display_sequence=>110
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(12401122031263298)
,p_name=>'medicine'
,p_template=>wwv_flow_imp.id(6802440761922783)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'      ',
'       "medcine_id",',
'       "quantitiy"',
'  from "ph_orders_medcine"',
'  where ',
'    "order_id" = :P3_ORDER_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_ORDER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(6840373677922897)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2>no data to display ',
'</h2>'))
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12403839609263326)
,p_query_column_id=>1
,p_column_alias=>'medcine_id'
,p_column_display_sequence=>20
,p_column_heading=>'Medcine name'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(13400597312436552)
,p_report_column_width=>40
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12403957193263327)
,p_query_column_id=>2
,p_column_alias=>'quantitiy'
,p_column_display_sequence=>30
,p_column_heading=>'Quantitiy'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(12404087180263328)
,p_query_column_id=>3
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'cancel order'
,p_use_as_row_header=>'N'
,p_column_link=>'#'
,p_column_linktext=>'<span aria-hidden="true" class="t-Icon fa fa-times-circle"></span>'
,p_column_link_attr=>'title="#medcine_id#" class=" cancel t-Button t-Button--noLabel t-Button--icon t-Button--danger t-Button--simple"'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12405340535263341)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12401122031263298)
,p_button_name=>'Cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'are you sure you want to leave ? '
,p_confirm_style=>'warning'
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12405302477263340)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12401122031263298)
,p_button_name=>'Invoice'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(6875527579923021)
,p_button_image_alt=>'Invoice'
,p_button_position=>'DELETE'
,p_icon_css_classes=>'fa-file-text-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12405885854263346)
,p_branch_name=>'cancel'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12405340535263341)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14202216469481912)
,p_branch_name=>'go to invoice'
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_ORDER_ID,P7_INVOICE_TYPE,P7_CLIENT_NAME:&P3_ORDER_ID.,s,&P3_CLIENT_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(12405302477263340)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12401152428263299)
,p_name=>'P3_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12400948634263297)
,p_prompt=>'Search'
,p_placeholder=>'search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'search'
,p_field_template=>wwv_flow_imp.id(6872578399923000)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12403248231263320)
,p_name=>'P3_ORDER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12403371438263321)
,p_name=>'P3_MEDICINE_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14203333045481924)
,p_name=>'P3_QUANTITIY'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20629962577889607)
,p_name=>'P3_EXPIREDDATE'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31712935017244111)
,p_name=>'P3_CLIENT_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12401122031263298)
,p_prompt=>'Client Name'
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
 p_id=>wwv_flow_imp.id(12402406199263311)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_SEARCH'
,p_bind_type=>'live'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12402488969263312)
,p_event_id=>wwv_flow_imp.id(12402406199263311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12401248112263300)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12403072177263318)
,p_name=>'add'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.add'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12403598433263323)
,p_event_id=>wwv_flow_imp.id(12403072177263318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_MEDICINE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12403164741263319)
,p_event_id=>wwv_flow_imp.id(12403072177263318)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'order_test number :=0;',
'medicine_test number :=0;',
'medicineQuant number :=0;',
'exDate date ; ',
'found boolean :=false ;',
'begin',
'',
'        --get quqntitiy to variable to use it ',
'        select "QUANTITY" into :P3_QUANTITIY from "ph_medcine" where "medcine_id" = :P3_MEDICINE_ID;',
'       ------------------------------------------------------------------------------------------------------',
'       -----------------------------------------------expird date check ------------------------------------',
'        --get expired Date to variable to use it ',
'',
'       select "expired_date" into :P3_EXPIREDDATE from "ph_medcine" where "medcine_id" = :P3_MEDICINE_ID;',
'            -- found := expiredate(exDate);',
'            -- if found then ',
'            --     :P3_EXPIREDDATE := ''false'' ; ',
'            -- else ',
'            --     :P3_EXPIREDDATE :=''true'' ;',
'            -- end if ; ',
'',
'          -- select "expired_date" into :P3_EXPIREDDATE from "ph_medcine" where "medcine_id" = :P3_MEDICINE_ID;',
'        --     if to_date(exDate,''YYYY-MM-DD'') < to_date(sysdate,''YYYY-MM-DD'')  then ',
'        --         :P3_EXPIREDDATE := ''false'';',
'        --     else ',
'        --         :P3_EXPIREDDATE := ''true'';',
'        --     end if ;',
'        --   ----------------  ----------------------------------------------------------------------------------',
'',
'          ',
'        --check if the quantitiy is available or not and if date is vaild or not ',
'        select "QUANTITY" , "expired_date" into medicineQuant , exDate from "ph_medcine" where "medcine_id" = :P3_MEDICINE_ID;',
'    ',
'    if medicineQuant >= 1 and to_date(exDate,''YYYY-MM-DD'') > to_date(sysdate,''YYYY-MM-DD'') then ',
'',
'            /* if make order first time this will be excuted  */',
'            if :P3_ORDER_ID is null  then ',
'                insert into "ph_orders" ("type") values (''s'');',
'                :P3_ORDER_ID := "order_seq".currval ;',
'            end if ;',
'',
'            -- select  "order_id" , "medince_id" into order_test , medicine_test  from "ph_orders_medcine" ',
'            --    where "order_id" = :P3_ORDER_ID and  ',
'',
'            found := checkmedcine(:P3_ORDER_ID , :P3_MEDICINE_ID);',
'            -- if :P3_QUANTITIY >= 1 then ',
'                    if found  then   --  test if the medcine exist in table or add new ',
'                       update "ph_orders_medcine" set "quantitiy" = "quantitiy" + 1 ',
'                         where "order_id" = :P3_ORDER_ID and "medcine_id" =:P3_MEDICINE_ID;',
'                         update "ph_medcine" set "QUANTITY" ="QUANTITY" -1 where "medcine_id" = :P3_MEDICINE_ID ; -- for decrese one  from the stock',
'                    else ',
'                        insert into "ph_orders_medcine" ("order_id","medcine_id","quantitiy") ',
'                                                    values (:P3_ORDER_ID, :P3_MEDICINE_ID,1);',
'                        update "ph_medcine" set "QUANTITY" ="QUANTITY" -1 where "medcine_id" = :P3_MEDICINE_ID ;   -- for decrese one  from the stock',
'                    end if; ',
'            -- else ',
'            --     htp.p(''hello'');',
'            -- end if;',
'    else ',
'            ',
'          htp.p(''<script>alert(no data );</script>'');',
'',
'',
'    end if ;',
'end;'))
,p_attribute_02=>'P3_ORDER_ID,P3_MEDICINE_ID'
,p_attribute_03=>'P3_ORDER_ID,P3_EXPIREDDATE,P3_QUANTITIY'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12403506023263322)
,p_event_id=>wwv_flow_imp.id(12403072177263318)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12401122031263298)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14204779954481938)
,p_event_id=>wwv_flow_imp.id(12403072177263318)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12401248112263300)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14204252704481933)
,p_event_id=>wwv_flow_imp.id(12403072177263318)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var value = $v(''P3_QUANTITIY'');',
'',
'if (value < 1)',
'{',
'    alert("no enough medcine in the stock ");',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(20631290187889620)
,p_event_id=>wwv_flow_imp.id(12403072177263318)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const  exdate = $v(''P3_EXPIREDDATE'');',
'const currentDate = new Date(); ',
'',
'const ex = new Date(exdate); //this is expired date of medecine',
'const current = new Date(currentDate); //this is the current date ',
'if (ex  < current) { ',
'    alert(" this medecine is expired can''t sell it !!  " );',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12404188643263329)
,p_name=>'reduceOrder'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.delete '
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12404238836263330)
,p_event_id=>wwv_flow_imp.id(12404188643263329)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_MEDICINE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12404409036263331)
,p_event_id=>wwv_flow_imp.id(12404188643263329)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'found boolean :=false ;',
'quant number := 0 ; ',
'begin',
'',
'    /* if make order first time this will be excuted  */',
'    -- if :P3_ORDER_ID is null  then ',
'    --     insert into "ph_orders" ("type") values (''s'');',
'    --     :P3_ORDER_ID := "order_seq".currval ;',
'    -- end if ;',
'',
'    -- select  "order_id" , "medince_id" into order_test , medicine_test  from "ph_orders_medcine" ',
'    --    where "order_id" = :P3_ORDER_ID and  ',
'',
'     found := checkmedcine(:P3_ORDER_ID , :P3_MEDICINE_ID);',
'     select "quantitiy" into quant from "ph_orders_medcine" where ',
'        "order_id" = :P3_ORDER_ID and "medcine_id" = :P3_MEDICINE_ID;',
'        if  quant != 1 then',
'             if found then ',
'               update "ph_orders_medcine" set "quantitiy" = "quantitiy" - 1 ',
'                 where "order_id" = :P3_ORDER_ID and "medcine_id" =:P3_MEDICINE_ID;',
'                 update "ph_medcine" set "QUANTITY" = "QUANTITY" + 1 ',
'                 where  "medcine_id" = :P3_MEDICINE_ID;',
'             end if;',
'        else    ',
'',
'            delete from "ph_orders_medcine" where "order_id" = :P3_ORDER_ID and "medcine_id" =:P3_MEDICINE_ID;',
'            update "ph_medcine" set "QUANTITY" = "QUANTITY" + 1 ',
'                 where  "medcine_id" = :P3_MEDICINE_ID;',
'        end if ;',
'',
'    exception ',
'    when no_data_found then ',
'    htp.p(''gg'');',
'        ',
'',
'end;'))
,p_attribute_02=>'P3_ORDER_ID,P3_MEDICINE_ID'
,p_attribute_03=>'P3_ORDER_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12404449157263332)
,p_event_id=>wwv_flow_imp.id(12404188643263329)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12401122031263298)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14205086485481941)
,p_event_id=>wwv_flow_imp.id(12404188643263329)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12401248112263300)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12404704097263334)
,p_name=>'cancel'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'a.cancel'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12404823334263335)
,p_event_id=>wwv_flow_imp.id(12404704097263334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_MEDICINE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.triggeringElement.title'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12404866572263336)
,p_event_id=>wwv_flow_imp.id(12404704097263334)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'medQuant number(10) := 0 ; ',
'',
'begin',
'        --  to get all quantitiy of the medcine in order;',
'    select "quantitiy" into medQuant from "ph_orders_medcine" where  "order_id" = :P3_ORDER_ID and "medcine_id" = :P3_MEDICINE_ID;',
'        -- delete order from the order table ',
'    delete from "ph_orders_medcine" where "order_id" = :P3_ORDER_ID and "medcine_id" = :P3_MEDICINE_ID;',
'        -- add the quantitiy of the medcine in the stock again',
'    update "ph_medcine" set "QUANTITY" = "QUANTITY" + medQuant where  "medcine_id" = :P3_MEDICINE_ID;',
'',
'end;'))
,p_attribute_02=>'P3_ORDER_ID,P3_MEDICINE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12404980043263337)
,p_event_id=>wwv_flow_imp.id(12404704097263334)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12401122031263298)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14205143586481942)
,p_event_id=>wwv_flow_imp.id(12404704097263334)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(12401248112263300)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12405769149263345)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cancel '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' cursor cur is select "quantitiy" , "medcine_id" from "ph_orders_medcine" where  "order_id" = :P3_ORDER_ID;',
'',
'begin',
'',
'if :P3_ORDER_ID is not null then ',
'',
'      for ff in cur',
'        loop',
'             update "ph_medcine" set "QUANTITY" = "QUANTITY" +  ff."quantitiy" where "medcine_id" = ff."medcine_id" ; ',
'        end loop;',
'',
'        delete from "ph_orders_medcine" where "order_id" =:P3_ORDER_ID;',
'        -- delete from "ph_orders" where "order_id" = :P3_ORDER_ID ;   -- because i don''t want to delete the order id ',
'',
'',
'',
'',
'end if;',
'exception ',
'    when no_data_found then ',
'        htp.p(''no Data found'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12405340535263341)
);
wwv_flow_imp.component_end;
end;
/
