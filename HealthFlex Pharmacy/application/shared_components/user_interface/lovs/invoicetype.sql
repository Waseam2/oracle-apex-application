prompt --application/shared_components/user_interface/lovs/invoicetype
begin
--   Manifest
--     INVOICETYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(20308255123003936)
,p_lov_name=>'INVOICETYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(20308255123003936)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(20308552863003950)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'sell invoice'
,p_lov_return_value=>'s'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(20309020545003956)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'buy invoice'
,p_lov_return_value=>'b'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(20309402980003956)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'return invoice'
,p_lov_return_value=>'r'
);
wwv_flow_imp.component_end;
end;
/
