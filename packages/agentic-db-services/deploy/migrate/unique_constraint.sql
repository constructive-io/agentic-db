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
  ('019d934f-8a86-7ce4-938a-0f4853989acd', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-898e-73d5-9f57-6c8589048db5', 'users_username_key', NULL, NULL, 'u', '{019d934f-8a46-7cb8-a25d-636c1aaec5fa}'),
  ('019d934f-8c44-7868-8239-7a0bbc5eab11', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8b8d-76a5-997f-e81f50a32a16', 'role_types_name_key', NULL, NULL, 'u', '{019d934f-8c11-7749-92e8-dc32cd85fb86}'),
  ('019d934f-90b4-7d99-b8b2-8c4435f5eac7', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8f16-7dfd-a512-9bcd8f7427a5', 'membership_types_name_key', NULL, NULL, 'u', '{019d934f-8fd2-7e2c-baca-f498a045efb0}'),
  ('019d934f-93e9-75be-a9e2-eebb62f6f819', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-92fc-7d5e-aef9-43e50d7a5049', 'app_permissions_name_key', NULL, NULL, 'u', '{019d934f-93b4-7899-ba9c-48bf7c9f9bde}'),
  ('019d934f-9454-7c11-b723-ab64f3fc6695', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-92fc-7d5e-aef9-43e50d7a5049', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d934f-9404-7e50-9b77-d732e1b70a8f}'),
  ('019d934f-9ad4-7004-a7e0-3b3ec72de8b8', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9900-71af-ab32-19d9c1b4f56e', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d934f-99b6-7c35-b314-db6d807ab966,019d934f-99eb-7bed-8150-de8f4306007b}'),
  ('019d934f-9c18-7b78-ac0b-6c221f8cf2cd', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9af1-72b8-b389-574c6930cbd9', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d934f-9b9b-7ab8-9c68-98eedb931648}'),
  ('019d934f-a95e-7112-8177-7f85a69a76fb', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9df9-7a59-a86d-b5b5dc33b0a7', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d934f-a8b7-72d8-bee6-29c50354d030}'),
  ('019d934f-bb2f-7b90-ac8c-08aa57e701f4', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b927-73a0-a67d-89f7789b89a6', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d934f-b9e1-7b16-a89a-6556f30660ca,019d934f-ba76-7421-af61-a9ff9f8d9779}'),
  ('019d934f-bd10-76d1-9f71-7471b897c62d', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-bbfe-7270-9f4b-3770020c8714', 'app_levels_name_key', NULL, NULL, 'u', '{019d934f-bcbe-7793-bf74-0ddfc7a02472}'),
  ('019d934f-c10c-7e95-9c8f-fe195f368e0a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-beaf-7e77-8b9b-9ccbc2a80fb8', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d934f-bf67-7549-8ae2-766c575da425,019d934f-bfb7-754c-872b-46d45c610f82}'),
  ('019d934f-c963-7cd3-974c-45a0ed4348d3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c513-76c3-954b-6ff472caf6b0', 'app_profiles_name_key', NULL, NULL, 'u', '{019d934f-c5df-734c-848a-8215faf4f2f9}'),
  ('019d934f-c983-71ce-a0b8-ba65349b367e', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c513-76c3-954b-6ff472caf6b0', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d934f-c632-7d64-91e0-21e63ba8adb9}'),
  ('019d934f-cb9c-76b2-afd0-33babceb3605', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c9db-7b89-a126-01d4d40dbcf8', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d934f-ca99-752a-8ca4-da93dbc2fd93,019d934f-cb0f-79fd-b568-5e40d0aa2f39}'),
  ('019d934f-e0ac-7505-ba6e-37997c7625be', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-dfa9-7350-84a0-f7a734116364', 'org_permissions_name_key', NULL, NULL, 'u', '{019d934f-e06c-7a37-84e0-ba1b7e20703e}'),
  ('019d934f-e127-7315-b1dc-b99cb06fd931', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-dfa9-7350-84a0-f7a734116364', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d934f-e0cc-70ec-9796-ea1e95dde249}'),
  ('019d934f-e767-731d-ae8f-ad5475e9ebcd', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-e4e7-7046-9fd8-4184b022c61a', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d934f-e5ab-79e2-8549-84d8e3ed8aee,019d934f-e5ea-7e7b-88e5-fdb73c850939,019d934f-e6eb-7daf-9f6d-a32b540f30be}'),
  ('019d934f-e8dd-7693-bd61-b47c50747774', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-e787-7a23-b4fa-d5be14121d10', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d934f-e84f-731d-af73-ab3caf215bee}'),
  ('019d934f-f205-7ffd-a7a9-1446e99c2f42', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-ec1f-73fd-9243-c5ad79f9bf4a', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d934f-f191-734f-a697-77efc2ffdc6b}'),
  ('019d934f-f7d3-7006-a34d-3eb40d919d7e', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-ea21-7619-abc0-635c9c963cd3', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d934f-f6a3-7d53-bbfa-26b8a8692966,019d934f-f755-776b-a519-68def5578d73}'),
  ('019d934f-fa64-72da-b3f2-a3bff47fc10f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-f82b-7418-b582-6285603f178e', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d934f-f960-781f-b801-4268510a5afc,019d934f-f9f0-7736-bb0e-551aad6117fc}'),
  ('019d9350-0e10-7589-9546-5416977f7df0', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-09b5-793c-a897-41a87691e618', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d9350-0a7a-7fe7-97ac-cf739090e4b2,019d9350-0d9b-7702-9bca-89e33e93474d}'),
  ('019d9350-0e32-7ade-9cca-6d89ae99f6fa', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-09b5-793c-a897-41a87691e618', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d9350-0ad6-78f7-ac50-d99fb2336b71,019d9350-0d9b-7702-9bca-89e33e93474d}'),
  ('019d9350-1083-7275-8742-dfbd4b76edab', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-0ea7-7384-9b91-fd7d6ce1f4f8', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d9350-0f71-7efd-9ed6-bb5a40bbbf53,019d9350-0fec-7ba8-9251-c3a807feb8ee}'),
  ('019d9350-2287-7473-8cbc-1240a7ed96a3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-1fec-7da3-84f1-c1f26bb7f98e', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d9350-20bd-7fb3-befc-1201d1569e36,019d9350-2156-7dfe-ac7c-833602f6016d,019d9350-2229-731f-b25a-dd23d781d720}'),
  ('019d9350-2522-7c7e-93b3-db9f3958b718', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-2388-7dd4-a7a3-2fe061328651', 'org_levels_name_key', NULL, NULL, 'u', '{019d9350-24c0-70f2-839b-f371305b86b0}'),
  ('019d9350-2a2c-72e8-a055-0b4cf33e05e3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-270a-7ec2-b5f0-4559e2f1e21f', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d9350-283b-7bfd-9b1f-525ecb663286,019d9350-2897-7e11-a0c9-d33d77df1e40}'),
  ('019d9350-3c96-7f7f-8113-0b55d076543a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-38cb-7e93-9aa0-57d2ac30337c', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d9350-3ab3-7ac6-88cd-04756fde9490,019d9350-3b32-7e4d-9d51-a63c577c596a}'),
  ('019d9350-4b55-77c1-b5ae-142a16eb334d', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-495c-7cb4-a524-f60084e11a79', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d9350-4a34-7475-827d-1340ce7e36cb,019d9350-4a8f-7afa-80fc-9640cb9bedb7}'),
  ('019d9350-5989-7da5-909b-bfe3811222a7', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-5420-7d4f-8f49-646b5659c003', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d9350-56b8-7b20-9425-5021a9763be0}'),
  ('019d9350-59ad-756d-b60d-c49f29b3b8ef', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-5420-7d4f-8f49-646b5659c003', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d9350-5676-7a08-9050-b0b7e7b402c5}'),
  ('019d9350-59cf-7b75-b17c-64a266ae51eb', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-5420-7d4f-8f49-646b5659c003', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d9350-5872-7d6a-9b03-657d18ada3c4}'),
  ('019d9350-65d7-7d53-9dd0-4c03ebd4a201', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6388-7b1d-85ab-e35724ec9754', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d9350-6473-7bed-b3fc-995d01683486,019d9350-64d4-7622-9af4-42d44b94a768}'),
  ('019d9350-7053-7039-903d-1aaf9634d308', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6d00-7908-b499-99d8958711ed', 'emails_email_key', NULL, NULL, 'u', '{019d9350-6ee4-7bed-86c0-198b348c2bce}'),
  ('019d9350-777b-7bdf-8de8-e90a7e174ad7', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-7348-7a60-95f5-1a537a4164ad', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d9350-7597-7130-9c93-ed1bfe8dac06}'),
  ('019d9350-7ea1-7fe6-ac21-4ca6ab42958c', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-7b1c-7fb4-b6de-e20235c752cd', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d9350-7d0e-7471-a315-1b2298136f26}'),
  ('019d9350-89fc-7ebd-a9ac-33402e6c875b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-8396-7512-9042-58187186081f', 'app_invites_invite_token_key', NULL, NULL, 'u', '{019d9350-85de-7190-bf34-9b047e7a9f8e}'),
  ('019d9350-8a21-7113-b755-0baa9fdf6a04', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-8396-7512-9042-58187186081f', 'app_invites_email_sender_id_key', NULL, NULL, 'u', '{019d9350-850e-7900-8c28-f5381655fc50,019d9350-855a-788b-a37d-d79cba96e7d9}'),
  ('019d9350-9839-7524-8d6c-915d162ddd9d', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-9185-73df-855d-b2c5c0606b1b', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d9350-940a-78d6-9563-9ce345357b82}'),
  ('019d9350-98f1-75e0-a5fc-490a46e260fc', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-9185-73df-855d-b2c5c0606b1b', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d9350-92ee-7f0b-a9d3-2d1d02168740,019d9350-9340-7f29-a08d-4b54b96b6e4d,019d9350-985f-7a78-9bc8-ff5c1017922f}'),
  ('019d9350-b35b-730c-b00a-4af077dc9280', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-ad2e-7c45-8483-05e220f3e234', 'buckets_owner_id_key_key', NULL, NULL, 'u', '{019d9350-b01a-7d57-af09-a92219c1686f,019d9350-afad-7590-8298-86e2b1b23112}'),
  ('019d9350-bb4e-78e6-a99f-808dc37e303c', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-b450-7480-9f42-ba261d0d5012', 'files_bucket_id_key_key', NULL, NULL, 'u', '{019d9350-b70d-7a1c-99ac-b610cd820580,019d9350-b6a2-7f59-8ebc-aa1cce679a89}');


SET session_replication_role TO DEFAULT;


