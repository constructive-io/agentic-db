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
  ('07ea652d-d9dd-922d-6075-918a71d14337', '14b01c2d-072a-5594-645a-675751a83d86', 'd0fc0807-4235-5d54-5b47-5609ac924a86', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{346328d1-910b-6dcd-d977-bdaf832b8c5a,1fd55047-3800-f346-3c8d-a7bab23e984b}'),
  ('0fbe01f5-8fc6-d604-1d6b-1b700d22a2fb', '14b01c2d-072a-5594-645a-675751a83d86', '681f0df2-075a-ca20-6898-764e8624189e', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{c22cc3ee-da8c-d55f-707f-9c424350c319,67ccf036-bcea-112e-6c34-b8994286c829}'),
  ('1c6c1398-b629-8c03-fafb-50c74b2e1651', '14b01c2d-072a-5594-645a-675751a83d86', 'f25a8ee5-7a16-ce38-e44a-b946418a9251', 'app_permissions_name_key', NULL, NULL, 'u', '{ddc9d5a4-61ed-f815-6668-04e506278d88}'),
  ('229451bc-fdcf-7988-2b01-78099893237b', '14b01c2d-072a-5594-645a-675751a83d86', '9dec1b06-3907-c9a5-e893-502982e3c0cb', 'org_permissions_name_key', NULL, NULL, 'u', '{538cc816-6813-62c1-0d6b-d17c9d714535}'),
  ('2a84cb78-5513-6972-cb87-0c53207c3e78', '14b01c2d-072a-5594-645a-675751a83d86', '5258dec3-0cde-6103-1859-08598c428740', 'users_username_key', NULL, NULL, 'u', '{b5707f7c-c604-1206-1b43-6c65b969795c}'),
  ('40970b27-adb6-6a78-1e58-7c6a1827b1ed', '14b01c2d-072a-5594-645a-675751a83d86', 'f25a8ee5-7a16-ce38-e44a-b946418a9251', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{d7fae708-3c55-1f86-10ca-cc0ecff206fc}'),
  ('42c98496-744a-2e63-353a-233b1e2b9c84', '14b01c2d-072a-5594-645a-675751a83d86', '7a0a6c52-109c-26ae-72cf-9cf170f9e3bf', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{a32e4823-f09d-cdc7-2abd-3d49c9f9c925,f59459af-31b0-c711-1544-6b320c5efa13,d323e21d-910f-8d3d-8f19-79e5174a64e5}'),
  ('47df8a5a-8c06-9fa9-8b75-92e489ac51d5', '14b01c2d-072a-5594-645a-675751a83d86', '35cc2134-a97e-f20e-a6f8-88c65b0b8f89', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{88386539-cdab-d4ee-a9ed-b064b9a153a4,daad2ffe-21de-f052-1ac4-50a1e8e6c9fe}'),
  ('4834b250-3fa5-588d-9b8b-a0ec60821a2f', '14b01c2d-072a-5594-645a-675751a83d86', '96ceae43-e0d1-1589-98c8-e37ab1a156a2', 'app_profiles_slug_key', NULL, NULL, 'u', '{f356b824-bac4-cf48-4800-b79b528148a2}'),
  ('626db6a8-6396-028c-3eed-7f9b8c73abfb', '14b01c2d-072a-5594-645a-675751a83d86', '25b0f46b-8c26-3687-df41-a3aecb508f8a', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{2e7f9459-0417-8383-e34b-4ef0a2d86742}'),
  ('6272c19d-6abd-2433-3762-3bdf0f45bcef', '14b01c2d-072a-5594-645a-675751a83d86', '5bfa18e9-5aad-451e-519b-86f6e88c481c', 'membership_types_name_key', NULL, NULL, 'u', '{23d091ca-d6fb-ffb0-09ea-263bf0052b89}'),
  ('644e63fa-43d7-2435-30b9-c666f5e199b6', '14b01c2d-072a-5594-645a-675751a83d86', 'c62dac65-8ef3-b442-327f-bf51371e997d', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{03a70bc0-ba2a-f087-5ec3-c2a0c151077e}'),
  ('649c9f1d-a79f-dc68-5c61-2d2412666f27', '14b01c2d-072a-5594-645a-675751a83d86', 'ef68a624-cc51-591a-8dff-8d0bab00560c', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{64743e8d-9633-56fc-39fd-93dafddfa63e,6c1620a3-d0ee-4359-f0a0-76172260c85b,b0671211-af28-a1cf-9191-f528b64a00c0}'),
  ('67117962-000f-128c-6f5d-44e4a8162896', '14b01c2d-072a-5594-645a-675751a83d86', '96ceae43-e0d1-1589-98c8-e37ab1a156a2', 'app_profiles_name_key', NULL, NULL, 'u', '{98bd0c38-3dee-c5be-1352-7ea61c2a68bb}'),
  ('6966e6c6-b545-752d-9c19-688766575336', '14b01c2d-072a-5594-645a-675751a83d86', '0bd9de47-a1ec-ee8c-e8e2-ec7c1ebaf062', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{ad7b612b-9071-990a-c4c3-96323413f5aa,85544d41-6a8d-bb9f-f90c-fa2335bce7aa}'),
  ('6c0a12a5-5ca8-bf05-2aa0-33b344be6269', '14b01c2d-072a-5594-645a-675751a83d86', 'a8855ef3-982b-16d8-4b6d-7c2cd31df634', 'app_levels_name_key', NULL, NULL, 'u', '{7236ce2b-b44f-9ffd-9ec0-4400d1593dc3}'),
  ('6d31f0ca-e6ba-3516-a43a-27d294e25dff', '14b01c2d-072a-5594-645a-675751a83d86', 'd1a8d056-d28c-59c8-df9f-1360083f4bac', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{fbd3da7f-05d5-2529-b8f3-83e2d877c50f,f1469795-356e-df13-a799-9f0893a190cb}'),
  ('7db84bef-724a-2b3b-46c4-352035aaa3fe', '14b01c2d-072a-5594-645a-675751a83d86', 'eae64b14-9fbc-0c86-3ed6-89059a08be05', 'phone_numbers_number_key', NULL, NULL, 'u', '{9fccd450-4677-ece4-e7fd-c181e5592258}'),
  ('8426fd39-9387-409d-c3ca-8c53df44da0c', '14b01c2d-072a-5594-645a-675751a83d86', '35cc2134-a97e-f20e-a6f8-88c65b0b8f89', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{4da43d79-8d60-56c9-ed98-a6a568409b77,daad2ffe-21de-f052-1ac4-50a1e8e6c9fe}'),
  ('88917b21-01f9-5241-3a9e-260a9ed107b8', '14b01c2d-072a-5594-645a-675751a83d86', 'c582603e-ce38-f1b6-71b1-1fffd99b984f', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{ba8381da-b5d8-347f-4163-cbac62c9070f,ee314b16-05ee-1700-7c85-3f115a205a28}'),
  ('8bd89ef7-19de-4421-dbc7-7f9015019ae9', '14b01c2d-072a-5594-645a-675751a83d86', '982a144d-3c39-34f4-02ab-09942450e100', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{4a2ec248-76f2-be6d-ba1f-7ecc4e3df3c0}'),
  ('8ce4045e-3fd4-449a-14aa-cdb4cfd3f1fe', '14b01c2d-072a-5594-645a-675751a83d86', '6ecddb28-2e45-6df1-f553-9a337ee25c67', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{cf3eab9b-6f19-6f6f-c5d9-4aef354b9170}'),
  ('8e655b5e-27b0-02c1-b3b3-12234b7db900', '14b01c2d-072a-5594-645a-675751a83d86', '489f0d20-477a-8bc6-9c5f-71c333e1a19f', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{b4413d72-c77a-d24e-559a-01e2740b42ae}'),
  ('95147213-0beb-6187-e489-3b359833ff27', '14b01c2d-072a-5594-645a-675751a83d86', '87fa782d-b9c2-6a42-cd27-67fb4cb4cbe0', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{a817b1b4-7591-8acf-0213-836680957159,ed777501-1e8d-2993-796a-d7c15bfa0791}'),
  ('a8032367-0a1b-cbab-6b74-f009cdafeb1f', '14b01c2d-072a-5594-645a-675751a83d86', '055b393d-6690-20d4-4a0d-ee15c45beaa6', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{c99f8111-8749-65df-cbb4-8d644f62487d,a15e32a2-f9ab-e5b1-b29a-8760a778b728}'),
  ('abeff60a-241e-3af0-9900-6377931e7fca', '14b01c2d-072a-5594-645a-675751a83d86', 'b9a2458b-e527-2317-1c85-ccdc9a528eca', 'role_types_name_key', NULL, NULL, 'u', '{4dd8889b-f5c2-9f71-cff9-10a4db7a759a}'),
  ('ac157747-573f-66b9-3bbb-68a9940cfffc', '14b01c2d-072a-5594-645a-675751a83d86', '8fe9e6da-9e0f-3ac1-c970-bf777ca21dbc', 'org_levels_name_key', NULL, NULL, 'u', '{354753d1-3e6a-449d-b96e-24fbfc6284ce}'),
  ('ac4fe9b4-6897-396e-8870-13e8c044360b', '14b01c2d-072a-5594-645a-675751a83d86', '75e3c6b8-7c7f-e855-311f-f1507052e8df', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{36314496-0241-590b-d9bb-b77301eea8b9,591cb66e-7b84-60e1-5e3f-fe6c68fe3891}'),
  ('b3ffee23-377c-f89a-aa65-346093f34237', '14b01c2d-072a-5594-645a-675751a83d86', '9dec1b06-3907-c9a5-e893-502982e3c0cb', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{fdd485a3-9358-eef6-cb17-0a7f411d8f46}'),
  ('bc675af8-7d65-b1b3-68b1-47a1f3adc134', '14b01c2d-072a-5594-645a-675751a83d86', '7a0a6c52-109c-26ae-72cf-9cf170f9e3bf', 'org_invites_invite_token_key', NULL, NULL, 'u', '{3ca013fb-b2be-8bbe-27f8-65189c3b9665}'),
  ('c20b0f59-309d-bb8c-62dd-f29ad962448a', '14b01c2d-072a-5594-645a-675751a83d86', 'b2be63d4-8218-bca7-145e-c843c64b2e34', 'emails_email_key', NULL, NULL, 'u', '{e2b3576c-c12c-92bd-5871-0d8195d0398a}'),
  ('c8bd0ac5-e695-84b6-607e-49c887623847', '14b01c2d-072a-5594-645a-675751a83d86', '2f03d3e4-62f8-6a6a-84bf-07c88511b6da', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{ff9365c3-f4ec-84a4-139c-ee067f48b467,3fb5eeba-a857-2048-2549-51a70b61385c}'),
  ('ce064a8e-c9d3-db02-e1eb-8e8b90842acd', '14b01c2d-072a-5594-645a-675751a83d86', '082049ba-1998-3f28-5ae6-46a3514f0d2c', 'invites_invite_token_key', NULL, NULL, 'u', '{e675718a-1eaa-f02a-a35b-64ec3a4e1441}'),
  ('d61e06b5-721d-3199-468a-1e365e46e047', '14b01c2d-072a-5594-645a-675751a83d86', '91f23894-6f86-af58-0cf9-3ad402891f5d', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{48178c96-960e-b272-2931-0db840d73c3c,158b486d-962c-59f4-3183-c13727639375}'),
  ('f010425c-4a8a-91b6-dc5f-b18c458ca447', '14b01c2d-072a-5594-645a-675751a83d86', '944c5ffc-708b-3204-15fa-e07da614ea22', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{337c9fc4-6bc2-28d8-373e-285903059884,b296b6a2-953e-a0a6-3407-06733f2aee38}'),
  ('f2f6b77b-13aa-0b93-5537-a3539a5dc3cc', '14b01c2d-072a-5594-645a-675751a83d86', '25b0f46b-8c26-3687-df41-a3aecb508f8a', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{836221be-bc3d-1630-3736-438b548ead7c}'),
  ('f50b2615-74a8-17dc-6cee-8daf025202d9', '14b01c2d-072a-5594-645a-675751a83d86', '162f732d-d7df-85a6-5ae7-155c8d525f0a', 'crypto_addresses_address_key', NULL, NULL, 'u', '{4974ee28-b291-2b9e-a843-4a7a03a58093}'),
  ('f887884b-2e30-046a-3939-ffeece5b6f59', '14b01c2d-072a-5594-645a-675751a83d86', '25b0f46b-8c26-3687-df41-a3aecb508f8a', 'session_credentials_key_id_key', NULL, NULL, 'u', '{c2fb59b5-c85f-3c58-457e-43a20d7da1b1}'),
  ('fb7d7c72-ecca-e02b-cd2e-5041eed2c7a3', '14b01c2d-072a-5594-645a-675751a83d86', '082049ba-1998-3f28-5ae6-46a3514f0d2c', 'invites_email_sender_id_key', NULL, NULL, 'u', '{e3633ee0-9184-7163-ffd5-136148a4382b,82f9b452-e9cd-da54-3645-1b0fd6cb990b}'),
  ('feb44b1a-48dd-8c89-0ab5-adeb8903afc8', '14b01c2d-072a-5594-645a-675751a83d86', 'd4267430-d15d-f69e-23e4-dbace0dafda0', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{e70ccd5c-ff78-421f-4975-40ef40d2800d,fe936bcb-5386-99d9-80b0-2030d1f3c046,9c497469-2098-2fbc-292a-f561e350544a}');


SET session_replication_role TO DEFAULT;


