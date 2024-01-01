prompt --application/shared_components/user_interface/lovs/providename
begin
--   Manifest
--     PROVIDENAME
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
 p_id=>wwv_flow_imp.id(26101154785406035)
,p_lov_name=>'PROVIDENAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "provider_name" as name , "provider_id" as provider_id from',
'    "ph_providers"'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'PROVIDER_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
