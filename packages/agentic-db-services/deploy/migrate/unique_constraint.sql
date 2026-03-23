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
  ('019d19cf-05be-79d5-86e5-bf6b06a83dab', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-04f9-762a-946a-add4e6430409', 'users_username_key', NULL, NULL, 'u', '{019d19cf-0592-7c07-bc53-1198937e79e0}'),
  ('019d19cf-06f4-7b5e-bbe5-ff8b7e6f6f1a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0673-752c-976c-6f3f68b0fc27', 'role_types_name_key', NULL, NULL, 'u', '{019d19cf-06cb-7e90-9a18-e5abf274972a}'),
  ('019d19cf-0a07-7f20-ac75-a3f22693700d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-08de-7a3b-bca3-740d946c5b47', 'membership_types_name_key', NULL, NULL, 'u', '{019d19cf-0967-7a12-99f6-028491a54eb5}'),
  ('019d19cf-0c3b-733a-b332-b6e9813a2290', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0b8b-7b80-baa2-11475a5f5696', 'app_permissions_name_key', NULL, NULL, 'u', '{019d19cf-0c15-7f88-992e-23dec830cfff}'),
  ('019d19cf-0c8a-79ec-8382-61f8978a919d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0b8b-7b80-baa2-11475a5f5696', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d19cf-0c4f-7fdd-a4a0-77bbd98c92a2}'),
  ('019d19cf-111a-7a7c-8617-deae773716c6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0fbf-7a2b-94e8-5e9f8471ac60', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d19cf-104a-718e-83f0-fc9f486e0a86,019d19cf-106f-768a-94d4-0541ba6943de}'),
  ('019d19cf-120e-747e-818d-1cf9b7b45201', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-112f-79cd-b3ee-6511e0b93212', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d19cf-11ac-7bbc-8d49-120c2d5bea68}'),
  ('019d19cf-1db9-7d8b-bcd1-65a2dffa3683', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-15bb-7455-9e1b-7b0edfbb3cb5', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d19cf-1d3e-7f64-8959-dccdc1ed9f2a}'),
  ('019d19cf-2a01-7702-a4df-d85f34738ded', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-289a-7785-9339-bcbf7bf690a2', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d19cf-291c-755c-935e-37a3c53b494e,019d19cf-297c-7c14-94e0-7088038a3617}'),
  ('019d19cf-2b6f-7b18-a4ae-28f8762dce61', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2a8c-7aad-80c0-68187f1e7e9e', 'app_levels_name_key', NULL, NULL, 'u', '{019d19cf-2b2a-779a-beb1-5f0b46e0d08a}'),
  ('019d19cf-2e66-7678-9e01-c5d209353523', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2ca2-7556-984c-cd0e57d87b18', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d19cf-2d24-753b-b974-4133d35aca30,019d19cf-2d68-746d-a404-01a13383fcf5}'),
  ('019d19cf-338a-7ce9-9d0f-a3deb0d7074e', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-30fc-7523-b7b2-cbdc0c8c73c7', 'app_profiles_name_key', NULL, NULL, 'u', '{019d19cf-318e-7177-89c9-86b5fcd749dc}'),
  ('019d19cf-33a1-7cd9-a360-1fb6c384aed1', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-30fc-7523-b7b2-cbdc0c8c73c7', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d19cf-31c8-78c9-ac76-4348dabf14d3}'),
  ('019d19cf-3541-7ab8-8ade-6f4719b52bf3', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-33e4-736b-9f45-b980c5440d51', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d19cf-3478-7064-aaf4-76bd935ee836,019d19cf-34dd-71a9-8c03-180110aef717}'),
  ('019d19cf-4712-7ea4-ac63-e4b0fb14f054', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-4653-7f50-b3dd-b0636904ddb9', 'org_permissions_name_key', NULL, NULL, 'u', '{019d19cf-46e6-7eb9-acc9-39ecfd559e15}'),
  ('019d19cf-476c-7d88-8758-63ae16c06e3c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-4653-7f50-b3dd-b0636904ddb9', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d19cf-472a-7b7b-8488-271059ee7363}'),
  ('019d19cf-4e7f-7709-ac42-1f55ae33d6cf', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-4cc3-7f7e-8565-e982833fa22d', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d19cf-4d50-72a7-b347-8af4513b46c4,019d19cf-4d7a-7852-bf2c-fd828f1bf241,019d19cf-4e2b-7b4b-814a-048dcfe834dd}'),
  ('019d19cf-5004-7296-8975-1f3067f3efb8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-4e95-78b6-b86f-41102285efbf', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d19cf-4f21-7473-a5d5-49b191a00e6b}'),
  ('019d19cf-599f-701d-a1d5-147ff4b51d38', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-5556-7bc1-bf3c-8a30472367dd', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d19cf-5949-740f-bda1-f3f5a37afad4}'),
  ('019d19cf-5dea-7e50-ac45-ed77351dd3f0', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-53f0-7b8b-a2b4-1b32ffbe20c0', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d19cf-5d0a-726c-a44e-303ff04de5c5,019d19cf-5d8d-7a8f-a015-46b17514903f}'),
  ('019d19cf-5fce-759a-a59d-5258b9fc5f5d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-5e2c-7d81-8768-dac4ebaddd79', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d19cf-5f10-7c5e-bfaf-c15b320242cc,019d19cf-5f7b-77ca-9624-a1a82a669c7e}'),
  ('019d19cf-70d0-7384-9a6a-44d5b0fc5c96', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-6db4-7668-adc9-bb14469aac92', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d19cf-6e45-7cb4-b8a9-9f4ad0e39a1c,019d19cf-7073-7dfd-806c-e72a2a58a29e}'),
  ('019d19cf-70e9-7414-9ed7-783c590b6c08', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-6db4-7668-adc9-bb14469aac92', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d19cf-6e89-7009-a7f7-265dd6280aab,019d19cf-7073-7dfd-806c-e72a2a58a29e}'),
  ('019d19cf-72a2-7ab6-8502-95d7b563682a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-7140-7d9a-b90e-0e336fbe397a', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d19cf-71d5-7752-9540-fa74d891753a,019d19cf-7231-7f76-817a-e3693b7e7b6e}'),
  ('019d19cf-82a3-75cc-b329-9cc801354890', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-809c-70df-8511-fcd7dab36dfc', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d19cf-8132-762b-9a30-52ad2ed749e4,019d19cf-81a7-713e-8bb0-31603fe7e11c,019d19cf-8254-7300-9e83-ab2d5571a0af}'),
  ('019d19cf-8436-7d5e-93a0-e6c1e112447f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-835e-76d2-8b65-dcf71c112768', 'org_levels_name_key', NULL, NULL, 'u', '{019d19cf-83f1-7d90-b617-abce16056ad4}'),
  ('019d19cf-87c6-7734-97ce-e491a22c6415', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-85a6-7036-82e5-41d88057c72d', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d19cf-8646-719b-bd11-fded2809af74,019d19cf-868e-7641-844a-a81d034f6b5f}'),
  ('019d19cf-9560-7692-9eda-0598a7502eec', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-92af-7930-b4d8-fc08df9d1a36', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d19cf-93e0-7736-b854-c216a8ef11c7,019d19cf-9444-7d00-92ff-3e636e843f61}'),
  ('019d19cf-a033-7d88-833f-9d840d7020b6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-9e8c-70aa-956d-96700ef058d0', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d19cf-9f3f-7e1d-aa41-327218d0203a,019d19cf-9f98-7a74-a8ed-e9f3a68d0e1e}'),
  ('019d19cf-aa7b-7252-963d-52711579accc', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-a6ad-7f64-a5c3-450dbdd19941', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d19cf-a850-7d36-ba6e-bdfbced9c03a}'),
  ('019d19cf-aa98-7d83-9450-305d25b76034', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-a6ad-7f64-a5c3-450dbdd19941', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d19cf-a820-7984-a204-ccc687e20f7d}'),
  ('019d19cf-aab8-752b-bf62-75269984907c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-a6ad-7f64-a5c3-450dbdd19941', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d19cf-a9a5-76ff-8a9c-e7bc6eb93044}'),
  ('019d19cf-b456-71eb-b6e4-6493f2fb3adc', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b277-73ea-ab84-10c15363d39d', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d19cf-b32f-7401-b960-0cbf8f48d26a,019d19cf-b382-77f9-be61-97b519aa7865}'),
  ('019d19cf-bb91-7589-a8c2-d036e8825a82', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b8d2-7041-beac-5232995045d1', 'emails_email_key', NULL, NULL, 'u', '{019d19cf-ba20-72e0-9de3-150e30fa58b6}'),
  ('019d19cf-c3e7-7c22-a14b-874fd6f4cb73', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-c13e-7181-b452-24902b58bb75', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d19cf-c2cf-7fca-b14c-af99df06bc4e}'),
  ('019d19cf-cc53-7879-b01f-001509f51b34', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-c9cb-729b-b81d-b01eb071e13f', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d19cf-cb07-7d99-b652-9878382bf25d}'),
  ('019d19cf-d4eb-7cdc-86e9-65bff39777ba', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-d013-7446-b8fb-e1872d03d343', 'invites_invite_token_key', NULL, NULL, 'u', '{019d19cf-d17c-754a-bdfe-2fa756dca7c8}'),
  ('019d19cf-d50e-77ba-846a-3ec1ca5ef6fb', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-d013-7446-b8fb-e1872d03d343', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d19cf-d0d7-7345-98b6-6487964dba9d,019d19cf-d115-7175-b1dc-54ae186b5ba8}'),
  ('019d19cf-e27b-7257-ae55-1ec527302a9b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-dd63-7606-83b3-dad8957dc111', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d19cf-df13-7bbc-815f-f4bba89adf2f}'),
  ('019d19cf-e30d-7188-9aa4-6992130e9525', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-dd63-7606-83b3-dad8957dc111', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d19cf-de28-7cf2-8125-e932d1624ac6,019d19cf-de73-70a3-bcc1-94307192286f,019d19cf-e298-7bd6-98bb-445129ad61e8}');


SET session_replication_role TO DEFAULT;


