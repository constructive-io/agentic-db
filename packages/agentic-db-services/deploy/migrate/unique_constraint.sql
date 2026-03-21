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
  ('019d0ffe-515b-7715-ae34-b6e495722bd4', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-509c-7e69-b073-260da2d7f651', 'users_username_key', NULL, NULL, 'u', '{019d0ffe-512e-796f-a3dd-adf06e39c395}'),
  ('019d0ffe-528d-7032-9d41-852ae9d8532f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5213-7996-ac42-aaee916243da', 'role_types_name_key', NULL, NULL, 'u', '{019d0ffe-526a-700c-a5bb-98607020f020}'),
  ('019d0ffe-55a5-754f-8a83-23267c2f1410', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5477-7753-819b-0b5ac83c5c07', 'membership_types_name_key', NULL, NULL, 'u', '{019d0ffe-5504-7bda-8cfe-dbe55d0defc5}'),
  ('019d0ffe-57c8-7238-9b59-1d422f6c27f6', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5723-79af-9db0-2a952ae7b0a4', 'app_permissions_name_key', NULL, NULL, 'u', '{019d0ffe-57a5-7add-a701-183829258365}'),
  ('019d0ffe-5812-749e-a5e1-adea930646f3', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5723-79af-9db0-2a952ae7b0a4', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d0ffe-57da-7dfe-b812-f3f5f8ce69ce}'),
  ('019d0ffe-5c6c-7a0a-941e-bc3a3dbfcb65', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5b1c-72ea-b424-e89de8b058d4', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d0ffe-5ba6-7b91-860f-1524f0be2c6a,019d0ffe-5bc9-7fef-919c-25e8ec386dcd}'),
  ('019d0ffe-5d59-7925-8115-e7014cecc66a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5c82-77cd-9bbd-936e77c005d6', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d0ffe-5cfd-7e9a-a73d-1f420d186a9a}'),
  ('019d0ffe-6646-7c76-af62-030eeb390dbc', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-5e6f-70db-916e-b9647b18509b', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d0ffe-65d4-74ff-a023-077d96b746e2}'),
  ('019d0ffe-7223-7270-9acf-77b0cdde625c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-70c5-7bec-b0ca-63b716d4aa32', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d0ffe-7141-77e9-8a7d-05c58c624361,019d0ffe-719d-7990-8da5-a67a69ce24aa}'),
  ('019d0ffe-736f-75f8-a6ea-dfd4b5c9332b', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-72bc-70a3-a3ec-92062ad817c9', 'app_levels_name_key', NULL, NULL, 'u', '{019d0ffe-7337-7722-a634-cf1f2e128b3f}'),
  ('019d0ffe-7660-72fc-a8f4-578544a6f44f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-74a8-7248-918a-acc1c629efe4', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d0ffe-7525-71cf-902c-0c1862d9a765,019d0ffe-755f-7258-a489-9d2de7938235}'),
  ('019d0ffe-7bad-7309-a3b2-f3edea252193', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-7901-772c-aa47-483e0a6fa2b5', 'app_profiles_name_key', NULL, NULL, 'u', '{019d0ffe-7992-75ef-b515-dc7a308338af}'),
  ('019d0ffe-7bc3-73fe-8d77-921158fc8651', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-7901-772c-aa47-483e0a6fa2b5', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d0ffe-79d0-7749-bb1c-654d5b1a9f8f}'),
  ('019d0ffe-7d30-70ef-9e11-89ff701dcb04', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-7bfe-7f1e-ae30-18d99e31d8bd', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d0ffe-7c82-7472-a4af-3bc6d4a68b7d,019d0ffe-7cd1-73dc-a5f8-640cb2d3c55a}'),
  ('019d0ffe-8c68-7fb1-8294-cecd12fe4ca2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-8bb5-7fcf-9caa-019e02b8af3e', 'org_permissions_name_key', NULL, NULL, 'u', '{019d0ffe-8c3f-756c-a6c0-748fbe259439}'),
  ('019d0ffe-8cbf-7f2b-8e2c-456c4eb5ed8f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-8bb5-7fcf-9caa-019e02b8af3e', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d0ffe-8c7f-723e-a26c-49f5e66f2326}'),
  ('019d0ffe-9121-7749-b889-9793529beaee', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-8f65-7324-80ea-3e9dd2306e62', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d0ffe-8ff3-75d2-a8ed-ef9be22a098f,019d0ffe-901b-7458-8f99-73fe8f4c5149,019d0ffe-90cc-7ff1-8612-f3e69691ef95}'),
  ('019d0ffe-92a0-7b1a-a5d3-77dc4a0b7a47', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-9136-7dd2-9420-e4069ec1aef5', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d0ffe-91bf-7bc6-ade8-d03f2db4da80}'),
  ('019d0ffe-98f9-76de-b809-565cebbd0e66', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-94d9-70c4-89cf-9fcb15fdcb1d', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d0ffe-98a5-7e36-a938-2a6dd95d6bcb}'),
  ('019d0ffe-9d2d-7368-9c66-770e805ffd38', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-936b-7ef6-b651-97363832464b', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d0ffe-9c4a-7c0d-bb92-7b3396cb947c,019d0ffe-9cd2-7e34-b5fc-9bab86ccac7e}'),
  ('019d0ffe-9f09-78d0-b9a8-bee5ed774756', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-9d6f-7282-84f0-6d4a489ae036', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d0ffe-9e4d-749e-9b6c-918477fdf146,019d0ffe-9eb6-78bb-aead-d160698fd267}'),
  ('019d0ffe-ad30-7408-8163-5881b89acfd5', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-a9ec-7a2e-8335-1df87b507060', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d0ffe-aa7d-7755-99aa-3167ec68c03f,019d0ffe-acd2-74ca-b621-24290dc31651}'),
  ('019d0ffe-ad48-7bbf-a214-aa36032687f7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-a9ec-7a2e-8335-1df87b507060', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d0ffe-aac1-7f01-ade0-475f58df5024,019d0ffe-acd2-74ca-b621-24290dc31651}'),
  ('019d0ffe-aeee-73b3-8dd9-36ab3e0d340c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ad9b-7070-9333-435a1e1a514c', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d0ffe-ae26-7121-a412-f10b424d103c,019d0ffe-ae82-7d8f-afa3-cbe8f9cefe0b}'),
  ('019d0ffe-bb4a-7c11-ac3c-2084e342c53e', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-b97c-75ba-8bba-db0de9911686', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d0ffe-ba0a-7710-be78-1f6854d8823d,019d0ffe-ba73-79f5-bcde-5e5951db764b,019d0ffe-bb08-74d8-b82e-b3b5e33fc2d6}'),
  ('019d0ffe-bcd6-7df0-84a5-0b5520cbbeb9', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-bc01-75ee-972a-2f9db34db510', 'org_levels_name_key', NULL, NULL, 'u', '{019d0ffe-bc94-72d0-87e7-400e23c9404f}'),
  ('019d0ffe-c027-7a2c-a1f5-b1f671bf47fb', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-be33-79bc-9bf1-beb386e03493', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d0ffe-becb-717e-8ebe-2029ddf2107e,019d0ffe-bf0e-7c67-8d10-9b8716b9dffe}'),
  ('019d0ffe-cd5d-7bcc-bb30-9d03aced72de', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-cac1-78c8-8481-0ad71fc8f6ed', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d0ffe-cbe9-780d-b26a-2c2e69a03d50,019d0ffe-cc4d-7059-9073-a132b05430c1}'),
  ('019d0ffe-d7d4-705a-bbc9-252ea0e61dd0', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-d653-7fbd-bfac-396cb0e3067f', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d0ffe-d6f4-7799-bdf3-9c298c012c27,019d0ffe-d738-7834-8e53-07c4cacd3ecd}'),
  ('019d0ffe-e0fa-7872-8bc4-c1bd891098d8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-dda4-7960-b035-02a7353ebb5e', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d0ffe-df0f-7f6f-932c-54af8a0d5428}'),
  ('019d0ffe-e114-7813-808e-30db09474d01', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-dda4-7960-b035-02a7353ebb5e', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d0ffe-dee3-7d5e-925b-dfc5e1834d16}'),
  ('019d0ffe-e12d-7a49-9122-5ac1f2e6fb6a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-dda4-7960-b035-02a7353ebb5e', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d0ffe-e037-7049-9354-ad5c575dac9f}'),
  ('019d0ffe-ea03-783b-944e-d1eb4db9e865', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-e83b-7337-abd9-0fb28e7a500c', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d0ffe-e8ec-7ef1-8035-b210aeb4c5ab,019d0ffe-e93e-76d8-a87f-8d88914f228b}'),
  ('019d0ffe-f0a2-7c8a-b820-7b12286404be', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-ee29-7bb1-8b74-03c7f795b113', 'emails_email_key', NULL, NULL, 'u', '{019d0ffe-ef56-701f-b4ce-50a0af190831}'),
  ('019d0ffe-f4ff-77a2-bf70-db572cb1cdfd', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-f2a4-75e7-a37c-cc646497b71f', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d0ffe-f402-76c6-9cfc-33f1ee09f85b}'),
  ('019d0ffe-f92f-7fba-9353-a7119b3d7311', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-f705-7b25-908c-2ccabc54d3fc', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d0ffe-f816-755c-b82b-8d29719ef0e2}'),
  ('019d0fff-0111-7b9a-b048-1f7cd945e13d', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-fcb5-7c8e-8ba9-ecf3d06d8859', 'invites_invite_token_key', NULL, NULL, 'u', '{019d0ffe-fdf7-7372-87b7-90bc3a8456c0}'),
  ('019d0fff-012c-70d8-ac4f-6ce196ba6660', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0ffe-fcb5-7c8e-8ba9-ecf3d06d8859', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d0ffe-fd63-7ad0-8b73-9fe58355ae3e,019d0ffe-fd9a-7de3-8770-29cea290c7fc}'),
  ('019d0fff-0a2b-766c-9464-d555aeacc4e5', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-05c5-7ae7-a5fe-f4a921e7f0d1', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d0fff-0736-7e3b-aedf-7addd68437b5}'),
  ('019d0fff-0aac-7be0-9d51-2603ea29045c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', '019d0fff-05c5-7ae7-a5fe-f4a921e7f0d1', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d0fff-0671-7a69-910d-9282c1af8f76,019d0fff-06a9-77a0-9868-7eb84b5fd5df,019d0fff-0a45-731f-b83f-3ea44fb4b93d}');


SET session_replication_role TO DEFAULT;


