prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6704822410922303)
,p_build_option_name=>'Test'
,p_build_option_status=>'EXCLUDE'
,p_build_option_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'this page will disappear',
''))
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(6902753147923310)
,p_build_option_name=>'production'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'this page will appear'
);
wwv_flow_imp.component_end;
end;
/
