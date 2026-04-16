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
  ('0b5b2037-b7b6-e008-eb35-a761ca376543', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'memories_enqueue_embedding', NULL),
  ('0d58245e-785d-02d4-74a6-ccba0ab27834', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'calendar_events_enqueue_embedding', NULL),
  ('122b7253-4b97-b2a6-cf99-061ad5d8dc65', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'agents_enqueue_embedding', NULL),
  ('19435043-fec8-9dfb-d313-e357bb25315c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'places_embedding_stale', NULL),
  ('1dfad231-3490-74c6-0f6a-300a63318017', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'goals_enqueue_embedding', NULL),
  ('1ed18c31-b060-8b9f-c0a5-3f988f4f24ba', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'expenses_enqueue_embedding', NULL),
  ('211742de-dadb-32db-77e6-25b7b9522610', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'goals_embedding_stale', NULL),
  ('27bbf6bf-ad2b-1973-f169-e4a9a04afe00', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'conversations_enqueue_embedding', NULL),
  ('2ab5bca7-d5bd-e4a4-df0d-b2b1eb4fb9b6', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'notes_enqueue_chunking', NULL),
  ('2e4294a1-98d1-0bca-2edf-df709233d170', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'memories_embedding_stale', NULL),
  ('3adab489-dd18-7bb5-0051-731f46892550', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'deals_enqueue_embedding', NULL),
  ('3cc7c869-b941-b7b8-19cb-edb91445ce31', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'tool_definitions_enqueue_embedding', NULL),
  ('41337923-031f-958d-aca7-7889dea17920', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'autonomy_records_embedding_stale', NULL),
  ('4cb833d0-8557-9d4d-1809-26e142cbca8e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'autonomy_records_enqueue_embedding', NULL),
  ('4ddad300-5375-98ef-2195-b53d11bd2779', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'contacts_enqueue_chunking', NULL),
  ('51385a88-bb68-792c-866c-48bda1e015e0', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'tasks_embedding_stale', NULL),
  ('546edfb2-8410-b9ac-69ed-8d1268712812', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'activity_logs_embedding_stale', NULL),
  ('59b17927-7941-7c53-984a-47c289bf5ccc', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'events_enqueue_embedding', NULL),
  ('5e9947a3-8813-392c-3c68-12e9fe75ec27', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'agent_logs_enqueue_embedding', NULL),
  ('5f9972de-637f-fc26-ca25-5bc985076cda', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'contacts_embedding_stale', NULL),
  ('64a2fae2-1342-c2aa-6815-eb14afcf9e27', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'runtime_states_embedding_stale', NULL),
  ('6542d8cd-62cb-88bc-696b-16f428854175', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'tool_definitions_embedding_stale', NULL),
  ('69d4ddf9-0213-c698-36f3-f5b0a2fe4ab7', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'events_search_tsv_tsv', NULL),
  ('6a3212c5-d5ca-483c-b18c-a78d8cc18164', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'tasks_enqueue_embedding', NULL),
  ('6c16ef14-533f-ba2e-64c5-e7a436e3a59c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'calendar_events_search_tsv_tsv', NULL),
  ('703fe812-b5ec-f847-10cb-83f6a3e85eed', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'contacts_search_tsv_tsv', NULL),
  ('70b8e1b9-ebd5-b870-52d6-c5b766d61551', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'notes_enqueue_embedding', NULL),
  ('7265a75a-d269-6677-3bcd-3cb7ac091d46', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'venues_enqueue_embedding', NULL),
  ('7372b85d-107b-26e9-1c44-aa73931be510', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'interactions_embedding_stale', NULL),
  ('7664bbee-9606-d466-f4aa-3c66315fae1d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'activity_logs_enqueue_embedding', NULL),
  ('7d176ad2-5688-06f9-0949-dfedb48dc6ae', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'trips_enqueue_embedding', NULL),
  ('7de391ad-da2e-f1a6-d918-2d6141a3c9a9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'runtime_states_enqueue_embedding', NULL),
  ('7e4dfd78-deba-40db-da9a-33d903d17aaa', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'runtime_logs_embedding_stale', NULL),
  ('7fc42d5b-a753-8a5b-b1cd-cf33154c7e31', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'email_threads_search_tsv_tsv', NULL),
  ('8009b521-9d83-a1f5-0c83-73d2526b7b1d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'rules_enqueue_embedding', NULL),
  ('81e7a240-c9bc-d7ec-e655-f79f04d1841e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'skills_embedding_stale', NULL),
  ('827e3037-00bd-1de3-17e7-7c5a87c95908', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'email_threads_embedding_stale', NULL),
  ('8384fa9e-694e-e356-7f2f-74e470631843', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'prompts_enqueue_embedding', NULL),
  ('841a42f8-01c3-04ec-289a-58d03ed95282', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'messages_embedding_stale', NULL),
  ('863f437a-b9c8-5228-029f-f353e8ad6f9a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'agent_logs_embedding_stale', NULL),
  ('87931d88-aa68-e176-1153-0e5b55810586', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'emails_search_tsv_tsv', NULL),
  ('8cda6868-0df4-b203-dae0-23e9aca6474e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'companies_embedding_stale', NULL),
  ('90b91f59-afab-2fd8-9aad-7c980f4457f5', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'companies_enqueue_embedding', NULL),
  ('92048143-39a7-1d53-0f52-8ba80529e1cc', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'agents_embedding_stale', NULL),
  ('93510d4d-4788-05a9-b54e-a802d9f1d70e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'interactions_enqueue_embedding', NULL),
  ('94121926-b5e2-136e-ca6d-f19fc9383b62', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'projects_enqueue_embedding', NULL),
  ('9557bd76-60b8-8d36-4480-0a7102596e17', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'projects_embedding_stale', NULL),
  ('9d9b56ee-bd23-b3a2-d04c-6fb23dd633ae', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'notes_embedding_stale', NULL),
  ('a074886f-265a-abde-9589-c0597a51df0a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'touchpoints_embedding_stale', NULL),
  ('a4bad90f-ad93-3549-a59f-574858800a46', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'emails_embedding_stale', NULL),
  ('a545ef2b-0dc0-e783-0ce0-7b0240bf01a4', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'venues_search_tsv_tsv', NULL),
  ('a5cab383-0376-9228-879b-06eb48c6ab7e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'places_enqueue_embedding', NULL),
  ('a8d881be-64f8-35d1-ca0c-4664ab7922a6', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'expenses_embedding_stale', NULL),
  ('a941d952-8aa5-a315-236f-0584e8645320', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'calendar_events_embedding_stale', NULL),
  ('aa047451-2d38-1c72-9df9-f1f933efc8e5', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'email_threads_enqueue_embedding', NULL),
  ('ad935191-50c6-7d40-3def-1a373ea80716', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'skills_enqueue_embedding', NULL),
  ('adee8387-d4ed-56f3-4206-c27dc2923d81', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'prompts_embedding_stale', NULL),
  ('b100d31d-25f8-4755-87a4-92835ecad0e4', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'conversations_embedding_stale', NULL),
  ('b139f8c7-efe8-3213-a71d-edced08bc015', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'contacts_enqueue_embedding', NULL),
  ('b34b3b41-a2b8-2309-4617-29a99eda9268', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'runtime_logs_enqueue_embedding', NULL),
  ('ccd121b4-7bd4-691a-8d48-a5b4512e92ba', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'rules_embedding_stale', NULL),
  ('d058fc22-e4a1-ba48-d707-b443e1f60d48', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'deals_embedding_stale', NULL),
  ('d3c96379-7882-f7a4-b598-720a71ea5c4a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'companies_search_tsv_tsv', NULL),
  ('d413484d-26c9-5c9b-baf3-1efac7786f08', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'events_embedding_stale', NULL),
  ('d7976927-b50f-cf35-1e37-c33ba404c92e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'touchpoints_enqueue_embedding', NULL),
  ('e54f5555-f1d3-0372-9657-fbd71ea9ca26', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'venues_embedding_stale', NULL),
  ('e94ac098-1d93-c176-6c3f-b79feff3136b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'trips_embedding_stale', NULL),
  ('f1f92438-b804-9e84-6cbd-5b6d7f537808', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'messages_enqueue_embedding', NULL),
  ('f8cdec1b-58a9-c0fd-2ce5-fbb6328baa73', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'emails_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


