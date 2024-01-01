prompt --application/shared_components/files/apex_data_pkg_ph_orders_225667_zip
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
wwv_flow_imp.g_varchar2_table(1) := '504B03041400000808007C6A9F57DAC2D38A9F000000CF0400000E00000070685F6F72646572732E6A736F6E85D3B10AC32010C6F1DDC7B8398335EAA9AF524AA1C421436931594AE8BBB76308C1FFE0F4E33EF4CEDB8CCC6B7D2E52AE6633F26A536DF7';
wwv_flow_imp.g_varchar2_table(2) := '7992E2FDC50CB27EDE558A3CC47CCD7070073E827BF0001EC1153C81E7BE070BBEEBDF72E60E7C04F7E0A1EF7197DFCEEA73DFA30587F74707F51E3C802B7882FE69DF15E6AFB03F21423ECC5761BE0AFBA9F0BF62867CBA3FF52FF5E7A3B07FC91EF26F';
wwv_flow_imp.g_varchar2_table(3) := 'FFF303504B03041400000808007C6A9F57E5128425F20000002A0200001600000070685F6F72646572735F70726F66696C652E6A736F6E75513D4F03310CDDFB2BA2CC17A4B60C151B0B13234C805094F838A37C9CE2940A55FDEF383E7455D5EB104B79';
wwv_flow_imp.g_varchar2_table(4) := 'CFEFE5D939AE94D23D0630F57704AD1ED47DD720C2F4C560C98786F5361074732B24973D37344A3F3E6F37AF2F4F3B2D3C0B0C41005773111A2B449AB8016C5391C1647A2C54AFED1DFD34F79009BCC8DFF5A4ED73719CB1603487813D69B44EE2D6B2FF';
wwv_flow_imp.g_varchar2_table(5) := '97E6B08F8918E3DB1B1FA58E52994B364AB3CEC543F9442FA642795BED3CFBE60C83C3688371839DE6B85B909800496467DDC5ECD7AF21996FCA691E5AF0537723ADC45A4EBABE9D66BD1CE6D26C3908D70F59E6680BFF40FB9FB650B5DDAD4E7F504B01';
wwv_flow_imp.g_varchar2_table(6) := '0214001400000808007C6A9F57DAC2D38A9F000000CF0400000E0000000000000000002000B6810000000070685F6F72646572732E6A736F6E504B010214001400000808007C6A9F57E5128425F20000002A020000160000000000000000002000B681CB';
wwv_flow_imp.g_varchar2_table(7) := '00000070685F6F72646572735F70726F66696C652E6A736F6E504B0506000000000200020080000000F10100002000496D706C656D656E746174696F6E20627920416E746F6E205363686566666572';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(40115884561294202)
,p_file_name=>'APEX$DATA$PKG/ph_orders$225667.zip'
,p_mime_type=>'application/x-zip'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
