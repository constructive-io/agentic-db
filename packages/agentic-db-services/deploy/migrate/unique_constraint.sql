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
  ('04d05916-b682-7525-e4dd-906185b9c725', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ce751437-f674-e41d-a187-a2780601aed4', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{9f53e708-2c8f-8d30-dff1-0865e670fda8,50570bee-f1ca-f6de-56a6-39ec8a995fa4,feffdef0-9d1f-ca78-0162-2928e42cfb47}'),
  ('0f0eb10a-111e-b57e-09f8-700fe74a236b', '2ef50f93-192b-b168-969d-304c8e675e1d', '68fda2a2-87f3-43c8-f059-42665d6b417e', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{0917cbcf-1d8f-6ab1-37dd-4214b9fd5091,25fb994f-59f6-39d5-104d-5da913bb1a67}'),
  ('155b4eb5-6435-6ce6-69e1-905e748870f3', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c66666-071d-6f46-7967-85437fc3c183', 'app_permissions_name_key', NULL, NULL, 'u', '{e6caceb8-ea5f-4ab0-82d6-bcc06d4898e2}'),
  ('195ff30b-6739-83ff-4abe-a052b686c12a', '2ef50f93-192b-b168-969d-304c8e675e1d', '445ed90f-4b8d-a2d2-f7e8-09a18da42629', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{42242fa8-5b6a-b384-b682-bfc58d83eaa2}'),
  ('1cdee0aa-c9b9-7ed0-673d-1e80b66748cd', '2ef50f93-192b-b168-969d-304c8e675e1d', '445ed90f-4b8d-a2d2-f7e8-09a18da42629', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{a89ffc0b-39e2-a1b5-bf15-a917dc717c61}'),
  ('2376de23-7888-6122-bfdf-b315637e0f28', '2ef50f93-192b-b168-969d-304c8e675e1d', '76fbe540-5da1-bc69-2a97-95050fdc2363', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{50e88914-17e0-e836-98f8-15d82012ca96,279ab12a-db1b-7490-c7c1-cecc751e9355,2dd0b0ef-9b53-9e97-0f1e-411a69f2f0f3}'),
  ('28ec599d-2470-c4b1-ba89-3643415640ec', '2ef50f93-192b-b168-969d-304c8e675e1d', 'faaf37b8-95ed-1f8e-90f9-2bfa6e22dd4a', 'crypto_addresses_address_key', NULL, NULL, 'u', '{69604cb6-b699-2792-8a55-f56b15138501}'),
  ('292e4773-0e01-1c39-1973-334ae45e138c', '2ef50f93-192b-b168-969d-304c8e675e1d', '82cb9d81-5983-2821-4074-5383880468c3', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{adf94a36-d50c-c1d4-5716-ebbc9053e4a0}'),
  ('35945e57-09d7-f6bc-751c-c78d9d9db77d', '2ef50f93-192b-b168-969d-304c8e675e1d', '7039d7e8-4ff9-89a0-6819-cd579beba62d', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{15abff43-a44f-e97f-4c35-b748f829a071,b69d28f3-4aa6-da5f-838c-340b05e2f453}'),
  ('3884dfd2-58e7-b0cd-b6e9-dd17735a578e', '2ef50f93-192b-b168-969d-304c8e675e1d', '5c04eea7-e5d9-423f-4918-077a3525d5af', 'app_profiles_name_key', NULL, NULL, 'u', '{fcfa316e-ff4c-b8bb-116b-3b3199aac54a}'),
  ('47662593-4da8-a2f8-45a4-513dbe3e2541', '2ef50f93-192b-b168-969d-304c8e675e1d', '5baecdd4-5337-9003-bac4-4ad1c8b84332', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{9516fbb9-2565-d537-29a6-68068156560b,e0d299b7-5d50-417c-34f4-46837ae99372}'),
  ('47dc710a-49c8-6a97-651b-229b453a8387', '2ef50f93-192b-b168-969d-304c8e675e1d', '9b411547-93a3-5952-0773-c914b00e71fa', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{4d564cef-5000-1185-a3b6-05781cb4a010,ea55283e-44f1-5a55-99d0-483b8353b722}'),
  ('4f4695a6-8cfe-ffcc-c88b-72279ae0a454', '2ef50f93-192b-b168-969d-304c8e675e1d', '858bf26f-f856-cd9b-385b-79fcfcdde069', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{513f089b-969c-f352-0796-5652485600af}'),
  ('63e778fd-9c3c-3562-5ebc-5114db1ef0cd', '2ef50f93-192b-b168-969d-304c8e675e1d', '5353e947-3e3f-3914-7fd1-1370926dd743', 'users_username_key', NULL, NULL, 'u', '{547cafc1-f9cc-95a6-c9a4-b98bbe62b151}'),
  ('650e0c2e-eab6-bf8c-bc57-012eb85705ed', '2ef50f93-192b-b168-969d-304c8e675e1d', '52eb7909-b8a8-1448-7990-e2c328f0e783', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{3bd2842f-d541-01ea-dcdc-40f0af9c52d7,347f69f1-3d50-06b5-f9be-8231ec06f183}'),
  ('6b7e0e85-f011-1039-ad9f-70b75272307d', '2ef50f93-192b-b168-969d-304c8e675e1d', '997d1277-896d-b685-00d0-95c5502c36cb', 'invites_email_sender_id_key', NULL, NULL, 'u', '{4cc88e13-b9b4-660c-5871-7b86fd02888e,be3ab004-471d-053f-6a52-1d8ac70d085a}'),
  ('6d52223f-3a33-1077-8054-aee355a8cef2', '2ef50f93-192b-b168-969d-304c8e675e1d', '466daf48-10db-6a50-580e-62151153391c', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{dec76a6f-7db9-31e5-df9d-118ccbdc31e6,b4ef894d-66c8-ee5d-1104-ef1a5b924235}'),
  ('6d53ac32-fc04-da7c-35aa-606f0ee56c17', '2ef50f93-192b-b168-969d-304c8e675e1d', '7e55d3cd-dcd0-139b-8c1d-8d5a5bedde89', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{f19aa436-a347-97b0-f6f4-e87f52d07494,34493905-e04b-f660-c838-94ebbfcaefa6}'),
  ('71256fa2-cd1e-5890-db0a-7a7bb96a64d4', '2ef50f93-192b-b168-969d-304c8e675e1d', '3edf1d87-c5c4-d78e-3585-c006d8de8361', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{91c17645-dd1b-cc91-9488-59f9301b82f3,b0c728a4-1366-57ac-387a-692f767e80c8}'),
  ('72eaafb9-106e-c5c3-179d-6034379a4b0d', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ee8f193d-af6d-6828-39e5-ed25f55fc9a3', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{709c8a6b-5499-dca7-540f-5259667a99c1}'),
  ('7e9726fd-9ebd-67a3-47d6-f57e02030672', '2ef50f93-192b-b168-969d-304c8e675e1d', 'bc240f15-9916-eec8-6f06-5b26a8c6a227', 'membership_types_name_key', NULL, NULL, 'u', '{23f63d79-4f72-4bc4-df63-395058158074}'),
  ('819d7b07-e2d5-c1aa-c8bc-684ec6ecaf8f', '2ef50f93-192b-b168-969d-304c8e675e1d', '997d1277-896d-b685-00d0-95c5502c36cb', 'invites_invite_token_key', NULL, NULL, 'u', '{a3f93c9d-7116-20d0-fc25-3ec37f5d8977}'),
  ('93228b03-a55d-181e-6742-20c893f6d384', '2ef50f93-192b-b168-969d-304c8e675e1d', '5c04eea7-e5d9-423f-4918-077a3525d5af', 'app_profiles_slug_key', NULL, NULL, 'u', '{5f516ad0-94a2-376a-afb2-32452e3c7f8b}'),
  ('9459e4ef-13ed-9be0-4872-88023eeeda58', '2ef50f93-192b-b168-969d-304c8e675e1d', 'a26bc763-90fc-5cb4-377a-4fdee57f8ed5', 'phone_numbers_number_key', NULL, NULL, 'u', '{c539415d-d3ce-f8a6-c3c0-dc5a5ba2ce2e}'),
  ('9a777c4b-1aab-893f-d923-22d88b79cd94', '2ef50f93-192b-b168-969d-304c8e675e1d', '8524a208-96ae-2e44-348a-21704203d5f3', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{870e1618-47a6-1fdc-92e5-e928b6dbb9bc,8beeb77c-86f5-5dc8-87f7-a2d3c1d4f124}'),
  ('9bd54cad-7d64-3284-b221-f8f49515e4cc', '2ef50f93-192b-b168-969d-304c8e675e1d', '9351735d-94f7-3233-284e-26cb00ea0b3a', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{376b7b2d-7291-5415-dd14-3694569f337e}'),
  ('a1474442-d52d-9952-0f36-08adc3e69b1c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'be390931-dcdf-fa6e-81f3-3fa64288fdfa', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{c59a2939-11dc-c54e-5178-70a8cca59e9b,5669c560-231d-45c4-b68b-e0e07e9f80ed}'),
  ('ac96b144-ee5e-4480-ac01-e13a3e97b4c9', '2ef50f93-192b-b168-969d-304c8e675e1d', '8524a208-96ae-2e44-348a-21704203d5f3', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{805624ae-20f8-e33b-636b-d29a1716270e,8beeb77c-86f5-5dc8-87f7-a2d3c1d4f124}'),
  ('ae84cae9-f0f9-e0af-83a8-9ef987392725', '2ef50f93-192b-b168-969d-304c8e675e1d', '5a298841-87da-194e-bc4f-b98db27e0f71', 'emails_email_key', NULL, NULL, 'u', '{7bd348d3-72f7-3531-cee3-c60a5f1c3b4c}'),
  ('b9544c0d-678e-80c8-49b3-d556dd3885ea', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ef9aa1a4-5c48-1385-b538-f136c8e0594c', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{5f11129a-a8d5-a425-c022-20c46a5ed007,ad9f31fa-28f6-8bbf-03a7-86025d8befcd,58533720-6ab1-8f67-41e9-08ac2ad87504}'),
  ('c398905c-892a-a6a4-92f9-5f19d5086fef', '2ef50f93-192b-b168-969d-304c8e675e1d', '0383d66e-6f81-eccd-6656-1a3e5ec75626', 'app_levels_name_key', NULL, NULL, 'u', '{55023252-623c-04c1-e88f-78bf91c3c59a}'),
  ('c99245f7-fd35-2c64-67b6-9af066f52a4a', '2ef50f93-192b-b168-969d-304c8e675e1d', '445ed90f-4b8d-a2d2-f7e8-09a18da42629', 'session_credentials_key_id_key', NULL, NULL, 'u', '{972932c2-1919-ba5a-8e42-a188bd90ebda}'),
  ('cdff35cf-9412-8c56-2e82-ad34690b84c7', '2ef50f93-192b-b168-969d-304c8e675e1d', '5cb94294-8c01-fc80-8e8f-1e34ef5743f9', 'role_types_name_key', NULL, NULL, 'u', '{5c97900b-c615-344a-0b19-307509d9ad25}'),
  ('ceb4dc01-b10f-8559-b291-fdabd1305f66', '2ef50f93-192b-b168-969d-304c8e675e1d', '97c66666-071d-6f46-7967-85437fc3c183', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{b425c564-0d3e-c6f0-bf9a-b548f9ae4826}'),
  ('cf0b8175-1b99-ba7a-e81a-a17a98d277c9', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ce751437-f674-e41d-a187-a2780601aed4', 'org_invites_invite_token_key', NULL, NULL, 'u', '{4741e876-06fe-cd12-6a7a-5bdaef6f1687}'),
  ('dae3895d-7e2b-9305-0e42-fea0ffa4f25f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'b7688c7c-98d4-b1b8-09b4-44ed772b3f33', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{ca70cf02-815b-cd7a-82ab-bee5115a4179,bda6e239-5c8f-57ed-d4e2-9a12f8faaebe}'),
  ('e6641582-36f8-fae3-f6ce-f512f8e6f0c7', '2ef50f93-192b-b168-969d-304c8e675e1d', '00e3e115-3df1-c293-beec-d5e523359489', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{cef95676-64d1-5ecd-3c04-b60f08bf3bf6,5926e7aa-68e1-97a5-0ab6-cd0cb5ade655}'),
  ('f7af39e6-5596-8828-6e13-f18493bf02d6', '2ef50f93-192b-b168-969d-304c8e675e1d', '3a71356e-e573-5d43-6225-7dda26f5b835', 'org_levels_name_key', NULL, NULL, 'u', '{77aeb484-9309-0eea-9090-d3a9b690bd56}'),
  ('fbd0af04-5653-7643-17a0-844b419a1031', '2ef50f93-192b-b168-969d-304c8e675e1d', 'ee8f193d-af6d-6828-39e5-ed25f55fc9a3', 'org_permissions_name_key', NULL, NULL, 'u', '{07766927-65f5-85d6-674a-35c0dd54513b}'),
  ('fd435dd8-2a3a-37eb-9c11-034eda57e808', '2ef50f93-192b-b168-969d-304c8e675e1d', '0aa71b23-04e0-cae1-5c48-91d6b66f929b', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{0702589d-cac1-d8c6-4e15-41e7bbfb1db9}');


SET session_replication_role TO DEFAULT;


