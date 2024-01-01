prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 65145
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>46808186347481499425
,p_default_application_id=>65145
,p_default_id_offset=>39385775416825152027
,p_default_owner=>'WKSP_SWNBXSTN2DNKNT'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(39412153365935736183)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(39412008463721735275)
,p_default_dialog_template=>wwv_flow_imp.id(39411988031681735172)
,p_error_template=>wwv_flow_imp.id(39411989602172735189)
,p_printer_friendly_template=>wwv_flow_imp.id(39412008463721735275)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(39411989602172735189)
,p_default_button_template=>wwv_flow_imp.id(39412150387286736108)
,p_default_region_template=>wwv_flow_imp.id(39412077420347735712)
,p_default_chart_template=>wwv_flow_imp.id(39412077420347735712)
,p_default_form_template=>wwv_flow_imp.id(39412077420347735712)
,p_default_reportr_template=>wwv_flow_imp.id(39412077420347735712)
,p_default_tabform_template=>wwv_flow_imp.id(39412077420347735712)
,p_default_wizard_template=>wwv_flow_imp.id(39412077420347735712)
,p_default_menur_template=>wwv_flow_imp.id(39412089865080735756)
,p_default_listr_template=>wwv_flow_imp.id(39412077420347735712)
,p_default_irr_template=>wwv_flow_imp.id(39412072887596735680)
,p_default_report_template=>wwv_flow_imp.id(39412112781506735877)
,p_default_label_template=>wwv_flow_imp.id(39412147866554736078)
,p_default_menu_template=>wwv_flow_imp.id(39412152001450736114)
,p_default_calendar_template=>wwv_flow_imp.id(39412152020171736120)
,p_default_list_template=>wwv_flow_imp.id(39412145967475736052)
,p_default_nav_list_template=>wwv_flow_imp.id(39412136934796736020)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(39412136934796736020)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(39412135142774736005)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(39412019823341735384)
,p_default_dialogr_template=>wwv_flow_imp.id(39412017099159735375)
,p_default_option_label=>wwv_flow_imp.id(39412147866554736078)
,p_default_required_label=>wwv_flow_imp.id(39412149171117736083)
,p_default_navbar_list_template=>wwv_flow_imp.id(39412137946308736025)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
