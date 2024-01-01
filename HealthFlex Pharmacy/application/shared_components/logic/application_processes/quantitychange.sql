prompt --application/shared_components/logic/application_processes/quantitychange
begin
--   Manifest
--     APPLICATION PROCESS: quantityChange
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(9400282222586609)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'quantityChange'
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
