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
  ('019d11d9-5bc1-7a85-8b32-6e86952b341d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5aed-7673-b41b-b11528f73f79', 'users_username_key', NULL, NULL, 'u', '{019d11d9-5b90-709b-90d5-c8bf34ae2e29}'),
  ('019d11d9-5cff-7352-ad0a-2c2d0795b47d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5c7c-7d21-9df2-4c6a64bb86d7', 'role_types_name_key', NULL, NULL, 'u', '{019d11d9-5cdb-7151-8d75-828686d87d16}'),
  ('019d11d9-5fed-7676-88e1-e624f8ee7feb', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-5ed0-7a4b-a498-0b5f6e567acd', 'membership_types_name_key', NULL, NULL, 'u', '{019d11d9-5f4f-70b9-8029-c60b136a2b72}'),
  ('019d11d9-6217-740d-adbf-04c8be35204b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6176-7383-97c7-be4ad83ecdd6', 'app_permissions_name_key', NULL, NULL, 'u', '{019d11d9-61f3-7edd-8f92-8b5ef59733cf}'),
  ('019d11d9-6263-7015-8ba7-e88a163b466b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6176-7383-97c7-be4ad83ecdd6', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d11d9-622a-7458-86ad-af1d31af6374}'),
  ('019d11d9-66a6-7f2c-8891-a5fac299911e', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-6556-7cf8-a5f5-76303fdb890e', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d11d9-65d9-738e-b75e-d6fdf71f77ad,019d11d9-65fd-7699-bbb9-5a4a0b7c8231}'),
  ('019d11d9-6790-7932-847d-ccba0581578b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-66bf-741b-a410-2dca24ec5f99', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d11d9-6731-775e-9c49-b617e3d1a386}'),
  ('019d11d9-712c-7407-8b64-925e24e5a051', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-695f-741e-9518-2589c027a57e', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d11d9-70b5-7214-8053-210f67bb6bd5}'),
  ('019d11d9-7da5-77e1-8abb-15cdc5cacd03', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-7c39-7696-a264-aa9a41021c04', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d11d9-7cb9-71a5-b48c-b0c6127b4a8e,019d11d9-7d1a-7b29-995c-62904fa67170}'),
  ('019d11d9-7ef4-72c6-9a32-b82f49f0f809', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-7e39-75bf-aff6-4443c41b546c', 'app_levels_name_key', NULL, NULL, 'u', '{019d11d9-7eb9-71c7-b631-f084e09e414a}'),
  ('019d11d9-81e3-727b-b35c-26eb46879f47', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-802e-7792-b910-56e68cf44ef9', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d11d9-80ad-7abb-82da-f1095cc42c67,019d11d9-80e8-7bb5-9a1a-fddf4119c398}'),
  ('019d11d9-87c4-7ffc-873e-34c7c1c628dd', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-84e3-7200-9cb7-df3d55a5a5a6', 'app_profiles_name_key', NULL, NULL, 'u', '{019d11d9-8585-7340-bf68-05a426a92d92}'),
  ('019d11d9-87dd-72c7-82d4-44ef8ecd0645', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-84e3-7200-9cb7-df3d55a5a5a6', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d11d9-85c3-706b-99bf-35d83f1db319}'),
  ('019d11d9-8965-7fb7-b1a4-464e3a2f3826', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-8822-715b-a67b-fd1437a588be', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d11d9-88a7-7ec8-8ce8-cb987b4a7ca7,019d11d9-88fd-7e98-b980-9049d6737ecf}'),
  ('019d11d9-9a54-74dc-85c1-0b7d0ea16c67', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-9991-76e8-8d2b-2c7a59853f40', 'org_permissions_name_key', NULL, NULL, 'u', '{019d11d9-9a26-7010-99b3-c3965e3f2e12}'),
  ('019d11d9-9aaf-794e-b194-115ad0047677', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-9991-76e8-8d2b-2c7a59853f40', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d11d9-9a6c-75de-b896-bb5a2381b69f}'),
  ('019d11d9-a059-707c-808d-8b3c94f4cd07', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-9e6d-756a-b6e0-866693413e39', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d11d9-9f0a-7b39-8ae1-de6f29566695,019d11d9-9f3a-7850-8af8-46ecbbf5eddf,019d11d9-9ffd-71d9-9a98-55b1f7b760d8}'),
  ('019d11d9-a25e-76d5-bc0f-0689fd2478cd', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-a070-7071-a564-da9ac762e36d', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d11d9-a10f-7db8-9d89-c456ac816e3f}'),
  ('019d11d9-aab5-7eb0-b3e8-4725eb6d1590', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-a62f-7604-86c2-d69ad14df8f4', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d11d9-aa52-7f80-9f75-e459cdbdfcf6}'),
  ('019d11d9-af29-72f2-82fd-0fe74ee99d3d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-a485-70d1-8ce0-a34dd4ec4db6', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d11d9-ae4a-7b10-b220-efb5738183f5,019d11d9-aed2-745b-844a-21d6d1aa96a5}'),
  ('019d11d9-b129-7300-872d-ccdd573045aa', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-af7f-793c-b9fd-8b3ea0e2ae47', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d11d9-b06a-7dfa-90dd-49571e6fb580,019d11d9-b0d3-74cb-9ae4-1b9d982e9e1b}'),
  ('019d11d9-c10c-7bd5-a2e4-e944be88d3fe', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-bdd3-75ed-af4a-11d0ca3429c3', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d11d9-be6d-7fca-a30a-ae2c2eaaa444,019d11d9-c0b5-72ae-99a3-11512b36bb12}'),
  ('019d11d9-c124-7775-9a2b-29448a779864', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-bdd3-75ed-af4a-11d0ca3429c3', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d11d9-bead-7ffa-8f06-934c2fa3c928,019d11d9-c0b5-72ae-99a3-11512b36bb12}'),
  ('019d11d9-c2e7-7d76-8d42-87a8178d2a84', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-c177-7b3b-827e-83aae79ecdaf', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d11d9-c223-762b-ad51-fdcb73b84e56,019d11d9-c27b-771b-96f5-447bf8137d2d}'),
  ('019d11d9-d158-75b4-a3f6-8e7d97a6f63d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-cf47-79d1-b6d0-c612b18a2a0c', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d11d9-cfe8-79f8-af15-e0fe9d1400e0,019d11d9-d060-7a13-ae6e-5dcebeb8bf00,019d11d9-d0ff-764c-9cf9-26535680ef2e}'),
  ('019d11d9-d304-79e7-89d2-099b5a8b5ee6', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-d226-7a1b-932c-02f54205b796', 'org_levels_name_key', NULL, NULL, 'u', '{019d11d9-d2bc-7532-b98a-539d3e89d0c9}'),
  ('019d11d9-d6a0-7269-b5fa-0e4eac688ad8', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-d48a-7cf1-afdd-7f3478aa7f07', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d11d9-d52b-7e90-b758-7317672f34a4,019d11d9-d578-7af3-82ef-0b220859766e}'),
  ('019d11d9-e3c1-7e65-9c93-adbe4c25146f', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-e145-74f3-9183-4eca0131036e', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d11d9-e26c-7598-825e-312f5040b53a,019d11d9-e2cb-779b-b7b9-9e85fd19c612}'),
  ('019d11d9-ee67-7f92-840e-2065bdeb9696', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-ecf9-710c-8ade-d45cc46b07d8', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d11d9-ed9b-7e8b-982c-8420e9f19aa1,019d11d9-eddd-77de-a858-4240476dcd30}'),
  ('019d11d9-f7b6-751a-85af-439625260aab', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-f444-7111-abf8-b96003857db8', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d11d9-f5be-7f7a-8213-7ec58857246c}'),
  ('019d11d9-f7d1-7061-b944-5afca1a9f1e7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-f444-7111-abf8-b96003857db8', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d11d9-f581-7266-9f7a-1953f1b66e43}'),
  ('019d11d9-f7e8-7436-a0e7-5c79e3af91d0', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-f444-7111-abf8-b96003857db8', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d11d9-f6f8-78bb-a612-a59c4eda5578}'),
  ('019d11da-00ad-7e18-bc18-6e2b810721be', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11d9-fefc-7ea4-b789-25cce72a1503', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d11d9-ff9e-7b72-9b5a-6d88030f22d5,019d11d9-ffe5-79be-b153-e2b2c9a7decb}'),
  ('019d11da-0782-7ae1-8c44-67b56e3e23f4', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0502-76d2-bd69-ff87518e3d9f', 'emails_email_key', NULL, NULL, 'u', '{019d11da-0632-7abc-bbd6-33c1a3e67df3}'),
  ('019d11da-0cde-721d-b68d-6fc1881f3808', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0a71-772a-a9e5-70de11897cce', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d11da-0bda-791c-878f-9ffb84ae32bd}'),
  ('019d11da-1224-7b22-9fdb-f6fd079fe1c1', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-0fe1-7261-af0b-290b5ff6d4f3', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d11da-10f5-713a-a978-95107a31aff4}'),
  ('019d11da-19d9-7633-b62e-ae1eef1c775e', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-1572-7a29-ba64-db4bf37148d7', 'invites_invite_token_key', NULL, NULL, 'u', '{019d11da-16bc-7003-8abd-fc938757fc4e}'),
  ('019d11da-19fa-76b0-b4c1-fe15784264bf', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-1572-7a29-ba64-db4bf37148d7', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d11da-1626-736f-a60a-10ff11f8ae76,019d11da-165f-77a5-b105-3b220f0d5eea}'),
  ('019d11da-23b1-7753-9477-fe812bc1c7a1', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-1f55-78b7-843a-6259ac62b819', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d11da-20b8-7a5d-9429-5c4936ddc066}'),
  ('019d11da-2428-79c0-bdf3-bdd888f3cf9d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', '019d11da-1f55-78b7-843a-6259ac62b819', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d11da-1ff1-732f-a6cb-0f98fd3aee5f,019d11da-2027-7b54-9ca0-08d48685bede,019d11da-23ca-7865-8e0b-41746e286048}');


SET session_replication_role TO DEFAULT;


