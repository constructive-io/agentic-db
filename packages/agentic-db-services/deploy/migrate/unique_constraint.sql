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
  ('019d1736-5bb2-781c-af45-c6cb297aa288', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5b0d-7766-9f99-3cf518199163', 'users_username_key', NULL, NULL, 'u', '{019d1736-5b86-7de1-9cb7-798d76acba87}'),
  ('019d1736-5cba-7311-b4e9-024d0a349ac0', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5c53-7c2e-8b90-04b00ff9199b', 'role_types_name_key', NULL, NULL, 'u', '{019d1736-5c9c-7918-aba0-9bacfe3c884e}'),
  ('019d1736-5f4b-7570-bb12-5a4b09551673', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5e52-78d8-9ae4-4c53fd93faac', 'membership_types_name_key', NULL, NULL, 'u', '{019d1736-5ec0-759a-9c6e-e5fe660136c4}'),
  ('019d1736-6115-7e00-9520-4ba42b887f38', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-6088-7457-a126-68aadf738035', 'app_permissions_name_key', NULL, NULL, 'u', '{019d1736-60f4-7662-8a9a-52e216f416aa}'),
  ('019d1736-6159-7094-a57c-7eff0498e115', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-6088-7457-a126-68aadf738035', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d1736-6128-76cf-8aae-d4674e6848e9}'),
  ('019d1736-6508-7232-9e5a-d7976a81fed6', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-63dc-74f7-8813-be6563d06add', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d1736-6453-7829-a453-4f679aa0b2b0,019d1736-6474-79a9-82b9-c90b7e1a8315}'),
  ('019d1736-65d0-738d-bb54-70f3d51fc98a', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-6519-788c-922e-1ad5a4a293fc', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d1736-657f-7800-af31-2899fafe8bfc}'),
  ('019d1736-6d98-7359-ad6e-6a557afece26', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-66be-7223-a4ab-64408037fd98', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d1736-6d32-738b-ad5c-059b020b4367}'),
  ('019d1736-7832-7c8f-8953-4410296ba707', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-76eb-7cdf-bc1c-9c6651143259', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d1736-7766-78c6-884a-0404486e3e99,019d1736-77ba-7a09-b847-d929158f5c88}'),
  ('019d1736-7969-7a62-95ca-d9f1920d4acb', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-78b4-7231-93d3-6cb25535db4a', 'app_levels_name_key', NULL, NULL, 'u', '{019d1736-792f-731a-9321-fb40de2f009a}'),
  ('019d1736-7bfc-7a88-b17a-8f00f15cacd5', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7a72-75a2-8672-1a8596da4696', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d1736-7aea-79ee-b585-91a94245f7f8,019d1736-7b28-77f4-a465-95a80fef58a9}'),
  ('019d1736-80a1-7ccf-a367-16ca7b645e55', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7e47-7d59-b697-b8d9b6861577', 'app_profiles_name_key', NULL, NULL, 'u', '{019d1736-7ec4-709a-a26e-5d4cc58534fc}'),
  ('019d1736-80b6-70be-ae0f-d453fbead26f', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-7e47-7d59-b697-b8d9b6861577', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d1736-7ef8-706b-b757-78e5f8f44101}'),
  ('019d1736-8203-769b-90a6-ccb990d28267', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-80ed-7b0a-8d48-d05647f357c6', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d1736-815e-73c2-8dc8-f2acf227914c,019d1736-81ac-7f41-b686-5bbee31e46be}'),
  ('019d1736-8f83-7cd4-8686-b9f7ee028ba2', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-8ee0-7f9c-a7ec-e61ae5cdeeef', 'org_permissions_name_key', NULL, NULL, 'u', '{019d1736-8f5d-76cc-8b16-b5435d299f7f}'),
  ('019d1736-8fd3-76ba-8fff-1c4221c6d023', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-8ee0-7f9c-a7ec-e61ae5cdeeef', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d1736-8f97-77f0-b456-77952774d3d8}'),
  ('019d1736-939a-7ba6-805b-96f6dc70d22e', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-9215-7235-a8a6-32a8974bedac', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1736-928a-72ae-86b4-cf2c4b0bbe01,019d1736-92ae-727d-87bf-0ddc434aae4b,019d1736-934f-7612-9bdd-d6c98b25cfe7}'),
  ('019d1736-94e7-7322-b528-5931ed017827', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-93af-7984-9ff0-8e112a1d4990', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d1736-9437-7e27-a6c4-b0168b1c2750}'),
  ('019d1736-9a3a-7f70-9f2c-6cfeb3c866a9', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-96a5-764d-bb2f-876014d7134b', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d1736-99f0-7166-920b-ffce05a2eaa5}'),
  ('019d1736-9e0b-7132-98a3-20f4fe3c1887', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-9564-74b2-b299-9bd4c9396993', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1736-9d50-7379-a406-55f6c75168d7,019d1736-9dc0-71fc-8f0c-d8b1556981a8}'),
  ('019d1736-9fd0-7492-bd20-3a8df6183672', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-9e40-7f32-8de5-b27a7481d4f9', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1736-9f15-7baf-b147-605d3cd0fc07,019d1736-9f83-7926-a3b2-059a7a5467be}'),
  ('019d1736-abd7-778a-8643-447e3ee07996', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-a906-71bd-8d94-9ecbd0c109e9', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d1736-a982-7654-8705-19f385e4f2f7,019d1736-ab86-7152-bf58-5a9297c22e3b}'),
  ('019d1736-abed-714f-9bf8-8e47ab2d52b2', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-a906-71bd-8d94-9ecbd0c109e9', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d1736-a9bc-7992-b66f-b7dd9ab38e20,019d1736-ab86-7152-bf58-5a9297c22e3b}'),
  ('019d1736-ad71-7fe9-8c07-e75766f5a802', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-ac35-7a52-940d-629f25752325', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d1736-acb5-7417-8b55-4f0d41ecceb9,019d1736-ad04-7677-9d50-2c3b49ccf2e2}'),
  ('019d1736-b86c-7b72-bba3-f9ca2b4b927c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-b6b2-7317-ae59-10b9b9678785', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d1736-b735-7b4b-bc7a-661229d9818d,019d1736-b79a-71aa-8a1c-062f34aa1b63,019d1736-b82c-77f9-8509-38c9056411fa}'),
  ('019d1736-b9e4-7b1e-a991-7cceef8b2a46', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-b916-72f9-86ad-9708ceb4ed17', 'org_levels_name_key', NULL, NULL, 'u', '{019d1736-b99f-7ad8-b0e3-b7b8ddb574e9}'),
  ('019d1736-bcd7-7403-a155-fe0a4f34ddfc', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-bb1e-7e90-9774-ecb309d44ccf', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d1736-bba1-7051-9b7a-4a3f8ce9af34,019d1736-bbdc-7149-81a0-6b805ec0a2ce}'),
  ('019d1736-c89f-7348-9507-50fcf6575c33', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-c65a-7489-b0fe-00723a147365', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d1736-c765-7a4c-a9f4-d3f54f17b18b,019d1736-c7b8-7e1f-b1b7-4c728b04b21a}'),
  ('019d1736-d24e-704b-9966-93919cd0e38f', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d0ee-7a2b-9541-ec1bcdb1426d', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d1736-d189-779e-9823-0fe632ef32bd,019d1736-d1c9-78d0-98f6-7968ea832c63}'),
  ('019d1736-db09-7e71-a34f-a060d6382170', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d7dd-71a8-b40b-a0084036b3dc', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d1736-d92e-7bfa-9088-7b5eb9ec81cb}'),
  ('019d1736-db21-758c-80b8-be82caf88a17', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d7dd-71a8-b40b-a0084036b3dc', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d1736-d8ff-7350-9298-9425c067973c}'),
  ('019d1736-db37-7ee9-998b-1695be130137', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-d7dd-71a8-b40b-a0084036b3dc', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d1736-da54-7ae5-9228-d323e3e5a4c7}'),
  ('019d1736-e380-7d59-ab25-19ece6f6df2b', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e1e6-770d-b5cc-b35f9bc34e6c', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d1736-e281-74e7-a9c5-6af474e906c0,019d1736-e2cd-727b-8f1f-3dc28e1a7063}'),
  ('019d1736-e9ba-7fa7-924e-5f767c1a1cd5', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-e760-7489-b9f5-4c36ed21c55c', 'emails_email_key', NULL, NULL, 'u', '{019d1736-e873-7521-b6fb-6dfaed8396ca}'),
  ('019d1736-eda3-7975-af61-fdd81ff464cc', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-eb55-7b58-bb6f-eee75afdfdf1', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d1736-eca3-7307-9a96-8dcdac5b6183}'),
  ('019d1736-f17c-742b-8d5d-c2012faa4efa', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-ef55-7a65-9af5-bd102f6bd601', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d1736-f056-77ea-a7f4-07c08e2bd49b}'),
  ('019d1736-f8d8-7408-b028-85bbcd8a36c7', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f4c2-71fc-ae0d-3e23a6445981', 'invites_invite_token_key', NULL, NULL, 'u', '{019d1736-f5fa-7e4f-b5fd-b9fd841b2f67}'),
  ('019d1736-f8f2-7b2c-80b9-1ade3249082a', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-f4c2-71fc-ae0d-3e23a6445981', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d1736-f568-7980-82c2-85b0b0ba2c53,019d1736-f59f-714f-bb73-a754d16464c8}'),
  ('019d1737-0136-7332-99dd-ef1b7fe662fb', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-fcf4-7b62-84ee-afde5fc26072', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d1736-fe48-7509-b20d-d5ff8fd358b8}'),
  ('019d1737-01ad-71d4-86e2-df57dd1b4863', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-fcf4-7b62-84ee-afde5fc26072', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d1736-fd8a-7fcf-a442-5f85c80a31f1,019d1736-fdc1-7d45-9a27-23630db89d80,019d1737-014f-7020-be80-ad4d56c9eb7b}');


SET session_replication_role TO DEFAULT;


