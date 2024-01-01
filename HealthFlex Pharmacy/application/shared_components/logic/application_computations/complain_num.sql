prompt --application/shared_components/logic/application_computations/complain_num
begin
--   Manifest
--     APPLICATION COMPUTATION: COMPLAIN_NUM
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
 p_id=>wwv_flow_imp.id(16015297106790796)
,p_computation_sequence=>10
,p_computation_item=>'COMPLAIN_NUM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'select count(*) from ph_complain;'
);
wwv_flow_imp.component_end;
end;
/
