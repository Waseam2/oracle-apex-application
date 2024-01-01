prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>46808186347481499425
,p_default_application_id=>65145
,p_default_id_offset=>39385775416825152027
,p_default_owner=>'WKSP_SWNBXSTN2DNKNT'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(39411980921244734870)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39412182816280736716)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\0627\0644\0635\0641\062D\0647 \0627\0644\0631\0626\064A\0633\064A\0647')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39420977210325706148)
,p_list_item_display_sequence=>12
,p_list_item_link_text=>unistr('\0627\0644\0637\0644\0628\0627\062A')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39414575797424102159)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>unistr('\0639\0645\0644 \0637\0644\0628')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-navicon'
,p_parent_list_item_id=>wwv_flow_imp.id(39420977210325706148)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39421075767100739437)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0637\0644\0628\0627\062A')
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9:::'
,p_list_item_icon=>'fa-clipboard-edit'
,p_parent_list_item_id=>wwv_flow_imp.id(39420977210325706148)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39412189980636744842)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\0627\0636\0627\0641\0647')
,p_list_item_icon=>'fa-cart-plus'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39412585664682794827)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\0642\0627\0626\0645\0647 \0627\0644\0645\0634\0631\0648\0628\0627\062A')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-coffee'
,p_parent_list_item_id=>wwv_flow_imp.id(39412189980636744842)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39414375659782015258)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\0642\0627\0626\0645\0647 \0627\0644\062A\0631\0628\064A\0632\0627\062A')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-button-container'
,p_parent_list_item_id=>wwv_flow_imp.id(39412189980636744842)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40262847774324657912)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('\0627\0644\0627\064A\0631\0627\062F\0627\062A')
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39422779104224736111)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('\0627\0644\0627\0631\0628\0627\062D \0639\0644\064A \0627\0644\062A\0642\0648\064A\0645')
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-o'
,p_parent_list_item_id=>wwv_flow_imp.id(40262847774324657912)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(40274773941857167626)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('\0627\0644\0627\064A\0631\0627\062F\0627\062A')
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_list_item_icon=>'fa-money'
,p_parent_list_item_id=>wwv_flow_imp.id(40262847774324657912)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp.component_end;
end;
/
