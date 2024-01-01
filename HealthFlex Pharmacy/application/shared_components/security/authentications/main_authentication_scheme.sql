prompt --application/shared_components/security/authentications/main_authentication_scheme
begin
--   Manifest
--     AUTHENTICATION: main authentication scheme
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(9401887560542694)
,p_name=>'main authentication scheme'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'AUTHETICATE'
,p_attribute_04=>'USER_ACTIVITY_LOGOUT'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
