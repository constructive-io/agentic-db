-- Deploy: migrate/unique_constraint
-- made with <3 @ constructive.io

-- requires: migrate/primary_key_constraint


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_public.unique_constraint (
  id,
  database_id,
  table_id,
  name,
  description,
  smart_tags,
  type,
  field_ids
) VALUES
  ('0037e9f0-1306-f19c-955b-60264754eea0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c1698ba6-6d14-ac47-3792-09c4546bf482', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{54882643-39ce-ddb2-62c0-f7aea7259f6f,39e565eb-0929-45ec-882e-afb4493c34e1}'),
  ('02a114e9-2c12-964c-b3c8-12d04443fec8', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '2149b42b-46a9-3ab4-b5b3-7532b438192e', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{6379bbbd-f3d2-1c0f-d92b-ce603458d455,004572d5-aa7c-f1eb-4d11-9a05b8e1aad2}'),
  ('09c62ed7-1ca2-6b69-2103-a655dfd07a84', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'c142ecba-4964-b3ec-3d3f-670c9fbc9a60', 'emails_email_key', NULL, NULL, 'u', '{82dad544-c272-a8f0-47b5-88ca1dd155b2}'),
  ('0befe348-621f-6838-0487-ee1a69e3f6e2', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '193704a9-3707-edb7-601a-b161685f1db0', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{16b42949-8443-cc80-0185-e6a1f15b2ed0}'),
  ('17b39b03-02e2-fbf4-2ace-0ccfb738b81c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8b27fb0c-e4ef-3678-e21c-e7ceb4590584', 'app_permissions_name_key', NULL, NULL, 'u', '{4c7c65f1-c56b-096a-5245-be9ea1eb126a}'),
  ('1d60e348-4a95-b033-97ef-f91fc8df717a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '193704a9-3707-edb7-601a-b161685f1db0', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019559de-67ca-f966-7690-b4bfa64060da}'),
  ('1e6a36ef-1222-7c27-c4c9-41716a8a9a0c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '0c318c3b-e53b-3083-fa53-e27bb87b3f22', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{8dcaad0c-7eaf-d4d6-6079-0c80b15468ca,dae7ce02-abdd-3adb-150d-d79f60693cb6}'),
  ('23bccea2-8065-615a-78be-9d7c44baed8b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '3f094c1d-dbc3-c508-ffb5-a20156597ce2', 'org_levels_name_key', NULL, NULL, 'u', '{160802a5-c974-3515-5267-c1da634f0ea6}'),
  ('2ec9e178-f6a6-1dce-65d0-13a4890ff93d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd7caed2d-9d55-2b47-6ea0-dfa0d1c229d8', 'invites_invite_token_key', NULL, NULL, 'u', '{f7cffd8f-d8e5-749d-0450-f82519b3adc2}'),
  ('36f7e9e6-8186-1eb2-bd15-5fb0f725bd68', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '193704a9-3707-edb7-601a-b161685f1db0', 'session_credentials_key_id_key', NULL, NULL, 'u', '{c434e360-beeb-0ff2-3a39-0f08876c4abe}'),
  ('3875d203-fc2e-7358-6328-9cbd53d40226', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'bed29a3a-7fba-8ec6-a8b8-db10680ab3b7', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{fb499549-c1ef-32fa-d2be-97c682ab3fc2,7bce4b54-488e-98c8-a32b-13f349a4df0f,7976bcbb-d7c3-1ed4-4fae-2b04392f3733}'),
  ('49ba64ab-0719-057f-7d2e-f0c694388f1b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e7b8f9bf-a6b9-72f8-c925-99d8f9aec2e6', 'role_types_name_key', NULL, NULL, 'u', '{a5d4d2f3-ae8b-6e74-4754-7664cda05eb7}'),
  ('4aa7c8c2-83df-612b-d7dc-5ec61dec856d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '74063376-1e71-fe44-ce96-9da2549d606d', 'org_permissions_name_key', NULL, NULL, 'u', '{788a4f4c-3293-a2c3-520e-b0e20be406b3}'),
  ('4b239ad5-fe20-c91c-0143-f49adccb0375', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '2b181c90-63c4-fd4c-561e-008440d468fb', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{f2475f07-dd24-6d72-74fa-24625c711732}'),
  ('4e99894f-589c-2095-15c7-ce2353b5cf49', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '4df143a8-ea7c-fbed-288c-c7ea0402c11e', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{afc87291-d4ea-117d-094f-1e101c3eecb8,738f21d0-ec1d-f81d-64e8-1551de86c5af,c534486e-1586-248a-1ea4-ea608202a05b}'),
  ('514bd9e5-5793-754c-ee9e-8eb7ee6d013f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '687d60b7-c1b5-5537-2a6e-52f922ae4a8b', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{2de2630b-8e1a-fbf9-b88a-e5a97d0789bc,453784ff-659d-abc9-4877-fb970eced29d}'),
  ('60dd0e61-635d-2221-564b-e44f535a821d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5dbb2c55-c468-712c-9741-d541cd432344', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{91364264-133f-a78c-cd99-94b8d0120965,e4852268-a4fc-fd08-e1d0-c17acaec5be4}'),
  ('6a4e2bf2-1467-6baa-0f8f-b150f15683ec', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a42d3838-c59b-b8fc-2b55-757cd14c427e', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{aadcc762-4439-571c-e91a-881ef2a0c06c,52ef0598-ebce-cdc1-0d35-00c30b220c8c}'),
  ('6cada7a1-c30c-a6f9-610a-a0161d92128b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '15d34e0e-c0c2-5434-24a0-a921074cbb1e', 'app_profiles_name_key', NULL, NULL, 'u', '{b83170a2-b651-1a8d-2a0c-54d3f4487526}'),
  ('6ec18b9d-beb5-59ca-5017-0e3346706904', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'fa0cbc82-0557-8834-524e-b837a9796a89', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{d361fa28-2729-1301-7c92-7af01897cc90,dafa1f47-a344-47fd-3c27-113ba3a61960}'),
  ('74266939-06af-bc61-60ca-3ae10fe915ea', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8a1dd501-6a68-5415-5f3c-93b0ae2023d8', 'app_levels_name_key', NULL, NULL, 'u', '{ebbaea68-f4e7-f84e-db23-677f1722dcc9}'),
  ('7ae3ff0c-6210-6579-72fa-41223bea4471', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'bd29b3d6-8fb7-1706-6a48-cd875c3c7234', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{e603a8f6-61b7-8b45-8844-c5c3e3414d38,331cf292-84bc-df55-6cad-39042d908f55}'),
  ('7e1cb4ba-c28f-4e20-2947-8b8fed36f288', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '2410451f-4c02-8ab0-ae16-f68c1a9809b0', 'phone_numbers_number_key', NULL, NULL, 'u', '{bc3436db-fe8c-a77a-54d5-a42b94d786d0}'),
  ('7fb11df8-a279-2f3e-6453-6d95c2dd515e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '15d34e0e-c0c2-5434-24a0-a921074cbb1e', 'app_profiles_slug_key', NULL, NULL, 'u', '{4009dc3f-ed01-118c-7292-954967f71ecc}'),
  ('86dc0e3a-4186-b6c7-453b-4da1993c9eeb', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'd7caed2d-9d55-2b47-6ea0-dfa0d1c229d8', 'invites_email_sender_id_key', NULL, NULL, 'u', '{357ccac7-1db9-b366-1612-f6e09945b4fc,035f2917-9a44-9c1c-c79d-f6cfc58d5351}'),
  ('896ae423-d266-21dc-1fe5-a1955c4268f7', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '74063376-1e71-fe44-ce96-9da2549d606d', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{fb5585d6-02e9-9d6b-1e16-8e2c6e670949}'),
  ('90ffde16-bff5-39c6-f654-9dff89577753', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '5b5d99e1-9167-1378-cf99-58449ebc35bc', 'users_username_key', NULL, NULL, 'u', '{86cacd54-824d-09e6-ef83-f330d5b2da0f}'),
  ('91356668-5bab-9924-83d7-556bf5457d0a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '604d3651-325e-d1e9-bb33-e58e2ec26dc5', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{117951ce-8583-cf40-80ca-9d5f462a4b94}'),
  ('95988933-85a9-1dfb-9a68-9075b6009fbc', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '4ce6beb8-c8ed-c6a4-3ab2-2397bf46ae16', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{6378cdb8-1280-d4ac-ba99-7ffab36c4200,c20eb326-4097-ac9c-d757-f7694a4e95f2}'),
  ('97300df6-b9b6-5f5b-b6e7-186c1af44b49', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '4df143a8-ea7c-fbed-288c-c7ea0402c11e', 'org_invites_invite_token_key', NULL, NULL, 'u', '{1c0287ab-7746-0fba-c95b-1eb5850e0367}'),
  ('9abc5a4d-d194-9015-b11f-2a04b1639061', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'a39edbea-985a-cc3d-063e-ca79f0f2d86e', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{49fd1e18-405e-7d51-cb28-40ce9fe466e0,ca87b6be-5d36-a116-e596-7d197e98041a,9774d488-56be-d93f-eab0-32d4f301d5c9}'),
  ('ae60d18f-d70c-d9f3-71b4-92e17a61a30e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'fa0cbc82-0557-8834-524e-b837a9796a89', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{47cebc1b-147c-10dd-7a2b-34a2a063bae0,dafa1f47-a344-47fd-3c27-113ba3a61960}'),
  ('aeaf6bc7-d975-933f-4939-ea9107d76d92', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8b27fb0c-e4ef-3678-e21c-e7ceb4590584', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{d7f04aa3-6e8b-15f5-a780-d242e364be97}'),
  ('b72966d4-3647-dc45-0b64-34515b5eafb6', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '8683be89-d3b0-72ca-e123-7e3260fa464e', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{7984daa4-5ceb-c101-c40c-6b5bcabe5d78,79ff20dd-d9d4-b55a-311e-9a53e264c147}'),
  ('bafa2b97-584c-8b4f-1a27-21a1d6c2e5a7', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '48507dfd-57d9-4811-eb30-80b216d5b2bb', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{b1487c89-070a-b68c-8986-c96c61f858e1,b3dff1c7-43f1-360e-3e52-cf79b0d6658c}'),
  ('ccdfb02a-7799-d829-24db-cca7ddcc6136', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'bf48f7e8-09a9-82c0-de50-d668ef79dabc', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{c12b60fe-202d-7cdb-4c9f-dec0877115d8}'),
  ('ce1b794c-f6ee-d599-986c-36286331a081', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '479e8f6c-d0d7-2052-9543-dad8e925ea01', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{758f39fd-bbd6-7c3e-3cb9-62858e4317cb,123402a1-b1d4-050e-3d05-ba2b5edf54aa}'),
  ('de83dec8-3817-bba5-392b-c0c1fdbaef77', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '9aeed80c-7fa9-23fb-bf8d-2a8ab74489d8', 'membership_types_name_key', NULL, NULL, 'u', '{12ae79f0-ca25-1af3-25df-9ffdf9bb6320}'),
  ('eca0dac9-ca88-1e9e-cd69-062f6e18445a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '071b46ff-a250-65b3-968c-43752ba4b36b', 'crypto_addresses_address_key', NULL, NULL, 'u', '{278a9c2b-6a55-344f-4ca5-3a64a133eb4e}'),
  ('fa0849d7-680a-db7b-e818-ab661554b416', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '7167ed8f-afef-b59a-638b-b17339fe1627', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{fe575839-51e6-6d3b-e465-176672945376}');


SET session_replication_role TO DEFAULT;


