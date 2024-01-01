prompt --application/shared_components/user_interface/lovs/months
begin
--   Manifest
--     MONTHS
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
 p_id=>wwv_flow_imp.id(18522329441688135)
,p_lov_name=>'MONTHS'
,p_lov_query=>'.'||wwv_flow_imp.id(18522329441688135)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18522609937688181)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'January'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18523045168688187)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'February '
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18523478670688187)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'March '
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18523882039688187)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'April '
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18524227049688189)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'May '
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18524632815688189)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'June '
,p_lov_return_value=>'6'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18525030764688193)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'July '
,p_lov_return_value=>'7'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18525466920688193)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'August '
,p_lov_return_value=>'8'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18525863960688193)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'September '
,p_lov_return_value=>'9'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18526241734688195)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'October '
,p_lov_return_value=>'10'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18526654879688195)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'November '
,p_lov_return_value=>'11'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(18527053190688196)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'December'
,p_lov_return_value=>'12'
);
wwv_flow_imp.component_end;
end;
/
