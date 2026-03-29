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
  ('019d37b9-b872-7eb0-aa29-bda257ce431b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'users_username_key', NULL, NULL, 'u', '{019d37b9-b842-7664-8993-b5bd6d956573}'),
  ('019d37b9-b9c2-7a01-b012-0bf79c6f15f6', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b947-7aba-a621-3a25587c23bc', 'role_types_name_key', NULL, NULL, 'u', '{019d37b9-b99f-718e-8799-b3bd1f9891be}'),
  ('019d37b9-bcc6-731d-8c11-7deea79a3a90', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bba8-7262-87df-76d88d1eea51', 'membership_types_name_key', NULL, NULL, 'u', '{019d37b9-bc27-77bb-9f6e-9dc926e6feda}'),
  ('019d37b9-beec-7e1a-b115-794cc95043b0', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-be51-7edc-9a46-789aa38be324', 'app_permissions_name_key', NULL, NULL, 'u', '{019d37b9-becb-7958-9229-ae0f5a5685e4}'),
  ('019d37b9-bf33-7379-b191-c6fb732a8a4a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-be51-7edc-9a46-789aa38be324', 'app_permissions_bitnum_key', NULL, NULL, 'u', '{019d37b9-befe-7b21-aebc-72128444f33d}'),
  ('019d37b9-c36c-77d9-82b6-597b7401b940', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c1ff-7b2f-b603-ca6071c814b0', 'app_limits_name_actor_id_key', NULL, NULL, 'u', '{019d37b9-c2a4-705e-8404-a22ee9f3a14a,019d37b9-c2c6-724b-af6d-e3a1f3bdf636}'),
  ('019d37b9-c43d-7672-8253-e8e272792148', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c37f-7171-9431-2555b4a606d3', 'app_limit_defaults_name_key', NULL, NULL, 'u', '{019d37b9-c3ea-733d-bf78-365263f51e9e}'),
  ('019d37b9-cdd7-741d-be76-8f0801d54832', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-c690-7938-a48b-4231af4d2ef4', 'app_memberships_actor_id_key', NULL, NULL, 'u', '{019d37b9-cd60-7167-8c02-8f3e273b53dc}'),
  ('019d37b9-d917-7759-b5bd-399fd3e45998', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d7c1-7e1b-9c35-44989ed405ed', 'app_achievements_actor_id_name_key', NULL, NULL, 'u', '{019d37b9-d835-784a-abba-04eb8c121e2b,019d37b9-d88f-7a20-a95c-d9ff646e2d3a}'),
  ('019d37b9-da3b-7bd9-a58a-46b5800d8468', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-d994-7e84-8930-779bd994a52a', 'app_levels_name_key', NULL, NULL, 'u', '{019d37b9-da07-743f-81cd-82fabff1da70}'),
  ('019d37b9-dccb-7d55-a3b9-a3efb3bca3fd', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-db47-7f02-bb51-6b505cfc087f', 'app_level_requirements_name_level_key', NULL, NULL, 'u', '{019d37b9-dbbc-7322-8373-dbceccc59208,019d37b9-dbf3-7b29-a8dc-8090d4ae63b9}'),
  ('019d37b9-e180-79d8-9010-f6ac78554ad6', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-df17-774f-a30a-8d5a929eded1', 'app_profiles_name_key', NULL, NULL, 'u', '{019d37b9-df9d-7292-a2a0-67bf43b59bc3}'),
  ('019d37b9-e198-7cf6-a854-523bffb93eb9', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-df17-774f-a30a-8d5a929eded1', 'app_profiles_slug_key', NULL, NULL, 'u', '{019d37b9-dfd5-7cba-95af-8cd0d05f46dc}'),
  ('019d37b9-e2e8-7529-98a1-01468551171c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-e1d4-7f52-8d94-fce066de191b', 'app_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d37b9-e248-728a-a5d0-5c100b6d0567,019d37b9-e291-798b-90b4-78509b49729f}'),
  ('019d37b9-f262-7156-91d4-364b675bc56b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-f1c4-7631-be74-02fadb8f3940', 'org_permissions_name_key', NULL, NULL, 'u', '{019d37b9-f23c-78d5-97c4-b9db4d6c6260}'),
  ('019d37b9-f2b2-7a18-b8ec-6b4d968092e0', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-f1c4-7631-be74-02fadb8f3940', 'org_permissions_bitnum_key', NULL, NULL, 'u', '{019d37b9-f277-70aa-8098-8b7422b656c2}'),
  ('019d37b9-f87f-748b-a23c-5484f1683e72', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-f6d5-7855-bd31-fca69824d86e', 'org_limits_name_actor_id_entity_id_key', NULL, NULL, 'u', '{019d37b9-f758-7d61-81a6-5c8d3c16c43a,019d37b9-f782-744a-8085-f75c0e3d1a97,019d37b9-f832-72b8-bfe0-0e8890a56c38}'),
  ('019d37b9-f9d3-7b48-bafe-84670eea1e86', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-f893-7ecd-9504-23198b5ec0d2', 'org_limit_defaults_name_key', NULL, NULL, 'u', '{019d37b9-f913-75d0-ac06-1ea41ccd5e95}'),
  ('019d37ba-01c8-735f-b901-dd9c159fc40a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-fde0-734c-a3eb-d5ff3b2f2634', 'org_membership_defaults_entity_id_key', NULL, NULL, 'u', '{019d37ba-0178-7e5f-b7e5-f5e6186e09fa}'),
  ('019d37ba-0595-7fe9-81f8-629c130a4638', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-fc8e-72c0-ba2d-4d58f95d8eb5', 'org_memberships_actor_id_entity_id_key', NULL, NULL, 'u', '{019d37ba-04c9-79ca-ba80-f8ecf660ce6a,019d37ba-0548-7c65-b862-730c2207d739}'),
  ('019d37ba-0749-759c-a23f-1b5dcdefd603', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-05cd-7e06-b20a-5f3b729cad64', 'org_members_actor_id_entity_id_key', NULL, NULL, 'u', '{019d37ba-069d-7137-a215-2164bbc806f3,019d37ba-06fe-7055-aeda-357f3b213814}'),
  ('019d37ba-15ea-76d0-8090-5465bb1379fd', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-12ed-7e2d-9bf5-c90d8467b071', 'org_profiles_name_entity_id_key', NULL, NULL, 'u', '{019d37ba-1371-78f2-9894-77025d74acb6,019d37ba-158f-7fb8-89c7-7812e77531cf}'),
  ('019d37ba-1601-7e51-b1a0-e097d4f595c9', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-12ed-7e2d-9bf5-c90d8467b071', 'org_profiles_slug_entity_id_key', NULL, NULL, 'u', '{019d37ba-13b4-7b99-b961-305de6ac6a99,019d37ba-158f-7fb8-89c7-7812e77531cf}'),
  ('019d37ba-1794-7d13-881c-a4f3c76c5469', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-1653-7bcc-955b-0fd4b389d5f7', 'org_profile_permissions_profile_id_permission_id_key', NULL, NULL, 'u', '{019d37ba-16d8-7da2-a4c3-1889bbaf4e91,019d37ba-172e-7a8d-a5ed-4a261555969d}'),
  ('019d37ba-24f2-7089-aaee-d2adf57873de', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-2336-7f6d-82db-80e4cc309c75', 'org_achievements_actor_id_name_entity_id_key', NULL, NULL, 'u', '{019d37ba-23be-7280-9d09-fc0939f9d0c8,019d37ba-2424-7e56-80e3-7876ec64b5a5,019d37ba-24b3-7a9a-afca-cfe69d9e4b0a}'),
  ('019d37ba-2664-7203-9420-259d130d1896', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-2599-70d0-97eb-343c1b0c77eb', 'org_levels_name_key', NULL, NULL, 'u', '{019d37ba-2622-7fc6-bbe5-be42094ba59f}'),
  ('019d37ba-298c-70ce-9239-88d508d8cc17', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-27a6-7702-ba83-40a124a80c03', 'org_level_requirements_name_level_key', NULL, NULL, 'u', '{019d37ba-283d-7093-8565-6cb6be3331cb,019d37ba-2882-75e1-ad10-8473c947efb2}'),
  ('019d37ba-35ec-79d1-ba75-ceb51fd50ba7', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-338d-72e0-a05b-78b915b15742', 'org_chart_edges_entity_id_child_id_key', NULL, NULL, 'u', '{019d37ba-349c-7098-8e06-d60d23c48a09,019d37ba-34f3-75bb-b862-ac9a7f31cd72}'),
  ('019d37ba-407b-7570-9b1f-6aca8d95f327', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-3f14-72a9-9869-0956d3428991', 'secrets_owner_id_name_key', NULL, NULL, 'u', '{019d37ba-3fb0-7913-8830-57a658ba20f8,019d37ba-3ff1-7caf-b01c-2a95cde18235}'),
  ('019d37ba-499c-7262-930b-0ea5f88be8d7', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-4639-7055-a2fd-819201437f9a', 'session_credentials_secret_hash_key', NULL, NULL, 'u', '{019d37ba-47bc-7f53-9b24-b8d9726a0081}'),
  ('019d37ba-49b6-7464-9db4-1ee0be21ae9d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-4639-7055-a2fd-819201437f9a', 'session_credentials_key_id_key', NULL, NULL, 'u', '{019d37ba-478c-7a8f-947e-5403cbff7dea}'),
  ('019d37ba-49ce-7868-8eb3-b41616c1b84b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-4639-7055-a2fd-819201437f9a', 'session_credentials_ot_token_key', NULL, NULL, 'u', '{019d37ba-48df-7fc6-b5f5-5f47085ae0d3}'),
  ('019d37ba-528e-77c2-a296-85e60f803da0', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-50ce-7e82-8463-9a0663f36d12', 'encrypted_secrets_owner_id_name_key', NULL, NULL, 'u', '{019d37ba-5176-7b71-8f4d-e05b90440b1b,019d37ba-51bb-71cf-96c4-f27200d21558}'),
  ('019d37ba-591d-78fc-83a3-525e1e55a512', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-569c-7261-a2c1-0141c5943571', 'emails_email_key', NULL, NULL, 'u', '{019d37ba-57c8-7ecd-a46a-d8db58374cf6}'),
  ('019d37ba-5f10-71c9-8538-fc901287bbde', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-5c91-75f3-a491-d61613e2d8ad', 'phone_numbers_number_key', NULL, NULL, 'u', '{019d37ba-5df9-7c2b-b518-8646b33aca3d}'),
  ('019d37ba-64e3-7e0b-818e-4e0541bf5eca', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-62ae-7753-be7a-7aa895f9a276', 'crypto_addresses_address_key', NULL, NULL, 'u', '{019d37ba-63be-7858-938e-a0d4f11222fa}'),
  ('019d37ba-6ca3-721d-b46f-3659d23ef67c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-6862-7e6f-98ec-feafe16e29af', 'invites_invite_token_key', NULL, NULL, 'u', '{019d37ba-69a4-7b10-a0e3-ce1a041ffee1}'),
  ('019d37ba-6cbd-703c-9964-41d7bdd67173', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-6862-7e6f-98ec-feafe16e29af', 'invites_email_sender_id_key', NULL, NULL, 'u', '{019d37ba-6912-7837-b2d2-76012cdf8858,019d37ba-694a-7fd5-9642-7ac2ccf68394}'),
  ('019d37ba-7746-7952-8c19-e5d7c8b59bda', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-72bb-7e1d-92cc-acab01a90161', 'org_invites_invite_token_key', NULL, NULL, 'u', '{019d37ba-7440-7ec0-a1c7-a87fdf6052e4}'),
  ('019d37ba-77c6-7397-88a2-7492028eeb34', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37ba-72bb-7e1d-92cc-acab01a90161', 'org_invites_email_sender_id_entity_id_key', NULL, NULL, 'u', '{019d37ba-7358-7e29-96bf-c9b4214d3b26,019d37ba-738e-7c35-990a-949863d03c90,019d37ba-775f-7236-b7e5-0e1a22da7451}');


SET session_replication_role TO DEFAULT;


