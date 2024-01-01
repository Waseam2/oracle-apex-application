prompt --application/shared_components/logic/application_items/returned_duration
begin
--   Manifest
--     APPLICATION ITEM: RETURNED_DURATION
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
 p_id=>wwv_flow_imp.id(33506476431683622)
,p_name=>'RETURNED_DURATION'
,p_protection_level=>'P'
);
wwv_flow_imp.component_end;
end;
/
