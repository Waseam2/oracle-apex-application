prompt --application/shared_components/logic/application_computations/lastmindate
begin
--   Manifest
--     APPLICATION COMPUTATION: LASTMINDATE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(17302651476094956)
,p_computation_sequence=>10
,p_computation_item=>'LASTMINDATE'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select "setvalue" from "ph_setting" where "setting" = ''lastmindate'';'
,p_computation_error_message=>'error in lastminidate in computaiton'
);
wwv_flow_imp.component_end;
end;
/
