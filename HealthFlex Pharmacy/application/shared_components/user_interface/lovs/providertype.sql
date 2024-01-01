prompt --application/shared_components/user_interface/lovs/providertype
begin
--   Manifest
--     PROVIDERTYPE
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
 p_id=>wwv_flow_imp.id(10711678184284464)
,p_lov_name=>'PROVIDERTYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(10711678184284464)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10711993621284496)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Company'
,p_lov_return_value=>'C'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10712417352284502)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Storehouse'
,p_lov_return_value=>'S'
);
wwv_flow_imp.component_end;
end;
/
