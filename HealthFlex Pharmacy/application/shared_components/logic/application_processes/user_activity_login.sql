prompt --application/shared_components/logic/application_processes/user_activity_login
begin
--   Manifest
--     APPLICATION PROCESS: user_activity_logIn
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
 p_id=>wwv_flow_imp.id(11601671106302439)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'user_activity_logIn'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'insert into "ph_user_activity" ("user_name" , "login_date" , "session_id") values (:APP_USER , sysdate , APEX_CUSTOM_AUTH.GET_SESSION_ID);',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
