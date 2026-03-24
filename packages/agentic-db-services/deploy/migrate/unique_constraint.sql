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
  ('019d20cd-7af2-764e-ba00-e0e3ecac4bc5', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7a20-7176-823e-cca436cf06f3', 'users_username_key', NULL, NULL, 'u', '{019d20cd-7ac5-7f82-a270-8aaa81e80e2e}'),
  ('019d20cd-7c2a-79e6-9807-4aa30ca0a5d1', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7ba7-7833-9e8a-d9dc8e078bc0', 'role_types_name_key', NULL, NULL, 'u', '{019d20cd-7c08-74c7-9947-9ced61cb20ed}'),
  ('019d20cd-7f2d-712a-a3a7-5236fc67f6ad', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7e0b-7857-8812-2142c269dd6e', 'membership_types_name_key', NULL, NULL, 'u', '{019d20cd-7e91-7cee-b413-556128523c05}'),
  ('019d20cd-8145-7231-b4cd-3e5ecb6e5591', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-80a0-741c-8107-a97b9611df53', 'app_permissions_name_key', NULL, NULL, 'u', '{019d20cd-8122-716f-a8f3-67cd7ea7ae98}'),
  ('019d20cd-8191-7791-b0fc-cd8d6c4d608a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-80a0-741c-8107-a97b9611df53', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d20cd-8159-7474-9487-cc9a33b9f9e0}'),
  ('019d20cd-85d9-7147-bf66-a298a048db0e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8487-7346-8ceb-5452080fb5ad', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d20cd-8513-7066-8d87-58cc407a2590,019d20cd-8536-7bba-b0a3-9061c3462242}'),
  ('019d20cd-86bd-7d28-a43f-702da95cedc4', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-85ed-78b9-a62c-aab00cd74c5e', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d20cd-8667-75fd-a43a-40e0bac7a677}'),
  ('019d20cd-8f76-78ab-9acd-def4d5b3ef24', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-87bf-7b47-9abb-d3bb899195af', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d20cd-8f01-7432-99f2-cb60656f5efb}'),
  ('019d20cd-9ba4-71ac-9790-52ec261985ce', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-9a26-71c5-a977-8952aa62023b', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d20cd-9aa4-715c-8076-90009cd27a48,019d20cd-9b01-7742-9413-5f238d442b19}'),
  ('019d20cd-9cec-788a-823c-a70fc1e1f96d', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-9c33-71fc-8eb8-12a92ef07d19', 'app_levels_name_key', NULL, NULL, 'u', '{019d20cd-9cb3-72e6-94a5-c4c682fdb2e8}'),
  ('019d20cd-9fdd-7039-b3e9-580525f3cdf1', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-9e1a-734c-b82c-31b7927b10c1', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d20cd-9e9d-7970-9b52-8bf3a181a15b,019d20cd-9ed7-7c98-9dba-560532868346}'),
  ('019d20cd-a53a-7de0-a57a-c663fe1004f3', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a27b-7d73-939c-036980d8139b', 'app_profiles_name_key', NULL, NULL, 'u', '{019d20cd-a317-7e3d-91b9-3e0ebcfa48d0}'),
  ('019d20cd-a552-7fda-ba18-d031ea81ddbf', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a27b-7d73-939c-036980d8139b', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d20cd-a355-7bf8-82e6-57f0c5e73cea}'),
  ('019d20cd-a6ea-78a4-a69c-1cfa5eb94c02', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a596-7470-af5c-f8cb87df4926', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d20cd-a62e-7786-9b71-993ea9275a9f,019d20cd-a683-713c-8efc-a07ed03ce717}'),
  ('019d20cd-b5eb-71f0-ac4c-d3a6b81b5400', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-b539-79a4-90d6-42d1c5454329', 'org_permissions_name_key', NULL, NULL, 'u', '{019d20cd-b5c2-7d29-b1e0-f51f1a904779}'),
  ('019d20cd-b64b-79a0-aa72-309c595af6b6', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-b539-79a4-90d6-42d1c5454329', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d20cd-b602-73b9-a6e8-3b72e94ae40e}'),
  ('019d20cd-ba92-7aeb-a22a-4ea362f9aaa8', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-b8c8-7fc8-a81a-bb83189f8334', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d20cd-b952-7aa0-ae09-cd4c9fb91e60,019d20cd-b97e-7146-a336-0a7ecfdff8db,019d20cd-ba3d-73c8-86a0-6cc032472eb5}'),
  ('019d20cd-bbfd-7fca-9096-9dbfdd1fbef3', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-baa9-7c0a-8bbd-5532c416e9ed', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d20cd-bb3c-7062-bb46-fd0aafd5fae3}'),
  ('019d20cd-c262-70aa-928a-73a840003981', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-be0d-7dd6-ba2c-1be88a0a3acb', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d20cd-c20a-72d5-9d68-002fde6d2957}'),
  ('019d20cd-c6ae-7a1f-bf5f-fbae7f214408', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-bc99-7c6f-b5d8-f1f70077a3a0', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d20cd-c5cc-7fea-904e-5dd9653596de,019d20cd-c655-7dcf-801b-e6b8cd65c9c3}'),
  ('019d20cd-c8b4-7290-bb5b-18b1a0d6351c', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-c6f1-7a58-b764-6a52e167bb91', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d20cd-c7eb-7fb6-88e2-4997213e07e5,019d20cd-c85a-74fa-9530-7cd7d71f91ba}'),
  ('019d20cd-d6d0-75ac-ab99-94019967f015', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-d37d-79b1-92fd-60ff188e3ca5', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d20cd-d413-756f-a940-5c2ade972725,019d20cd-d674-7bd4-9308-d3173c52d69c}'),
  ('019d20cd-d6e9-716d-8726-c81d3676e716', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-d37d-79b1-92fd-60ff188e3ca5', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d20cd-d455-77f0-9e66-fe5e19f7f871,019d20cd-d674-7bd4-9308-d3173c52d69c}'),
  ('019d20cd-d8c1-71af-8b49-a8774a7822c4', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-d73c-7996-87cc-13a2c48284e0', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d20cd-d7d3-79d3-a4fd-b757ca4337fa,019d20cd-d82f-79ab-a8b0-70075aabac13}'),
  ('019d20cd-e547-7415-b5d0-a0bf57356f2b', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-e354-7a32-82e5-71d6a0abc3db', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d20cd-e3ee-77a4-a850-67b2ee39decf,019d20cd-e45f-7990-bd7c-ad25b55f9905,019d20cd-e4fa-7e3f-b8b0-35c783d0fc92}'),
  ('019d20cd-e6e1-7419-8106-9ba0a2164cdc', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-e605-7e4b-96db-b24f01090abd', 'org_levels_name_key', NULL, NULL, 'u', '{019d20cd-e69d-7465-842b-9a6d7ee6623a}'),
  ('019d20cd-ea4a-7a59-b2ea-859c2deed3fd', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-e847-77d7-abb3-2e36f0db01db', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d20cd-e8de-7412-acb7-7319f3fee015,019d20cd-e928-7170-ad6c-10b9d88c1653}'),
  ('019d20cd-f824-73dd-aef1-be2caf62f4e9', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-f56f-7ba8-8af0-a22f13d8c3ea', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d20cd-f6ad-77b2-9793-f2cdb96b8e5d,019d20cd-f70d-7645-808e-dbc23615aee5}'),
  ('019d20ce-0359-72ae-a0ec-3656135b87ee', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-01ba-7ebe-b8dd-5c2bda7a8435', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d20ce-0271-719f-b313-4f51bb5ca56b,019d20ce-02ba-7242-83d9-ff52086f91c8}'),
  ('019d20ce-0d57-7b8d-ad58-074a90a60a84', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-09ab-79a4-befb-e59de2bf0200', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d20ce-0b32-79f7-96de-9b1dc5b81af2}'),
  ('019d20ce-0d78-7027-85d3-7d9c0e99dd8a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-09ab-79a4-befb-e59de2bf0200', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d20ce-0b02-711a-bc0f-c76bf6271e5e}'),
  ('019d20ce-0d94-7a9c-a7c1-fe8b458a7300', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-09ab-79a4-befb-e59de2bf0200', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d20ce-0c87-779c-a619-fc5632fb1e20}'),
  ('019d20ce-1716-76c1-b42e-bc73b95290f1', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-153f-7e97-a94e-ccd12ac0beaf', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d20ce-15f8-74bb-a120-99471f5a7896,019d20ce-1641-70df-aa65-417784f86ec9}'),
  ('019d20ce-1e52-782a-9017-c430a63deba3', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1b96-7a64-8c0a-c31e01e0125d', 'emails_email_key', NULL, NULL, 'u', '{019d20ce-1cea-79eb-818d-cee1cf447d04}'),
  ('019d20ce-22e7-7335-9a65-85c55d3b1778', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2034-797b-98bf-a95553d98dca', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d20ce-21cb-742b-a0e4-4dbfbf7d2e25}'),
  ('019d20ce-2754-7499-9e80-568252718f0e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-24e2-786b-9b02-a5534552e2ba', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d20ce-2619-7eb6-8e5d-75b46ed0c7d6}'),
  ('019d20ce-2fe6-7f31-b3d0-10327cb421d9', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2b1b-7713-a3c9-443e7fc72d81', 'invites_invite_token_key', NULL, NULL, 'u', '{019d20ce-2c8b-7fa9-8d33-c8399a53d712}'),
  ('019d20ce-3006-758b-8189-36f9dfcc9998', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2b1b-7713-a3c9-443e7fc72d81', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d20ce-2bde-7a8a-b01b-f0549734ff38,019d20ce-2c20-7cd3-b14a-2703b03362d5}'),
  ('019d20ce-39ec-7457-a8d7-fb95f311c48f', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-34ac-73f0-b648-19c370538829', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d20ce-363e-7487-8205-c4cc0a8cf8a3}'),
  ('019d20ce-3a91-741c-9c89-954402d3d1f7', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-34ac-73f0-b648-19c370538829', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d20ce-355d-7957-ac86-62c457d61567,019d20ce-359d-7653-874d-6b0cc63e4592,019d20ce-3a0e-7b1f-80ef-ccba37e86cff}');


SET session_replication_role TO DEFAULT;


