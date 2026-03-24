-- Deploy: migrate/trigger_function
-- made with <3 @ constructive.io

-- requires: migrate/trigger


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

INSERT INTO metaschema_public.trigger_function (
  id,
  database_id,
  name,
  code
) VALUES
  ('0165f776-ad1f-6d16-673c-4068dd11bbf3', '019d20cd-7722-776e-8fb8-f96db2895639', 'venues_enqueue_chunking', NULL),
  ('019d20cd-7b89-7a31-8460-259e90670ead', '019d20cd-7722-776e-8fb8-f96db2895639', 'users_search_tsv_tsv', NULL),
  ('019d20ce-17f2-7416-a3f4-e8885c9bb3b4', '019d20cd-7722-776e-8fb8-f96db2895639', 'encrypted_secrets_hash', NULL),
  ('058b90c7-1d56-7035-e009-dbc983aaf5ec', '019d20cd-7722-776e-8fb8-f96db2895639', 'memories_enqueue_chunking', NULL),
  ('0623bc9a-5dff-9239-598e-88d3d5661740', '019d20cd-7722-776e-8fb8-f96db2895639', 'events_enqueue_embedding', NULL),
  ('0c0eef8b-ac27-feae-9477-b882c0e78a1d', '019d20cd-7722-776e-8fb8-f96db2895639', 'companies_enqueue_chunking', NULL),
  ('0d132f64-cab2-7547-9f5e-76c4dbfb1331', '019d20cd-7722-776e-8fb8-f96db2895639', 'emails_enqueue_embedding', NULL),
  ('0fd2f44e-df9e-d235-75ca-ecfa0134833d', '019d20cd-7722-776e-8fb8-f96db2895639', 'rules_enqueue_embedding', NULL),
  ('12bd67c0-687c-988a-cedb-fde435464d6d', '019d20cd-7722-776e-8fb8-f96db2895639', 'interactions_enqueue_chunking', NULL),
  ('14b962a4-a60f-0ef1-b150-b4f7bba71aae', '019d20cd-7722-776e-8fb8-f96db2895639', 'calendar_events_enqueue_chunking', NULL),
  ('1766e933-00c9-b01a-4abc-8be8b535d3f4', '019d20cd-7722-776e-8fb8-f96db2895639', 'interactions_embedding_stale', NULL),
  ('17ccede5-349e-2d47-5c13-bfd66eb874dc', '019d20cd-7722-776e-8fb8-f96db2895639', 'contacts_search_tsv_tsv', NULL),
  ('183384a7-2715-850d-c1ed-6b2d39ab5fcc', '019d20cd-7722-776e-8fb8-f96db2895639', 'notes_enqueue_chunking', NULL),
  ('1cdb290a-fcf8-0d7d-9185-942d774729e1', '019d20cd-7722-776e-8fb8-f96db2895639', 'itinerary_items_embedding_stale', NULL),
  ('1da5f4ab-743c-2117-510c-4f81daaa5b39', '019d20cd-7722-776e-8fb8-f96db2895639', 'messages_enqueue_embedding', NULL),
  ('1e079c69-aeef-52d2-5ebd-454ec3f11b73', '019d20cd-7722-776e-8fb8-f96db2895639', 'conversations_enqueue_embedding', NULL),
  ('1e660ab4-f62a-c630-bea5-9e182ae81458', '019d20cd-7722-776e-8fb8-f96db2895639', 'venues_search_tsv_tsv', NULL),
  ('22931b6c-27f3-fb6b-4bf9-b04517a13c15', '019d20cd-7722-776e-8fb8-f96db2895639', 'events_search_tsv_tsv', NULL),
  ('22933d65-e923-b091-b292-c02a78b62655', '019d20cd-7722-776e-8fb8-f96db2895639', 'goals_enqueue_embedding', NULL),
  ('25316241-17a9-ed8a-45ac-82d3cd0dfc0e', '019d20cd-7722-776e-8fb8-f96db2895639', 'agents_enqueue_embedding', NULL),
  ('26aaa07f-02c5-e594-d24d-c57fe1a58639', '019d20cd-7722-776e-8fb8-f96db2895639', 'agents_embedding_stale', NULL),
  ('29eae02d-1431-2149-2335-13ebd795db14', '019d20cd-7722-776e-8fb8-f96db2895639', 'deals_embedding_stale', NULL),
  ('2ba6cdc0-8dfa-4391-d4c3-ed9c40807da3', '019d20cd-7722-776e-8fb8-f96db2895639', 'skills_enqueue_embedding', NULL),
  ('2e5b1288-d691-1c84-c5d7-e19d3e83d970', '019d20cd-7722-776e-8fb8-f96db2895639', 'tasks_embedding_stale', NULL),
  ('2e6f5fce-9cac-cf33-9c0a-8dbed041d23d', '019d20cd-7722-776e-8fb8-f96db2895639', 'runtime_states_enqueue_embedding', NULL),
  ('2fce03a7-4dbf-57a1-50b8-591fd609da25', '019d20cd-7722-776e-8fb8-f96db2895639', 'goals_enqueue_chunking', NULL),
  ('2fec540e-ae18-4ad2-4275-ced4b84d5ea5', '019d20cd-7722-776e-8fb8-f96db2895639', 'emails_embedding_stale', NULL),
  ('35759d0d-56ae-8e4e-412d-7f1239df1a67', '019d20cd-7722-776e-8fb8-f96db2895639', 'tasks_enqueue_chunking', NULL),
  ('35dc1b0c-d89b-e225-ee0c-97ef18c4673f', '019d20cd-7722-776e-8fb8-f96db2895639', 'email_threads_enqueue_embedding', NULL),
  ('382cbbd2-da3e-5c33-2a75-a13392370621', '019d20cd-7722-776e-8fb8-f96db2895639', 'runtime_states_embedding_stale', NULL),
  ('3db53f37-5182-54eb-efad-6b9f03ac0664', '019d20cd-7722-776e-8fb8-f96db2895639', 'touchpoints_enqueue_embedding', NULL),
  ('413f8277-0aaf-6858-082d-43495899a09d', '019d20cd-7722-776e-8fb8-f96db2895639', 'code_chunks_embedding_stale', NULL),
  ('50004e2c-f43c-10a2-ecd0-de57955847d4', '019d20cd-7722-776e-8fb8-f96db2895639', 'messages_enqueue_chunking', NULL),
  ('51d6adc0-8b08-393b-1780-8b7debbcd60f', '019d20cd-7722-776e-8fb8-f96db2895639', 'calendar_events_enqueue_embedding', NULL),
  ('549f8672-2f86-8620-8024-3a3cfd91ccde', '019d20cd-7722-776e-8fb8-f96db2895639', 'emails_search_tsv_tsv', NULL),
  ('55aa7949-1690-0908-cc68-980bfe7d3516', '019d20cd-7722-776e-8fb8-f96db2895639', 'habits_enqueue_chunking', NULL),
  ('577164a7-080d-bc36-cf8b-394bbdd9137d', '019d20cd-7722-776e-8fb8-f96db2895639', 'conversations_enqueue_chunking', NULL),
  ('5a360d38-ba7f-bd05-5b45-42bf5c515716', '019d20cd-7722-776e-8fb8-f96db2895639', 'contacts_enqueue_chunking', NULL),
  ('5df54692-4b84-40c0-664f-8bd623a87000', '019d20cd-7722-776e-8fb8-f96db2895639', 'events_embedding_stale', NULL),
  ('637069a9-c8b6-8a92-a1fe-9b904c412fae', '019d20cd-7722-776e-8fb8-f96db2895639', 'itinerary_items_enqueue_chunking', NULL),
  ('637d2fe6-ea3a-da8e-5e96-0bb76510c707', '019d20cd-7722-776e-8fb8-f96db2895639', 'runtime_logs_enqueue_chunking', NULL),
  ('63ec93e8-9fb4-3ef6-bdfa-a54f17260da9', '019d20cd-7722-776e-8fb8-f96db2895639', 'calendar_events_embedding_stale', NULL),
  ('641cbd18-60e1-29c6-3575-c6cceedc2abd', '019d20cd-7722-776e-8fb8-f96db2895639', 'venues_embedding_stale', NULL),
  ('64fbc7da-9b4b-533a-aec8-8e8fe28684e2', '019d20cd-7722-776e-8fb8-f96db2895639', 'places_enqueue_chunking', NULL),
  ('71eb2964-3ab1-29f4-f810-f194d216b3c1', '019d20cd-7722-776e-8fb8-f96db2895639', 'code_chunks_enqueue_embedding', NULL),
  ('745da35f-f4ec-8e79-3717-c8301e44237c', '019d20cd-7722-776e-8fb8-f96db2895639', 'companies_enqueue_embedding', NULL),
  ('75456c1e-431a-1b45-c3ed-73fa073f6329', '019d20cd-7722-776e-8fb8-f96db2895639', 'goals_embedding_stale', NULL),
  ('761b54d7-8f38-9cfb-5dca-e8f25e610f4b', '019d20cd-7722-776e-8fb8-f96db2895639', 'codebases_enqueue_embedding', NULL),
  ('76be3280-dd8e-6f6c-6228-55c91cf32a90', '019d20cd-7722-776e-8fb8-f96db2895639', 'trips_embedding_stale', NULL),
  ('79560081-d4bd-cdec-6b2b-f5c4adfa88ec', '019d20cd-7722-776e-8fb8-f96db2895639', 'habits_enqueue_embedding', NULL),
  ('798c9c41-3623-e150-7e4d-8ae948bf57eb', '019d20cd-7722-776e-8fb8-f96db2895639', 'places_enqueue_embedding', NULL),
  ('7e4ceb8d-9e13-53a0-b361-955471a18636', '019d20cd-7722-776e-8fb8-f96db2895639', 'autonomy_records_enqueue_embedding', NULL),
  ('7ee5ba7a-01fd-99f1-ba8c-4498136e6e7f', '019d20cd-7722-776e-8fb8-f96db2895639', 'memories_embedding_stale', NULL),
  ('841ca1d1-43bc-c608-fb8c-0d2ba5441b14', '019d20cd-7722-776e-8fb8-f96db2895639', 'projects_embedding_stale', NULL),
  ('861aab58-8472-2342-4737-e218ba595fc7', '019d20cd-7722-776e-8fb8-f96db2895639', 'memories_enqueue_embedding', NULL),
  ('871151c0-0a6c-157b-b5f6-10c1125b9ba5', '019d20cd-7722-776e-8fb8-f96db2895639', 'itinerary_items_enqueue_embedding', NULL),
  ('89a2ba22-f82b-f322-6723-72aafe3da5fe', '019d20cd-7722-776e-8fb8-f96db2895639', 'deals_enqueue_embedding', NULL),
  ('8ed49e15-62b4-ee64-e573-676e20a12150', '019d20cd-7722-776e-8fb8-f96db2895639', 'messages_embedding_stale', NULL),
  ('92d0211a-1da6-eae2-970b-c43b6d3b00e4', '019d20cd-7722-776e-8fb8-f96db2895639', 'agent_logs_enqueue_chunking', NULL),
  ('9337fb9c-413e-ac41-c373-e187ddc4e7ab', '019d20cd-7722-776e-8fb8-f96db2895639', 'hiking_trails_enqueue_chunking', NULL),
  ('95d9692f-5926-cb85-9d13-a2d13ddfe7c4', '019d20cd-7722-776e-8fb8-f96db2895639', 'codebases_embedding_stale', NULL),
  ('96f08a92-75e7-df4a-3b08-e9362d67ee3d', '019d20cd-7722-776e-8fb8-f96db2895639', 'notes_enqueue_embedding', NULL),
  ('96f953ef-820c-8bb5-a5c9-b3c7416c7947', '019d20cd-7722-776e-8fb8-f96db2895639', 'hiking_trails_embedding_stale', NULL),
  ('98b059c1-9e0c-0cdf-ab74-341b3fd349bc', '019d20cd-7722-776e-8fb8-f96db2895639', 'companies_search_tsv_tsv', NULL),
  ('99125363-ab69-22d0-593c-bcb52f82e359', '019d20cd-7722-776e-8fb8-f96db2895639', 'rules_embedding_stale', NULL),
  ('9d34b38e-5b4b-7211-df0a-773871a36d2b', '019d20cd-7722-776e-8fb8-f96db2895639', 'email_threads_embedding_stale', NULL),
  ('a5068b7c-f125-3a70-6d2a-81fb98fad68d', '019d20cd-7722-776e-8fb8-f96db2895639', 'emails_enqueue_chunking', NULL),
  ('a64285cc-2342-fd6b-2045-adeea7872e73', '019d20cd-7722-776e-8fb8-f96db2895639', 'touchpoints_enqueue_chunking', NULL),
  ('ae630195-55a1-5de8-6caf-e189f22ec8c7', '019d20cd-7722-776e-8fb8-f96db2895639', 'skills_enqueue_chunking', NULL),
  ('ae822216-c379-8051-38d3-0507a53823c5', '019d20cd-7722-776e-8fb8-f96db2895639', 'contacts_enqueue_embedding', NULL),
  ('afaffa18-9b93-b6dc-eefe-322cd80877f2', '019d20cd-7722-776e-8fb8-f96db2895639', 'projects_enqueue_chunking', NULL),
  ('b005edab-b8b2-4f3a-64e6-a4cab8bb6e2e', '019d20cd-7722-776e-8fb8-f96db2895639', 'trips_enqueue_chunking', NULL),
  ('b2a6b6ae-2622-d6b9-f549-c84891cd4b95', '019d20cd-7722-776e-8fb8-f96db2895639', 'habits_embedding_stale', NULL),
  ('bcfafcb5-2ec6-4649-7402-c1b485fc8084', '019d20cd-7722-776e-8fb8-f96db2895639', 'runtime_logs_enqueue_embedding', NULL),
  ('bf25faa0-8085-d31a-023b-3eed40c6dfaa', '019d20cd-7722-776e-8fb8-f96db2895639', 'notes_embedding_stale', NULL),
  ('bf88458b-9e35-3ffc-bd7d-5182a7acb976', '019d20cd-7722-776e-8fb8-f96db2895639', 'tasks_enqueue_embedding', NULL),
  ('c0c78f0b-55fe-8864-c4b5-1b3da2742e14', '019d20cd-7722-776e-8fb8-f96db2895639', 'autonomy_records_enqueue_chunking', NULL),
  ('c3bc6e29-eb57-06ae-4a8e-939576882dca', '019d20cd-7722-776e-8fb8-f96db2895639', 'runtime_states_enqueue_chunking', NULL),
  ('c65738a1-becf-101f-558b-2fa668c09766', '019d20cd-7722-776e-8fb8-f96db2895639', 'conversations_embedding_stale', NULL),
  ('c709c535-af4c-68f9-ceca-3a1ddc7f203c', '019d20cd-7722-776e-8fb8-f96db2895639', 'companies_embedding_stale', NULL),
  ('c7663441-8df7-9b0f-05a9-ce666b0a14e5', '019d20cd-7722-776e-8fb8-f96db2895639', 'projects_enqueue_embedding', NULL),
  ('cb38a7c8-260e-1dec-b309-68be8d38227c', '019d20cd-7722-776e-8fb8-f96db2895639', 'rules_enqueue_chunking', NULL),
  ('cf60fcb1-33d5-ecfa-308a-269176784c8a', '019d20cd-7722-776e-8fb8-f96db2895639', 'email_threads_enqueue_chunking', NULL),
  ('d040ec09-8b31-5b3c-aa5b-e5ecc7849f0e', '019d20cd-7722-776e-8fb8-f96db2895639', 'agents_enqueue_chunking', NULL),
  ('d61a7d87-dc80-1a42-6a4e-0dc5cbeea206', '019d20cd-7722-776e-8fb8-f96db2895639', 'touchpoints_embedding_stale', NULL),
  ('d718ef0b-e3e4-0cfe-d352-6f6cc44c4015', '019d20cd-7722-776e-8fb8-f96db2895639', 'contacts_embedding_stale', NULL),
  ('d85ae898-8756-ba29-d759-13e1db5901e3', '019d20cd-7722-776e-8fb8-f96db2895639', 'venues_enqueue_embedding', NULL),
  ('dd5472cc-2566-be54-d43c-b30a29c7948b', '019d20cd-7722-776e-8fb8-f96db2895639', 'events_enqueue_chunking', NULL),
  ('dffc441e-1c08-1394-098a-058162392161', '019d20cd-7722-776e-8fb8-f96db2895639', 'agent_logs_enqueue_embedding', NULL),
  ('e14856a7-31b9-8f91-0858-453550345282', '019d20cd-7722-776e-8fb8-f96db2895639', 'skills_embedding_stale', NULL),
  ('e2c764fb-6e2a-83cf-e67a-9bc27a1fbbd1', '019d20cd-7722-776e-8fb8-f96db2895639', 'deals_enqueue_chunking', NULL),
  ('e403201a-f29f-0985-45cc-b829297981d9', '019d20cd-7722-776e-8fb8-f96db2895639', 'codebases_enqueue_chunking', NULL),
  ('e45c33f1-6b22-febb-59bb-96e52b7092ee', '019d20cd-7722-776e-8fb8-f96db2895639', 'hiking_trails_enqueue_embedding', NULL),
  ('e5a64865-48c6-a633-4849-0f71b6c47bbf', '019d20cd-7722-776e-8fb8-f96db2895639', 'runtime_logs_embedding_stale', NULL),
  ('eacd77cb-ed08-348e-cd50-d00e8d88843b', '019d20cd-7722-776e-8fb8-f96db2895639', 'places_embedding_stale', NULL),
  ('ed964926-6389-5ac6-9a4a-c3c84d48be5c', '019d20cd-7722-776e-8fb8-f96db2895639', 'agent_logs_embedding_stale', NULL),
  ('ef7abc68-c8c4-3aba-54e5-6f4c4d8a5142', '019d20cd-7722-776e-8fb8-f96db2895639', 'trips_enqueue_embedding', NULL),
  ('f1e43970-300a-7b11-e40b-f2eb1b792c39', '019d20cd-7722-776e-8fb8-f96db2895639', 'interactions_enqueue_embedding', NULL),
  ('fb964643-5824-16e3-9b7b-8b3f0db9b73f', '019d20cd-7722-776e-8fb8-f96db2895639', 'autonomy_records_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


