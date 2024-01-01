prompt --application/shared_components/user_interface/lovs/ph_medcine_medcine_name
begin
--   Manifest
--     PH_MEDCINE.MEDCINE_NAME
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
 p_id=>wwv_flow_imp.id(24216875054695281)
,p_lov_name=>'PH_MEDCINE.MEDCINE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ph_medcine'
,p_return_column_name=>'medcine_id'
,p_display_column_name=>'medcine_name'
,p_default_sort_column_name=>'medcine_name'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
