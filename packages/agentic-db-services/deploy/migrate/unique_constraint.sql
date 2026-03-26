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
  ('019d2831-63fd-7b02-94f8-bc823a9bb2d2', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6349-7cde-a517-c115bf8f4bff', 'users_username_key', NULL, NULL, 'u', '{019d2831-63d1-790e-85b9-2664f34df021}'),
  ('019d2831-6529-74fc-aa8f-b6921386c824', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-64aa-73f8-bfd4-936586dec2dd', 'role_types_name_key', NULL, NULL, 'u', '{019d2831-64ff-7c84-982c-54e411066aac}'),
  ('019d2831-682a-76b3-85da-0d7ab2d72016', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6704-7244-a966-c4345e556441', 'membership_types_name_key', NULL, NULL, 'u', '{019d2831-678b-7a84-a341-405180a95905}'),
  ('019d2831-6a39-700a-9866-961436b554a0', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6993-7415-bc88-2c55d7aa6811', 'app_permissions_name_key', NULL, NULL, 'u', '{019d2831-6a15-7b2e-ae0f-1683620b5e43}'),
  ('019d2831-6a81-78b7-b73c-2cc34c065c0a', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6993-7415-bc88-2c55d7aa6811', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d2831-6a4b-7e64-9551-7a72199c4aa6}'),
  ('019d2831-6ebc-7707-ba12-5a3174241773', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6d76-795f-95ab-9f8ec87cc298', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d2831-6dfa-70de-80e7-97d437bfbbc0,019d2831-6e1d-76b4-8afe-cebd6ca2a782}'),
  ('019d2831-6f98-7e7d-8aa9-1dbc924b477a', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-6ed0-7bb5-b587-614b82b3714c', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d2831-6f45-7071-b9c1-0c4dbd603744}'),
  ('019d2831-7ae3-7994-b644-eb83e2074069', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-732a-76c6-a425-65abcce0f160', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d2831-7a6a-795d-a1c5-bbcbfb6100a6}'),
  ('019d2831-8710-71b5-8306-9275d2d838d8', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-8592-706c-ab94-a56a04ff2197', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d2831-8616-7237-804e-48e56d5c508a,019d2831-8682-7802-b498-4a7594fb3ad6}'),
  ('019d2831-8866-708b-a65c-f587e74c85cf', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-879a-70b4-b0ae-6125d2d63710', 'app_levels_name_key', NULL, NULL, 'u', '{019d2831-8829-7d9a-8830-517170a83f6f}'),
  ('019d2831-8b49-7b31-a5f9-f34c1abf01ac', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-898d-74a7-8578-c64d0dcb4e6a', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d2831-8a11-7f7b-8f5a-fd6351251c2c,019d2831-8a4c-7cab-83a2-9302f655008c}'),
  ('019d2831-907b-7a92-8620-64b9ad59694a', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-8de5-7ceb-a6ae-418c096528a0', 'app_profiles_name_key', NULL, NULL, 'u', '{019d2831-8e7b-705e-8915-501d83b2544e}'),
  ('019d2831-9093-75b0-8e32-f3d5f007854c', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-8de5-7ceb-a6ae-418c096528a0', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d2831-8eb7-7900-9d6d-9f1e1b898522}'),
  ('019d2831-9223-74a2-9142-05b2d9439484', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-90d5-76d7-9e8e-34aba2a6195c', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d2831-915d-730f-a648-ec97bda01b07,019d2831-91b0-78d8-8a96-e9e9b6cc5fb7}'),
  ('019d2831-a45e-7f1b-a423-339f42e49daf', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-a3ad-7ec2-a3ba-39b15c9e4901', 'org_permissions_name_key', NULL, NULL, 'u', '{019d2831-a436-753e-8059-89ed350fd575}'),
  ('019d2831-a4b4-7043-bdf7-5dc57554fae3', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-a3ad-7ec2-a3ba-39b15c9e4901', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d2831-a475-78c8-8254-04c5ffba5674}'),
  ('019d2831-ac48-75a7-9541-8fbb3831d38f', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-aa98-7f38-8ae6-a0ad172ec4ef', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d2831-ab20-7b3a-9fb2-28515fb31aaa,019d2831-ab49-719a-b3a7-8df9ec7d44d3,019d2831-abf7-7a7c-92e4-450018f8b8da}'),
  ('019d2831-ad9e-715f-8088-20c3b5400601', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-ac5d-7ada-bd29-6edd91fad4ef', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d2831-ace9-79ea-a8cd-d66190466c5f}'),
  ('019d2831-b805-7ef5-90f2-02c8359dbc29', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-b3d8-7b64-b201-3d4bddc156e8', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d2831-b7ad-7bdd-a9a9-e63e012f9a14}'),
  ('019d2831-bc12-7828-be0b-27de0c3c85a8', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-b271-7396-ab85-a73b6b789548', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d2831-bb3e-71a0-955a-00dc47b957f4,019d2831-bbbf-7910-9ded-dcea3adf6029}'),
  ('019d2831-bdec-765e-9980-e2f7365d9fe0', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-bc50-7620-b225-179db6ff0049', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d2831-bd2b-707c-b524-8106279bf241,019d2831-bd99-7c21-acf6-87d48be425d6}'),
  ('019d2831-cf7c-78bc-bdbe-6b0787973ab1', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-cc63-7ceb-ad7f-dbde95a08a75', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d2831-ccf7-71ab-a768-2b94c7ed22cd,019d2831-cf21-70cf-83c2-89aacbe9b8e8}'),
  ('019d2831-cf94-7559-b866-568401394467', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-cc63-7ceb-ad7f-dbde95a08a75', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d2831-cd36-7ca7-b8f6-2561fd4570db,019d2831-cf21-70cf-83c2-89aacbe9b8e8}'),
  ('019d2831-d157-78e5-a8ca-6d58b5519293', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-cff0-7d5c-b751-5370d5dc45ad', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d2831-d092-7a32-9707-de18c975ec57,019d2831-d0eb-7f8a-a823-4757bc1c0c69}'),
  ('019d2831-e1db-7c25-b479-1f82c2f8d936', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-dff9-7cf5-a358-be99b1ef8943', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d2831-e08e-7116-a383-b924afc00b2b,019d2831-e0fd-7540-a872-9f1d46f2fa6d,019d2831-e192-74d7-98f6-9f2247d6a0f0}'),
  ('019d2831-e370-7c2b-bcd6-fdf481b14066', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-e294-7c03-9790-446ad5c7ef9d', 'org_levels_name_key', NULL, NULL, 'u', '{019d2831-e32c-7fe3-a5db-7a5b6ce23f8e}'),
  ('019d2831-e6c3-7311-9329-00db11e0f8e8', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-e4cd-7ea0-8ede-3c44fd3ff0d9', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d2831-e565-7bcb-9bdb-e395f34067ac,019d2831-e5ae-740a-a114-a01f41d86b8e}'),
  ('019d2831-f3d1-71ff-b33c-659d06fda4ae', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-f149-7d89-a983-3a738af9398d', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d2831-f270-74d4-835d-184d6254766c,019d2831-f2d0-7863-86be-fc09c4d192a2}'),
  ('019d2831-fe2e-7341-a658-480d546047a0', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-fcad-7da8-8944-af579169c6ec', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d2831-fd58-74e6-9900-2fde691b81d4,019d2831-fd9e-7961-8daf-cf35e1bfdad5}'),
  ('019d2832-07c9-7210-97cd-be422c7823e3', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-0442-7220-ae82-c26c548b7273', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d2832-05d4-7325-87e9-464573b09a89}'),
  ('019d2832-07e5-7650-9d56-7bd0910b2570', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-0442-7220-ae82-c26c548b7273', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d2832-05a4-7bbb-bb44-884392135cf6}'),
  ('019d2832-0800-7671-909a-ef6f6b5b8e97', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-0442-7220-ae82-c26c548b7273', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d2832-0705-742b-adc7-8170bf0a04b2}'),
  ('019d2832-1104-7904-a3f6-66d0e1c5478e', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-0f3f-76a4-a9da-9451e625e8c0', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d2832-0fef-7555-8b23-2357bde0df2a,019d2832-1038-7387-ab0e-47dce499bb06}'),
  ('019d2832-17d5-78ff-a820-c52220cb9fca', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-1538-74f2-b800-9a2cfea1dd32', 'emails_email_key', NULL, NULL, 'u', '{019d2832-1677-75a3-bea7-8205bb6d8bd1}'),
  ('019d2832-1fd4-7acf-8a28-2e7748e0121e', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-1d4b-7f57-9785-c7839a0aa4cb', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d2832-1ebf-7e15-87d0-6aa110dd752f}'),
  ('019d2832-27dc-72e0-b065-6387d798b64d', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-2597-71a0-b86f-7e4a08533794', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d2832-26b3-7f98-a46d-ba33ec5e6d4d}'),
  ('019d2832-2ffc-7f71-a7d9-b43524832162', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-2b5f-7b6c-8412-013c657310bf', 'invites_invite_token_key', NULL, NULL, 'u', '{019d2832-2cbc-7259-b160-fd27e78049bc}'),
  ('019d2832-3020-7988-9877-a11d851e87dd', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-2b5f-7b6c-8412-013c657310bf', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d2832-2c1d-73ff-a0c6-e0a71c60cf79,019d2832-2c5b-7ecc-bf2c-057447ec1b71}'),
  ('019d2832-3d34-74ca-8d1d-efb21012cf3c', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-3888-7946-a971-01725753d77b', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d2832-3a00-7234-a0ad-921a671d10c4}'),
  ('019d2832-3dc4-711d-bc44-88b76a905d03', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2832-3888-7946-a971-01725753d77b', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d2832-3934-774c-bbcc-1cc6778a3f4f,019d2832-396e-765d-96b4-a3812f8f5236,019d2832-3d51-78c7-8dca-2647a965fdee}');


SET session_replication_role TO DEFAULT;


