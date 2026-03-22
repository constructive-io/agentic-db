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
  ('019d1795-49fe-7171-a071-3ae87744cc7f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-494e-7deb-bd76-39af3a5fa635', 'users_username_key', NULL, NULL, 'u', '{019d1795-49c1-7a1b-be54-dfd2465ba379}'),
  ('019d1795-4aff-76d1-b3e9-c4c62708695d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4a9b-7dcf-ab32-ab66575112db', 'role_types_name_key', NULL, NULL, 'u', '{019d1795-4ae2-77c6-9f2c-bb722c19d0db}'),
  ('019d1795-4d83-79d8-94f6-762879b1c966', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4c90-7db5-9f1a-556d05ec0d09', 'membership_types_name_key', NULL, NULL, 'u', '{019d1795-4d00-76e7-aca7-316f90e4979c}'),
  ('019d1795-4f5c-7a5a-9323-9f1cf2937169', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4ece-7922-a931-77d9305f9fc3', 'app_permissions_name_key', NULL, NULL, 'u', '{019d1795-4f3d-7d02-b538-073bd46a69e5}'),
  ('019d1795-4fa0-7be0-a7b0-df8733f885b4', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-4ece-7922-a931-77d9305f9fc3', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d1795-4f6d-7568-9779-dafc729401b1}'),
  ('019d1795-535f-7864-b218-53a44a9036c0', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-522a-70ad-ab17-3ca7b41a79fd', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d1795-52b1-76cd-83fd-3471bf7e10e8,019d1795-52d1-7793-8df6-73ce034786b8}'),
  ('019d1795-542b-724a-9461-b134f32b919a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-5370-7516-96ed-fec4f2935e0c', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d1795-53dc-70ac-a231-2080b17bcc90}'),
  ('019d1795-5bfd-72aa-a20b-42f6473dbeff', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-552c-7ab5-ac15-b718d9e93b05', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d1795-5b9c-7b02-bfd3-6fecbf435a87}'),
  ('019d1795-66c0-7874-8dc6-b44ce38e5d92', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6576-785b-9123-2c6b1b118196', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d1795-65fc-793a-8d48-78edad01528f,019d1795-664e-7de9-836e-2b540f807806}'),
  ('019d1795-67f7-7d5c-87b8-ce998fa92145', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-673e-7409-8b55-6652e0cc2f3c', 'app_levels_name_key', NULL, NULL, 'u', '{019d1795-67c6-7d57-98c8-1e16826bb58c}'),
  ('019d1795-6aa8-7257-9dae-a6558e4d2bdd', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6912-7289-83f9-da869942d37a', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d1795-699f-7ce9-ac37-6e71885db65d,019d1795-69d2-7214-afe9-df9b32cc8995}'),
  ('019d1795-6f53-7f27-89c6-1031c8973471', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6d09-7787-a20b-c9cf9448ddb0', 'app_profiles_name_key', NULL, NULL, 'u', '{019d1795-6d8c-798d-9c6e-8516593d6214}'),
  ('019d1795-6f68-70b5-9317-02042637ff2e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6d09-7787-a20b-c9cf9448ddb0', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d1795-6dc1-7aba-8d0e-308468fb9a08}'),
  ('019d1795-70d7-71c9-8e49-6bce21fe37ee', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-6f9d-71e2-9232-26be265514ef', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d1795-701a-75b2-9d26-e664149be1ef,019d1795-7066-7e82-9d6c-b84e2d343bd5}'),
  ('019d1795-7f1f-73a4-b6b4-58083e83c4e5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-7e77-75a1-8cdd-77613c886fd7', 'org_permissions_name_key', NULL, NULL, 'u', '{019d1795-7ef7-7a1b-88c8-dcb4094504f1}'),
  ('019d1795-7f71-7b8a-9b69-243beccd81e8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-7e77-75a1-8cdd-77613c886fd7', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d1795-7f34-706c-a9f9-95b7ed1a2697}'),
  ('019d1795-840a-7e18-b696-c2230deece46', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-8243-74ac-af82-138875d2f98d', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1795-82d7-7e5c-86c0-d4c0d3222d77,019d1795-8300-7703-b928-df424be2b7ad,019d1795-83b3-76fb-84ba-443c4ee75fe2}'),
  ('019d1795-8573-77f9-a571-12c53da27bed', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-8423-7cc8-93af-fb7fa796284d', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d1795-84aa-77be-9fcf-48091e64e614}'),
  ('019d1795-8c4f-7fa2-b84c-8a2c7f58f1ce', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-880c-7f90-96a6-e5d45879321d', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d1795-8bf8-797e-b619-4212d32b5637}'),
  ('019d1795-9129-74aa-a950-8d5a025e3884', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-8689-767b-9b73-2d73aa886b27', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1795-903e-740d-a4e6-3f07d9713f8b,019d1795-90d1-754c-bafe-43fb59e382c8}'),
  ('019d1795-933b-732b-ab11-8acc1d055a0c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-9175-74e5-9f43-954f51374c75', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d1795-9282-7127-9940-4f97d9f82337,019d1795-92ea-775e-a83c-40def9760df8}'),
  ('019d1795-a0f9-794e-928b-3e94da1ceef8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-9dd9-78a7-9ae5-cc4e5ff9a239', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d1795-9e64-70ee-99ba-a3ab139db9e5,019d1795-a08f-7edc-92c3-72f26b2e7517}'),
  ('019d1795-a111-77b7-92ae-326480225e10', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-9dd9-78a7-9ae5-cc4e5ff9a239', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d1795-9ea4-7380-904d-13207990535f,019d1795-a08f-7edc-92c3-72f26b2e7517}'),
  ('019d1795-a2a6-720b-884e-7e90517cbea2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-a161-794e-b663-07e037d4f8eb', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d1795-a1e9-74f9-9e60-25e6e9317afc,019d1795-a23d-7cbf-8064-cc74ee62070a}'),
  ('019d1795-af36-70e0-a901-f38ca1364754', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-ad42-79be-ad2a-4d16a6775aec', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d1795-ade2-7a0a-974e-4051cef83b3c,019d1795-ae55-7963-b4bd-6e902d2c1067,019d1795-aeef-7a38-b5ea-5f7a752a5b5d}'),
  ('019d1795-b0b7-768d-a8e5-3413997424f8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-afe9-71c6-b184-df41cfc56ed4', 'org_levels_name_key', NULL, NULL, 'u', '{019d1795-b075-746c-9e77-09e8fcff2db8}'),
  ('019d1795-b3f1-77e1-8aa0-5d1f7ec6a90f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-b205-7dc6-82e4-5d3fa4e8062f', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d1795-b29d-7a10-9b8a-34ede639e4d9,019d1795-b2de-7a64-bebd-a31fdb5ea38f}'),
  ('019d1795-c10c-76d1-a6d8-bbbaa979fefa', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-be82-7e06-b957-376065ac3926', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d1795-bfb4-7ad4-af4a-87923fef6def,019d1795-c010-7e6d-8782-488a4b9ea0ab}'),
  ('019d1795-cbb5-724b-b30e-29c0c0477c64', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-ca2b-7257-bd3f-788129ef24b9', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d1795-cadc-7108-8591-9769971461df,019d1795-cb23-7ed5-8164-eac862659a62}'),
  ('019d1795-d4ef-7a88-bbcd-7549f836b777', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-d193-724d-b29a-80ee8ba979ff', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d1795-d2f7-71ad-b9ee-59981954d138}'),
  ('019d1795-d509-77ce-9454-4f46390b55f8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-d193-724d-b29a-80ee8ba979ff', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d1795-d2c4-789c-a864-6c3f897ccf9c}'),
  ('019d1795-d522-70c2-ad9b-ccf84a350b87', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-d193-724d-b29a-80ee8ba979ff', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d1795-d42a-7c6b-9604-94b4c28297c6}'),
  ('019d1795-de63-7268-9595-e4ef27b8df90', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-dc9f-7fb0-bf2f-856efb3ca153', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d1795-dd4d-749e-84c1-54c013383fe1,019d1795-dd9f-7aab-80ff-1e15901292f5}'),
  ('019d1795-e51b-73fa-b5f2-d463c0ec44ed', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e28f-7dfc-ab51-c7c6b9bdf118', 'emails_email_key', NULL, NULL, 'u', '{019d1795-e3b6-7786-8101-4cfce351afe3}'),
  ('019d1795-e9fb-762c-b49e-48f9bc31e2aa', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-e767-73ea-87fd-eb1e7b3a247d', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d1795-e8df-77e5-a955-eb56e1e3d673}'),
  ('019d1795-eefb-7981-bf29-d4b3b8ff8065', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-ec7e-7a44-ae1e-73ab12059139', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d1795-eda6-797c-8e5c-9937a484d6d9}'),
  ('019d1795-f6ed-7833-adf8-4deccb73b5e1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f27c-79ba-901b-f8fccf989ff6', 'invites_invite_token_key', NULL, NULL, 'u', '{019d1795-f3c9-7fe9-a407-6ee4ba9dc633}'),
  ('019d1795-f708-7d33-bec5-5e42889c35e9', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-f27c-79ba-901b-f8fccf989ff6', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d1795-f32e-7c1c-a581-af391efdae65,019d1795-f369-709a-a588-f7f976ddc8bf}'),
  ('019d1796-00e1-76c7-83fb-a16118238430', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-fc31-78e6-93fa-ada66e90e795', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d1795-fdb0-7547-ac1a-5dff84079422}'),
  ('019d1796-0160-7f8e-a8c5-5d510cfce924', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', '019d1795-fc31-78e6-93fa-ada66e90e795', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d1795-fcd9-7f52-afd2-40dcdca8f4cc,019d1795-fd1c-7c3d-8f65-1154f6df2fec,019d1796-00fb-7b29-8cad-c5462eee5b8c}');


SET session_replication_role TO DEFAULT;


