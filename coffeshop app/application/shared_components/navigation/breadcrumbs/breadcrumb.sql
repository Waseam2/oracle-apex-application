prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>46808186347481499425
,p_default_application_id=>65145
,p_default_id_offset=>39385775416825152027
,p_default_owner=>'WKSP_SWNBXSTN2DNKNT'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(39411980447539734837)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39411980646962734848)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39412590530573795114)
,p_short_name=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0645\0634\0631\0648\0628\0627\062A')
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39414187281681865334)
,p_parent_id=>wwv_flow_imp.id(39411980646962734848)
,p_short_name=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0631\0628\064A\0632\0627\062A')
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39414576653202102191)
,p_parent_id=>wwv_flow_imp.id(39411980646962734848)
,p_short_name=>unistr('\0627\0644\0637\0644\0628\0627\062A')
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39416877524379382667)
,p_short_name=>unistr('\0639\0645\0644 \0637\0644\0628 \062C\062F\064A\062F')
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39419876565767613944)
,p_short_name=>unistr('\0627\0644\0641\0627\062A\0648\0631\0647')
,p_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>7
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39421076687570739506)
,p_short_name=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0644\0628\0627\062A')
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(39422779895523736177)
,p_short_name=>unistr('\0627\0644\0627\064A\0631\062F\0627\062A')
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(40274774843545167627)
,p_short_name=>unistr('\0627\0644\0627\064A\0631\0627\062F\0627\062A')
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_imp.component_end;
end;
/
