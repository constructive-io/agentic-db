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
  ('9bc1a1bd-f7c0-4288-f586-16cb27a5402d', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12972-1a70-4812-beb6-f24029a19ea6', 'users_username_key', NULL, NULL, 'u', '{9bc122c1-1ffb-4ffc-4146-1292e5fa78e1}'),
  ('9bc1a20f-8e20-415e-9ce5-1d71982120ae', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c81e-0a13-45f3-d883-0dffced27e2a', 'role_types_name_key', NULL, NULL, 'u', '{9bc16115-11a6-4347-0f91-320bfa764de9}'),
  ('9bc1dd03-a11a-47fc-b20b-13c486a34397', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc19b76-ac15-4db3-7e43-01ea8398747c', 'membership_types_name_key', NULL, NULL, 'u', '{9bc193a8-f7f5-4338-12c8-e534c96cad4e}'),
  ('9bc1c523-863d-4a93-efba-71db0c38bd3f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15426-7cb4-4f1e-cbf6-a2ada0a98188', 'app_permissions_name_key', NULL, NULL, 'u', '{9bc134ac-d50c-4cd4-38fe-a36cbabd3293}'),
  ('9bc18d7c-f56c-4334-bbc2-0c7f451337e3', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15426-7cb4-4f1e-cbf6-a2ada0a98188', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{9bc1ee37-9ab3-463e-2e90-8c6b17418d17}'),
  ('9bc10457-5e1c-43f7-ae56-6a69e238e4ad', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc13faa-b725-4094-e352-ae91484f0cd5', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{9bc1275b-3b1b-4c18-c10b-58423cead646,9bc1e62e-f908-4de7-d65c-5c655cdc1288}'),
  ('9bc10f86-3409-4062-e6df-709593ac85a5', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc129a0-a9b9-42cb-a4d1-f1bc586bcef1', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{9bc1d5db-4445-4f87-33dd-49324faab874}'),
  ('9bc125c1-e9c7-4d1b-c171-a09e0f42a0f9', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc13644-40f0-4c81-5715-1eccf4f6c73e', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{9bc17294-e4a0-44ac-bd05-50faabe5bee1}'),
  ('9bc1176e-ac8c-4f73-5ff4-06907004f72b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1e6ec-a224-468f-8183-ed662ca66180', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{9bc1e28e-9167-4c19-55bb-4975a6061621,9bc1f777-96b6-4963-6a43-9f1022cbda65}'),
  ('9bc1b163-2881-464c-c843-7708b3771c31', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc143ae-941f-4b88-7f45-a1589cf4df98', 'app_levels_name_key', NULL, NULL, 'u', '{9bc1ee11-a97b-4b15-2b87-c32cae69021b}'),
  ('9bc1d5ef-6eb3-4acd-1b85-15b177c8cf46', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11b2c-6017-4a7f-d2f7-f0b90273dd10', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{9bc1836e-0297-4988-bb35-c2f5853821ee,9bc1da0e-2e1b-4683-ed11-81f8c755fe27}'),
  ('9bc174ab-79ea-40fb-1e26-f44b08a09176', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1eddf-8431-42db-3857-c7f04679df06', 'app_profiles_name_key', NULL, NULL, 'u', '{9bc17809-fc58-465f-8972-b81add5cbddc}'),
  ('9bc1ca8c-5ef9-4a7c-4449-4435c07c8c88', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1eddf-8431-42db-3857-c7f04679df06', 'app_profiles_slug_key', NULL, NULL, 'u', '{9bc15e10-555b-4ee8-79bd-a785d638fdf2}'),
  ('9bc1b998-211c-4d66-a6c9-1b31d6f3b492', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18619-7424-4ddc-f567-1d2682c51c51', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{9bc18ba9-3c98-4d8f-6771-453b612dea5f,9bc17c33-d0fc-4a8c-bd1e-1a3d4c8c81b5}'),
  ('9bc18af9-7193-4e27-78e2-e0dfc4721f57', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc17982-a20f-4da2-eb63-2f4bf9860571', 'org_permissions_name_key', NULL, NULL, 'u', '{9bc13103-04a1-4ab2-84aa-83428b06cf5e}'),
  ('9bc1ab58-8698-46e9-bc34-17f735fc6ef9', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc17982-a20f-4da2-eb63-2f4bf9860571', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{9bc19bb4-3c6c-4384-3f7c-096d76b0a1c1}'),
  ('9bc1c6a1-15bb-46ad-9ab6-ddc3faa815a6', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1a2e6-c921-407d-07ee-cbf9b835232e', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{9bc1c30d-ac03-4087-0af4-6f4476d8f6c2,9bc14a84-c483-4082-6aec-7e39de18a3d6,9bc13da5-a21e-4092-3945-df10debed0df}'),
  ('9bc18c3b-66c3-4e49-3c61-385da9c0036e', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11c5b-bc71-44b9-5ae0-dc6fa122657b', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{9bc1bdd5-d126-4580-5b75-54273d0d5373}'),
  ('9bc13be2-84d9-47b4-f409-69e17b43fce1', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc14611-66f1-40dc-b509-acd22955255e', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{9bc1ad75-cca5-47c3-5367-fe5db148eff1}'),
  ('9bc16738-bb7a-4940-8956-e2341dfcca7c', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc185f6-50ad-4ada-e364-5ae50ff3908b', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{9bc1fe60-d89d-4ea4-5954-b0906233d0ad,9bc1aa7d-cfa7-4dc6-2e27-19edea8dcf2d}'),
  ('9bc1bf32-b735-4a57-b46f-737fdb573a8f', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc12255-5121-4edf-4eef-4ec70a7ecddd', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{9bc16abf-0184-4950-7014-e53ae643f019,9bc1ed5a-8bab-4c09-6a56-bf2752e62d12}'),
  ('9bc136da-92e5-4585-5580-16285ab08bec', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c078-0ed6-4204-a124-75f9d73a3b7e', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{9bc12b75-38a0-4ef4-a60c-15653af4903c,9bc10ee8-106b-4d81-a61d-f73f9cc4360a}'),
  ('9bc1525c-2ad1-4eb4-5cdc-69892c575cfe', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1c078-0ed6-4204-a124-75f9d73a3b7e', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{9bc1598c-5885-473a-0371-3b55444eb48f,9bc10ee8-106b-4d81-a61d-f73f9cc4360a}'),
  ('9bc1359f-f6c0-46c8-3c0a-eaba7202d1c0', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc159bd-72b6-42b4-ce31-1999d4255cfb', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{9bc1ee43-a301-4ae4-8f0b-f61fdde23eda,9bc1dc7b-f192-4bd8-8ecc-757e1df47a16}'),
  ('9bc18858-b62c-4394-e4ad-0f4059cc45bd', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1d988-ff77-4ba4-ea03-7c84a251dc16', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{9bc137a1-ad65-4991-d2e5-4fb3d01b900d,9bc1a8e0-3f49-477b-3b6f-17da817bf1a1,9bc1c66a-b56b-4485-5db7-8a69645b5198}'),
  ('9bc1a94a-5eef-4706-7b2a-cf67bcf642af', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc15146-81ff-4f76-f31d-b67c2b2e8e39', 'org_levels_name_key', NULL, NULL, 'u', '{9bc1745b-8835-45c5-8743-2e0315bde167}'),
  ('9bc17c74-0ad8-4b8c-63c4-feaf510177bb', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc16ead-adf5-477c-2aaf-afd16488fef8', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{9bc1810b-478c-4933-e250-d4876a0bcbfb,9bc1ea4e-8ad0-4bcd-c088-6033f43529cb}'),
  ('9bc15a92-3626-4d9a-4479-67e9e1bc14ee', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc11169-3cdb-4a02-10ea-abee16d31433', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{9bc133f0-5569-48ab-d2b9-c373dbed3fec,9bc178f8-85c9-49f8-5285-9c4f679f9306}'),
  ('9bc17f9c-2669-4cce-b093-6be4b843ac1b', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1af1c-368f-4588-5a0f-35752cdd99c6', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{9bc1f5b9-2c41-4fee-0088-dcd675dce1f2,9bc1f341-b60c-4e8b-56b9-8067a673c937}'),
  ('9bc167e8-9f77-44a4-5bcb-9c9d0b17f4ed', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1b812-e514-4478-c3e7-e4d9fd10726b', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{9bc16561-d66b-48da-ac5c-7c8946bb82e4}'),
  ('9bc1144e-c4ce-4405-930e-c60693c7ba81', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1b812-e514-4478-c3e7-e4d9fd10726b', 'session_credentials_key_id_key', NULL, NULL, 'u', '{9bc1f429-660f-4c68-92d8-5e6fbb80d19b}'),
  ('9bc13eba-4ed1-4420-171b-2f9438651cce', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1b812-e514-4478-c3e7-e4d9fd10726b', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{9bc1e08f-fa12-4d5f-9f5c-7e6a9c83b5a8}'),
  ('9bc11366-a6a4-4f82-4fa4-058b6b6b8925', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18620-fd63-48b7-71f3-dd8a5a4000b5', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{9bc163a2-3bdc-4164-9b40-3f42b0e1df44,9bc104af-0d96-49cc-37d6-0e9ee66e6094}'),
  ('9bc1e455-b84a-4c0d-5530-7310ae8df34e', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc17ef4-6582-46f5-41e0-7c890003c7ed', 'emails_email_key', NULL, NULL, 'u', '{9bc15e98-6299-459c-3aef-3c09b94670f8}'),
  ('9bc178ee-b6c4-422a-e235-ed6177eedbba', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc18aaa-0226-422d-ee86-e68010cf7aa4', 'phone_numbers_number_key', NULL, NULL, 'u', '{9bc14f3a-822f-46e2-7530-7200fa15fd72}'),
  ('9bc1fba7-fc59-4e8b-6a46-d04171c4daa3', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1595d-9775-4de4-6607-7dfbe10d4b6f', 'crypto_addresses_address_key', NULL, NULL, 'u', '{9bc1a710-0550-4c7c-5b4c-930b0d8abff8}'),
  ('9bc18688-c93c-4d8d-7f10-036315f1a9d1', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1f4ca-4129-40d8-cf58-a1c83bb26cb8', 'invites_invite_token_key', NULL, NULL, 'u', '{9bc1398a-8d22-4cc2-6e3b-f6a0ed3002ff}'),
  ('9bc1403a-d1ec-49db-4e4c-d8d819776d70', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc1f4ca-4129-40d8-cf58-a1c83bb26cb8', 'invites_email_sender_id_key', NULL, NULL, 'u', '{9bc1b172-dc4a-4503-30e4-44c7e9bd44c9,9bc1c657-948e-4b41-09ff-183053a89f60}'),
  ('9bc13844-2606-4359-472b-9ffa13797147', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc19fd7-94e4-4238-22c6-830408f316e5', 'org_invites_invite_token_key', NULL, NULL, 'u', '{9bc1ff3b-aa8d-4b73-716d-c0f21209d800}'),
  ('9bc1a51c-f864-498c-a6d6-899749dccdbb', '14d9536f-0092-4ddb-87f8-eddad14902bd', '9bc19fd7-94e4-4238-22c6-830408f316e5', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{9bc1968e-1fcf-4504-d7b8-07ae9616cad8,9bc10811-1510-4204-2e48-ed3699c8129e,9bc13fa9-020a-482e-4e80-96125a96548c}');


SET session_replication_role TO DEFAULT;


