prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 65145
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>46808186347481499425
,p_default_application_id=>65145
,p_default_id_offset=>39385775416825152027
,p_default_owner=>'WKSP_SWNBXSTN2DNKNT'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(39411979822917734814)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(39412177783890736500)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(39422180627898369431)
,p_build_option_name=>'test'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
