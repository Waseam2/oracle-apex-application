prompt --application/shared_components/logic/application_processes/getnotify
begin
--   Manifest
--     APPLICATION PROCESS: getNotify
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
 p_id=>wwv_flow_imp.id(20611159113544719)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getNotify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'cursor cur is select "medcine_name" , "medcine_id", "barcode_id" , QUANTITY  from "ph_medcine" where QUANTITY < :MINQUANTITI;',
'cursor removeData2 is select "medcine_id"  from "ph_medcine" where "QUANTITY" > :MINQUANTITI ; ',
'cursor dat is select "medcine_name" , "medcine_id", "barcode_id" , "expired_date" from "ph_medcine" where  months_between("expired_date" , sysdate ) < :lastmindate  ; ',
'cursor RemoveDate is select "medcine_id", "expired_date" from "ph_medcine" where months_between("expired_date" , sysdate ) > :lastmindate ; ',
'found number(5) := 0 ;',
'found2 number(5) :=0 ;',
'rmData number(5) :=0 ;',
'rmData2 number(5) :=0 ;',
'begin ',
'    for i in cur ',
'        loop',
'            select count(*)  into found  from PH_NOTIFICATION where  MEDCINE_ID = i."medcine_id" ; ',
'                if found = 0 then',
'                    insert into PH_NOTIFICATION (MEDCINE_NAME , BARCODE , MEDCINE_ID , STATUS, INFORMATION) values (i."medcine_name",i."barcode_id",i."medcine_id",''quantity'' , ''this product have minmum quantitiy ''||i.QUANTITY); ',
'                end if ;',
'        end loop;',
'        -----------------------------remove if quantitiy changed to be biger than minimum qunti',
'      for f in removedata2 ',
'        loop',
'            select count(*) into rmData2 from "PH_NOTIFICATION" n where n."MEDCINE_ID" = f."medcine_id" and STATUS = ''quantity'' ;',
'                if rmData2 <> 0 then ',
'                    delete from "PH_NOTIFICATION" d where d."MEDCINE_ID" = f."medcine_id" ; ',
'                end if ; ',
'        end loop;',
'',
'    for j in dat ',
'        loop',
'            select count(*)  into found2  from PH_NOTIFICATION where  MEDCINE_ID = j."medcine_id" ; ',
'                if found2 = 0 then',
'                      insert into PH_NOTIFICATION (MEDCINE_NAME , BARCODE , MEDCINE_ID , STATUS, INFORMATION) values (j."medcine_name",j."barcode_id",j."medcine_id",''date'' , ''expired date of this medcine is  ''||j."expired_date"); ',
'                end if ;',
'        end loop;',
'     for r in RemoveDate ',
'        loop',
'            select count(*) into RmData from "PH_NOTIFICATION" where "MEDCINE_ID" = r."medcine_id" and STATUS = ''date'' ;',
'            if RmData <> 0 then ',
'                delete from "PH_NOTIFICATION" where "MEDCINE_ID" = r."medcine_id" ; ',
'            end if; ',
'        end loop;  ',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Error in Getnotify process ',
''))
);
wwv_flow_imp.component_end;
end;
/
