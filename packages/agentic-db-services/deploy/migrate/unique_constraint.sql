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
  ('4da4f09a-98ec-63e8-bd90-f02ff4fb57f9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '5d9c849b-e962-041a-de77-54774d5d1e62', 'users_username_key', NULL, NULL, 'u', '{92e910ae-1d0b-b299-fca1-738f1f98f431}'),
  ('c67512d1-4f97-9d55-ae2e-d92dd628d3b1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '7a7b966f-e06a-69bd-a02e-61a9d0c21580', 'role_types_name_key', NULL, NULL, 'u', '{0387d7e3-0f63-d1b8-7438-d50b8b4ea6ec}'),
  ('34b56d8a-924b-7506-bf2d-9290896b0b22', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '1bd1bf1c-f861-99e3-967d-b16aa9679669', 'membership_types_name_key', NULL, NULL, 'u', '{c8bd961d-d481-96e2-26d7-3aaebff43868}'),
  ('1cbf24da-80ad-a065-9935-44b92613d1b6', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f43dde48-770f-2298-4185-844fb1eb5e59', 'app_permissions_name_key', NULL, NULL, 'u', '{051aeeea-2c68-b232-4e8d-7da585400da4}'),
  ('b272b0e3-871a-fbc4-e9cc-e2d5bf2b9aef', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f43dde48-770f-2298-4185-844fb1eb5e59', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{6379015c-003a-73d4-fff0-35bc237f4f36}'),
  ('42b994d1-855e-5234-e43a-b53af8e88c49', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '35e1d8a2-bafd-16d9-9554-d375a9819e78', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{4f994033-a33c-23bd-2460-46ec95179cc2,6f928ea4-0a5a-64d9-d06f-6bc17b92c540}'),
  ('16df85e7-c15d-a6b4-2583-92c6d3aaf951', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '2cf73d4c-8c9a-5862-beec-ea74bff434ce', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{0a9d7f66-6c89-9aaa-9bee-1e826f0eec22}'),
  ('409ce16c-3557-a270-208a-73b6c7615beb', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '619df900-2505-1053-76c6-d373614a4b72', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{1f40e819-82b2-e353-8f68-c92f310f7f5c}'),
  ('13b29119-5a30-0926-6123-0be0a959a083', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e607c617-5134-1ede-948c-e2faa9705b6c', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{af1ca0d7-8b68-ff84-652e-cea29af62245,c1fb3c58-e313-b4b9-9c22-060fa1133b0d}'),
  ('8a1ab5ad-a931-82bc-7c42-32669fc096f9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'fa1880f0-eb5b-e354-644a-d541e5b22d13', 'app_levels_name_key', NULL, NULL, 'u', '{12fa60b9-e823-e8c6-4ad5-605aafdf9bc8}'),
  ('14d4a105-e2f8-3817-9e33-4927b57165e9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '14034164-9615-1645-7c0e-c02356a9ae26', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{0c392701-6f2c-074e-f40e-7265abcc50ea,67959e12-6ce0-dbbf-5d21-36a2e082cbb0}'),
  ('fe984599-771b-e5b9-74c9-69b8d7577476', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e2a71e9a-6f09-4034-0832-04577fc80d1b', 'app_profiles_name_key', NULL, NULL, 'u', '{aded1b6c-daaa-5d14-1dc2-41399794f3d8}'),
  ('d2c91729-e417-bee8-9dfb-e09fe7586c3a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e2a71e9a-6f09-4034-0832-04577fc80d1b', 'app_profiles_slug_key', NULL, NULL, 'u', '{80b4d49e-2f5e-ba20-0f92-4232c999a61c}'),
  ('c1b8aac9-be2c-680a-af89-0ba84fe8d521', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '0ad17acf-022f-de9c-c9b7-2924424105a0', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{88c45f50-db99-c79a-a65e-d8ffe2bf9859,c9d8bbfe-9f57-109f-57bb-4d5184660f7f}'),
  ('cbd9de8f-b7c5-7740-e4a6-88808aac6782', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'cce7d6a1-ad70-e81b-0cef-1979a8413ccf', 'org_permissions_name_key', NULL, NULL, 'u', '{26517901-2a14-faf6-ac85-0b2669fa30af}'),
  ('fae75247-3786-8fe6-1924-140124c2c72a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'cce7d6a1-ad70-e81b-0cef-1979a8413ccf', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{f7000844-048f-ef70-7384-93fffe17f6f7}'),
  ('35aa7ce1-3abe-286f-06fb-1bc2065ace9b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f7b24ee5-f752-90db-4fee-03f74cd02e79', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{9f13aae4-1308-aa78-fd61-99f8b8721deb,d134abd0-1931-a5f9-d66d-6cae7749c8d9,ccf35452-0014-7e87-0aff-5d70fe0a4bb2}'),
  ('4d02dd35-e502-7c5b-ad7c-b9f5784a0189', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e2cae45d-62ab-60da-4ae0-66763c1698a8', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{8a3eb984-5482-0aa9-614f-4078d625c626}'),
  ('53986707-6274-bc18-cf37-b24b255f15fc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '74502ae6-684e-81a9-7dee-2f92fe1190ca', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{0433c4a2-893c-be19-883f-1703c521cd71}'),
  ('319dbeaa-db4e-ace1-7834-9257b7a17d32', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'd461705b-8c92-0363-91af-0fbb7825fa32', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{8c2a8974-1dda-4ba7-2a27-d9cd8a9b5306,c701268a-b8af-00af-5907-f214d0ddb3f4}'),
  ('7c256d51-f1f3-59e1-700e-e2efab0cc4ac', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'be700481-bf39-fd03-43a4-775f261f229f', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{515b2fcf-b1db-df85-a073-1e7212626ca8,455071fb-b252-7083-bd66-6b182aa95f8d}'),
  ('32ef690f-7f27-e123-1ba5-56f529e240e7', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'd4a92e44-fff6-aea7-31cc-5cdb31a1bc6c', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{0c5fdafc-331c-a705-3252-d7a7793ff26f,99b0496f-e25e-6e18-e410-857a30570f12}'),
  ('c2d5151b-b295-05cb-8b16-bd6ce0cb799c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'd4a92e44-fff6-aea7-31cc-5cdb31a1bc6c', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{34b68a0d-4f2e-71c0-579b-21d42b7cc21b,99b0496f-e25e-6e18-e410-857a30570f12}'),
  ('59463bdc-6bec-0b95-248c-de8727bf569f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'a0f4258e-8c4e-e421-defe-6072004d9886', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{c7d94121-09a5-7170-ba3f-3260c5d5333f,8014e491-b8ab-6e1d-6a4b-782f5ee3d153}'),
  ('430ee5e7-12c4-89be-415f-d2017514f91e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '8eecdcca-9af7-dc8c-025d-ff62c9d4cd68', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{862a8c8b-1db0-1ae0-5194-2153f84d85bd,764c71c5-09fc-98ff-3392-56fb6ab1bc2f,037d9604-f00a-c485-7014-692edc2f2e7a}'),
  ('6700b8d6-edfa-823a-89c9-b4a307d15063', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '5ffd53e3-5752-946d-927d-270890023387', 'org_levels_name_key', NULL, NULL, 'u', '{1b012099-1417-6b2e-6702-c11692d0db12}'),
  ('d74484a3-4637-a8d5-4e11-16edce3ad486', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '51536abc-e81f-40ac-e1a1-c03c857ebeea', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{332bcb2d-dcef-68c0-c052-9c355f1ebcb9,ddcd9834-c206-3d1b-0fee-cc6fb95794fa}'),
  ('8080c690-0eaa-9aab-98c9-5ecb18ec6b1c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'ef9ac65a-cb9f-377d-81d5-5db94c8cd271', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{13d41459-fedd-4976-9ed5-99ae951ad35d,32b66c2b-7ad9-da70-331e-f699ef252335}'),
  ('0ea39bfa-a2cf-d98c-1c82-dd31ac270e6b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'e8b1a7d2-9939-f319-9662-ae7240735bf4', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{c7b47682-6bec-56e6-3dba-10baf92858f9,1784199d-5ee2-6601-eac3-5b6eaeb2adf4}'),
  ('e5999afa-8e30-b416-1905-4958b76f8bca', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'bb40e62d-b9fe-c9fa-01f6-0bf8fc749264', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{9abacfd4-a302-3c49-336d-ab0647e1a7c4}'),
  ('7f5fcf9c-ea02-0f85-b29e-ded1ade7902e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'bb40e62d-b9fe-c9fa-01f6-0bf8fc749264', 'session_credentials_key_id_key', NULL, NULL, 'u', '{c7f70586-365d-7890-f9ee-7e72325413b7}'),
  ('ddb57e7a-0f60-aca7-3cc3-8742522e0b2b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'bb40e62d-b9fe-c9fa-01f6-0bf8fc749264', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{9338869e-a118-f65d-d096-ca984f6a0bb5}'),
  ('28692ffc-874c-7d35-6f15-31e028986f16', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '0e9bdd08-300b-2e03-7765-185f4ae22e6f', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{39844524-0e42-7ed8-385c-1a13c7e74f7b,28e0c303-4edd-3a1b-0143-b959d0343804}'),
  ('051309e9-d9dc-6605-a924-311c3f944690', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '81da28fe-893c-f637-b814-7f4c746adb93', 'emails_email_key', NULL, NULL, 'u', '{2802fd8d-e326-931d-5630-9bad017027c2}'),
  ('4321fb60-351a-a0c4-7fbc-a3655e494ccd', '8ec84715-45cb-2837-1ed2-48d7fa916c81', '82989a45-5dad-effa-ed9d-32c430b3f2d6', 'phone_numbers_number_key', NULL, NULL, 'u', '{a175bf0a-d16c-4913-da64-7fd5c255a26f}'),
  ('feeb094f-1522-e1c9-443b-8dd421d551fc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'f65c900b-5027-c8ee-174e-6f9909b0d58d', 'crypto_addresses_address_key', NULL, NULL, 'u', '{916cfa57-830a-53d2-39a0-d179a0ed62fb}'),
  ('1a4807e9-4bdd-1418-bfb5-550c2ab9cb82', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'b9f87f40-8111-8daf-3d3a-cfc6971c55a1', 'invites_invite_token_key', NULL, NULL, 'u', '{68e26264-a84c-891f-533f-5f43419398a4}'),
  ('adacb75e-3f82-751c-39f4-ee1be3fa5bc2', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'b9f87f40-8111-8daf-3d3a-cfc6971c55a1', 'invites_email_sender_id_key', NULL, NULL, 'u', '{17f66896-aa6a-9898-a29a-6c80ba6fc198,8cbcfe28-8173-0c21-d203-48cd8780a2bb}'),
  ('2b7ac01b-c914-e438-6731-3cec909e0329', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'dff5c9bd-d077-ba09-6875-8c991e8f4a77', 'org_invites_invite_token_key', NULL, NULL, 'u', '{0440e98c-3e31-27a0-1f7e-95c6dc0a3479}'),
  ('1d2751ed-a5a8-b15d-28a8-c01718721406', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'dff5c9bd-d077-ba09-6875-8c991e8f4a77', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{f12bef1a-627d-d975-d823-0a044b2de520,76c96a9b-8c9a-081b-392b-63f08b1fc3a4,cad10810-90b1-de33-23c0-4f50b88a5c0f}');


SET session_replication_role TO DEFAULT;


