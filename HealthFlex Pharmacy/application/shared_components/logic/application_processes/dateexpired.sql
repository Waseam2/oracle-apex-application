prompt --application/shared_components/logic/application_processes/dateexpired
begin
--   Manifest
--     APPLICATION PROCESS: dateExpired
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
 p_id=>wwv_flow_imp.id(9400444017591417)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dateExpired'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'cursor AddData is select "medcine_id" , "expired_date" from "ph_medcine" where months_between("expired_date" , sysdate) < :lastmindate;',
'cursor RemoveDate is select "medcine_id", "expired_date" from "ph_medcine" where months_between("expired_date" , sysdate ) > :lastmindate ; ',
'getData number := 0 ;',
'RmData number := 0 ;  ',
'begin ',
'',
'    for i in AddData ',
'        loop',
'            select count(*) into getData from "ph_expired_medcine" where "medcine_id" = i."medcine_id";',
'            if getData = 0 then ',
'                insert into "ph_expired_medcine" ("medcine_id" ,"expired_date") values (i."medcine_id" , i."expired_date");',
'            end if; ',
'        end loop;   ',
'',
'    for f in RemoveDate ',
'        loop',
'            select count(*) into RmData from "ph_expired_medcine" where "medcine_id" = f."medcine_id";',
'            if RmData <> 0 then ',
'                delete from "ph_expired_medcine" where "medcine_id" = f."medcine_id" ; ',
'            end if; ',
'        end loop;  ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
