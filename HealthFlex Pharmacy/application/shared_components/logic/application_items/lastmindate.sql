prompt --application/shared_components/logic/application_items/lastmindate
begin
--   Manifest
--     APPLICATION ITEM: LASTMINDATE
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
 p_id=>wwv_flow_imp.id(17302080042074878)
,p_name=>'LASTMINDATE'
,p_protection_level=>'P'
);
wwv_flow_imp.component_end;
end;
/
