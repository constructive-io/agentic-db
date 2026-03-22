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
  ('019d13bc-2250-767a-9da1-083702396e28', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-21ae-7eb2-b63f-9fb476e22f09', 'users_username_key', NULL, NULL, 'u', '{019d13bc-222a-7725-b00c-3790c3678138}'),
  ('019d13bc-2359-7dc6-83df-60bc6cc6546c', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-22ee-7e54-b7f4-49189e0164a8', 'role_types_name_key', NULL, NULL, 'u', '{019d13bc-233b-7959-8c23-727a9ed3a5a7}'),
  ('019d13bc-260a-774c-8035-eef7199cfaae', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-24ff-7267-a5ca-99f14c26c277', 'membership_types_name_key', NULL, NULL, 'u', '{019d13bc-2577-7ed3-ba9e-cb88ca26b752}'),
  ('019d13bc-27fc-7483-9f20-2bcd03f3483f', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2764-7eb7-8b8d-849641335581', 'app_permissions_name_key', NULL, NULL, 'u', '{019d13bc-27dc-736a-b7dc-97c7bccceb90}'),
  ('019d13bc-2840-77e2-8bb8-4c5b90f7e7e5', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2764-7eb7-8b8d-849641335581', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d13bc-280e-7224-aceb-e62d4ec06def}'),
  ('019d13bc-2c26-7734-a18f-5f7b23747434', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2af4-7c29-a10f-1f5f940886a5', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d13bc-2b6f-763d-b8d6-108884926a5b,019d13bc-2b8f-7dbc-9bd4-9370cc0d77ac}'),
  ('019d13bc-2d14-7e71-ba4c-4e6924743496', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2c3b-7a1f-8bda-fd379798b117', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d13bc-2cc5-7acd-a933-129717bd0f40}'),
  ('019d13bc-354d-76af-bbdf-118eab547458', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2e08-77a6-a4fc-2ef96160d4bc', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d13bc-34e5-7274-80c0-4783a5b7fd42}'),
  ('019d13bc-4046-7011-979c-c57c8e092206', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-3ef7-7e72-9b45-0ff8dd597c64', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d13bc-3f6e-7dc8-bbc8-ba1772c0256a,019d13bc-3fc8-7191-ae44-92d590922fb0}'),
  ('019d13bc-416f-7aeb-b301-7cda58726263', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-40c3-777c-b274-182df3d613d4', 'app_levels_name_key', NULL, NULL, 'u', '{019d13bc-4139-7b40-b097-55f9f93fc8fa}'),
  ('019d13bc-445b-7f55-8bab-ee8f48a91f5d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4294-7420-be6d-0f2104c03cf6', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d13bc-430d-7152-8658-b68c32b89104,019d13bc-4357-7b96-b8f5-d659fcbde492}'),
  ('019d13bc-4921-75cb-b1a4-8ab1f3c8e4df', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-46c3-700c-92c0-a7ed3ecd0139', 'app_profiles_name_key', NULL, NULL, 'u', '{019d13bc-474b-7e50-8b7a-229bab1ae434}'),
  ('019d13bc-4936-7955-955e-73fe3b3f0dde', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-46c3-700c-92c0-a7ed3ecd0139', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d13bc-4784-7166-b546-c250aa3d266e}'),
  ('019d13bc-4a90-7220-bcbf-292bdb534ace', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-4971-7948-abde-4351a889002d', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d13bc-49ea-7780-a1c4-5f4ed7e7afae,019d13bc-4a35-7c53-b7a7-41e80c14b2e6}'),
  ('019d13bc-584f-756a-8ecd-7e7b03220818', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-57a5-739e-819f-c276c42edb57', 'org_permissions_name_key', NULL, NULL, 'u', '{019d13bc-5827-7642-84c9-c233a0814e60}'),
  ('019d13bc-58a2-7ce0-af2a-756f09b0695d', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-57a5-739e-819f-c276c42edb57', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d13bc-5864-7a10-9f56-666b5ce99d59}'),
  ('019d13bc-5c89-74f2-93f8-e0aa3282115a', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-5ae9-796e-af07-f23910fa7dc1', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d13bc-5b68-74ab-9fad-387e291ed346,019d13bc-5b8e-78be-b5c8-18e7dcb4580b,019d13bc-5c3c-7479-8a1b-887da5f1cd9e}'),
  ('019d13bc-5de0-7c60-bcb3-612cd368797b', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-5c9e-745a-8138-21412a3277e0', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d13bc-5d21-753c-9900-a3320b70372a}'),
  ('019d13bc-6397-7f79-8ca1-4ca533a161de', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-5fbe-7ae9-8bcc-c2820ee6471d', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d13bc-634c-761f-ac49-6b606cb10b66}'),
  ('019d13bc-6769-78e5-a3de-57f3a4ba7f15', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-5e7b-7ec0-a5a7-b1c75331f930', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d13bc-6696-7cea-94bf-d52843505a30,019d13bc-6719-78c1-8bc2-cc16fb8583bb}'),
  ('019d13bc-692f-70f6-94c1-7ad5f0f7034b', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-67a3-7041-a898-fc088267639c', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d13bc-6872-7482-b0ed-5091d188f000,019d13bc-68d0-74a5-8c34-fda237a788a6}'),
  ('019d13bc-7601-7569-aa14-2113313b7845', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-72d6-7e8e-92db-381e7f8fbad8', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d13bc-7363-7e3b-a9c3-b6c952013663,019d13bc-75a7-711d-a97c-15e21ef183bf}'),
  ('019d13bc-7618-7863-b4bf-2692c9fc12ce', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-72d6-7e8e-92db-381e7f8fbad8', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d13bc-73a7-709c-82e5-84ae2318b8dd,019d13bc-75a7-711d-a97c-15e21ef183bf}'),
  ('019d13bc-77c6-71e2-a2cd-2b543d84759f', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-7667-7a6e-ba08-3dbb63d59a1e', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d13bc-7704-7e8e-9784-8de37c408509,019d13bc-775d-7d41-b79a-ae766c287e6e}'),
  ('019d13bc-8358-7ed5-a507-30761ceb2d18', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-819a-777b-b61e-b945faebcab3', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d13bc-8226-7a4d-9994-97b25dda3d0f,019d13bc-828c-7cd6-b777-850a644617be,019d13bc-8315-733a-a9cb-bb326584c322}'),
  ('019d13bc-84ca-75a2-accc-78022445eb06', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-8402-7b5c-961d-753992f96652', 'org_levels_name_key', NULL, NULL, 'u', '{019d13bc-848c-76a8-821f-427a535586ef}'),
  ('019d13bc-87d5-7e60-8945-0820ddcdf2d6', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-8608-7e60-a25a-988a1106136a', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d13bc-8692-7e50-b166-262d49765036,019d13bc-86d6-7a68-bcc1-0a30393483d4}'),
  ('019d13bc-9432-7788-8149-f9a258924d43', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-91bf-7ccb-b079-ea3d45d352b0', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d13bc-92ce-7a90-853f-408bcb44ce47,019d13bc-9325-7c04-a767-a52b3275298e}'),
  ('019d13bc-9eee-764b-ad3d-b8102c27b78a', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-9d60-7447-883a-82be1de521d3', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d13bc-9e1e-7caf-a5e9-0a8f1466e4f9,019d13bc-9e65-7107-9b29-b1dbf40a2787}'),
  ('019d13bc-a7ec-73f1-a86d-4ae8c539a856', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-a49f-7556-9298-a64ba619d8ee', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d13bc-a60d-72e7-84ae-fa876fa10e09}'),
  ('019d13bc-a806-7236-b256-6c70ae9147dc', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-a49f-7556-9298-a64ba619d8ee', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d13bc-a5e1-7f08-a111-cd68fcee1d81}'),
  ('019d13bc-a81f-7987-81d1-eab1e698bbb5', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-a49f-7556-9298-a64ba619d8ee', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d13bc-a72a-730d-9754-b626fd789aa2}'),
  ('019d13bc-b0b4-7167-bf60-e23a8e52bac3', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-af09-79ec-9e65-74b8fd5fc81c', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d13bc-afad-793c-9d36-f32d55c9af5f,019d13bc-aff2-7ccc-bfb9-d4b4f7c493d4}'),
  ('019d13bc-b72f-75d4-b4cf-22a03b8fc54b', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b4cb-76f4-ac5b-1725de3aff22', 'emails_email_key', NULL, NULL, 'u', '{019d13bc-b5f1-7100-9472-e7de4b46c2b8}'),
  ('019d13bc-bb30-7a9a-89b6-206cbf4022ce', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-b8d8-7d49-b7f6-755ae8d378b2', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d13bc-ba34-710d-a993-93b9639f4bb3}'),
  ('019d13bc-bf2c-799e-9963-883fa8e24b82', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-bd07-7448-b92f-fac43de1c576', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d13bc-be18-7340-9ced-3b5b63050512}'),
  ('019d13bc-c6c1-75fe-ad4f-23146ae8910f', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c27c-78d7-ab12-91cf2d36eddc', 'invites_invite_token_key', NULL, NULL, 'u', '{019d13bc-c3be-7724-ad1f-ed9238da883e}'),
  ('019d13bc-c6dc-7527-80b2-a5a588c4be11', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-c27c-78d7-ab12-91cf2d36eddc', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d13bc-c32d-765c-a2b6-2a466864d563,019d13bc-c363-7a63-8661-6ca7ca825d36}'),
  ('019d13bc-cfb7-71a3-b154-daf61e0a23a2', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-cb36-7bb8-ade5-41d0d8eed1dc', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d13bc-ccb4-7af5-aa8f-e49ccf4440d3}'),
  ('019d13bc-d033-74db-8f8a-ea91d258b4d5', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-cb36-7bb8-ade5-41d0d8eed1dc', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d13bc-cbd6-7ba2-a25b-6a488ea936d5,019d13bc-cc0e-750c-9855-4196d2e19b04,019d13bc-cfd2-799b-abc5-cc6247931e70}');


SET session_replication_role TO DEFAULT;


