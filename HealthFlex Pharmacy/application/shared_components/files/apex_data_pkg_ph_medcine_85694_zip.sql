prompt --application/shared_components/files/apex_data_pkg_ph_medcine_85694_zip
begin
--   Manifest
--     APP STATIC FILES: 100
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>2700425181679773
,p_default_application_id=>100
,p_default_id_offset=>3200132127756896
,p_default_owner=>'PHARMACY'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '504B03041400000808007C6A9F5776FFC5B52B0100009E0400000F00000070685F6D656463696E652E6A736F6E9593CB6E83301045F7FE0CAF83E4B18100DFD15D55218207C912AF82298DA2FE7B6DD22C621CE44AB098F1837BB8776E842A8DDD4C8B77';
wwv_flow_imp.g_varchar2_table(2) := '7223B44359AB1E4B2569016772A2976AAA07796F50E0829ADE63535F7568BA0D36B8367661E995BE1FE5F6E8722DC749D5660F9872C6B67DD47619BF4735A12C65A5ED2D9CF134021EB1FC8DB1627BEC95FDA0D188EB97B635D5E752F55AE9EB9FB8711A';
wwv_flow_imp.g_varchar2_table(3) := 'BE94C469FB664E7EC8C945C87608001E84EAD20DAA7D46489F11B88310FB1004B3081C8210984B90F908729780730F80B1E07F0E88170E30882009929FECF4FB1CE0CCD52F7C199246FF7CF8FF61972178152283908585284E8318C0658863DF1CCC0D1E';
wwv_flow_imp.g_varchar2_table(4) := '7BE06648F85D103644900621883017B84B9024DE495E9BF5D8051701FC3608D806E11CC410273E860FF3FE02504B03041400000808007C6A9F579AA835F6A7010000AF0700001700000070685F6D656463696E655F70726F66696C652E6A736F6EBD955F';
wwv_flow_imp.g_varchar2_table(5) := '4FC23010C0DFF9144B9FA9D1016A7833190612158561429C596A57A4BAB5B3ED5042FCEEDE8A620C9D71C4B0646B767F7FD76E77AB86E7A1194F1936CB9C21AFEBB59BA54873F10842255F4BD98CA49A3537A64C50998041A94267172D7F129E9F22AB07';
wwv_flow_imp.g_varchar2_table(6) := '07AC59CAA891CAAAB961995EEBE68C945E1A7381675C69B31D9EEA45193D959A25D63D426BDF9954141815CFF0EB1C62EA9C508B6B54F1E92AD322131A64F07607B7E7ADEC13748264D618652CA15CB0982736AC5526C4904DF5FEB798519E9114D33959';
wwv_flow_imp.g_varchar2_table(7) := '5772E070C12913D6EDDBEF47F5AE7C5CE3272DC5A6702B7F6F56103F10059BFD0BF15135D5D1E1A11BCB15B41ED6576156501BCCEF5480B9C3D6432B04377B3BE0AD64354FB758C6B9E2B46A0FFF99D691AE1E2F444BF709ECCA578F98BDE55CB1248694';
wwv_flow_imp.g_varchar2_table(8) := '55CCAD6AAE1337963B28F4A88C189C11FD6CADA670450847E8F2D22E4110A13042FDBEDF8E5017C403BB8CC7BBD676350C7BE3FA7F5FA7AA2D08098D7557989BC9D9553808A7FBF9305E0A220C37CB5D69AF47C3DB41D01BC583603FC0B9920B9E30F587';
wwv_flow_imp.g_varchar2_table(9) := '6601CF7B3BD272A2600E9653B21C6BDE71E3FD03504B010214001400000808007C6A9F5776FFC5B52B0100009E0400000F0000000000000000002000B6810000000070685F6D656463696E652E6A736F6E504B010214001400000808007C6A9F579AA835';
wwv_flow_imp.g_varchar2_table(10) := 'F6A7010000AF070000170000000000000000002000B6815801000070685F6D656463696E655F70726F66696C652E6A736F6E504B0506000000000200020082000000340300002000496D706C656D656E746174696F6E20627920416E746F6E2053636865';
wwv_flow_imp.g_varchar2_table(11) := '66666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(40115598765294192)
,p_file_name=>'APEX$DATA$PKG/ph_medcine$85694.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
