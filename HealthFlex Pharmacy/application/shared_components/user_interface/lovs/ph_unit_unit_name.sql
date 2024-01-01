prompt --application/shared_components/user_interface/lovs/ph_unit_unit_name
begin
--   Manifest
--     PH_UNIT.UNIT_NAME
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
 p_id=>wwv_flow_imp.id(11602473685472628)
,p_lov_name=>'PH_UNIT.UNIT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ph_unit'
,p_return_column_name=>'unit_id'
,p_display_column_name=>'unit_name'
,p_default_sort_column_name=>'unit_name'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
