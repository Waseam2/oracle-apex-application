prompt --application/shared_components/logic/application_items/ex_date_num
begin
--   Manifest
--     APPLICATION ITEM: EX_DATE_NUM
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(16014754310784050)
,p_name=>'EX_DATE_NUM'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
