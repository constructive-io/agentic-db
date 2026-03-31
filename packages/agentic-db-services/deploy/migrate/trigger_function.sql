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
  ('00d1c365-70e2-0993-ad0b-d93bbe17fcc7', '019d416f-3253-7543-a058-30ea5a6b7e37', 'tool_definitions_enqueue_chunking', NULL),
  ('01286dfe-20c8-c48c-09d0-768ae14c69ab', '019d416f-3253-7543-a058-30ea5a6b7e37', 'conversations_embedding_stale', NULL),
  ('01361619-6b31-486e-a800-1311e7c68956', '019d416f-3253-7543-a058-30ea5a6b7e37', 'interactions_enqueue_embedding', NULL),
  ('019d416f-3a14-72c3-87d9-3a4b08dd3931', '019d416f-3253-7543-a058-30ea5a6b7e37', 'users_search_tsv_tsv', NULL),
  ('019d416f-e3aa-7249-b9be-417f7dfc97c5', '019d416f-3253-7543-a058-30ea5a6b7e37', 'encrypted_secrets_hash', NULL),
  ('022ace78-ad45-2868-312e-6dc00412c773', '019d416f-3253-7543-a058-30ea5a6b7e37', 'agents_embedding_stale', NULL),
  ('03481b88-5777-9249-e7f5-27c2ed59efc3', '019d416f-3253-7543-a058-30ea5a6b7e37', 'runtime_logs_enqueue_chunking', NULL),
  ('0392de9f-9a18-e3f5-7922-f0caabe060e5', '019d416f-3253-7543-a058-30ea5a6b7e37', 'deals_embedding_stale', NULL),
  ('04b18e84-38d6-dc73-2305-d8281d16a8cf', '019d416f-3253-7543-a058-30ea5a6b7e37', 'touchpoints_enqueue_chunking', NULL),
  ('09b6ee61-6016-6d8b-c24a-907878757d33', '019d416f-3253-7543-a058-30ea5a6b7e37', 'calendar_events_enqueue_embedding', NULL),
  ('0a18436d-9d74-bf17-d4fb-8984c12802f8', '019d416f-3253-7543-a058-30ea5a6b7e37', 'places_enqueue_chunking', NULL),
  ('0eabea88-cc39-6254-a857-bf28f39a3e84', '019d416f-3253-7543-a058-30ea5a6b7e37', 'calendar_events_search_tsv_tsv', NULL),
  ('12188835-c1fd-a462-55ec-8faea21696a2', '019d416f-3253-7543-a058-30ea5a6b7e37', 'emails_enqueue_chunking', NULL),
  ('13097dcf-b9c6-805f-1dae-ba4e3f26f732', '019d416f-3253-7543-a058-30ea5a6b7e37', 'agent_logs_embedding_stale', NULL),
  ('1bd760e2-b212-0561-c8d1-2e2c341f6534', '019d416f-3253-7543-a058-30ea5a6b7e37', 'interactions_enqueue_chunking', NULL),
  ('1d8e90ac-dd94-2b79-57be-ee1f97edf20c', '019d416f-3253-7543-a058-30ea5a6b7e37', 'conversations_enqueue_embedding', NULL),
  ('1f3365ae-c551-d995-aeba-e81f8e618676', '019d416f-3253-7543-a058-30ea5a6b7e37', 'autonomy_records_enqueue_chunking', NULL),
  ('202d5645-c955-5e50-e34e-156a7a323020', '019d416f-3253-7543-a058-30ea5a6b7e37', 'tool_definitions_enqueue_embedding', NULL),
  ('2839d5dc-f507-4dc8-fee4-f0682f16d586', '019d416f-3253-7543-a058-30ea5a6b7e37', 'hiking_trails_embedding_stale', NULL),
  ('28b6bb37-a544-ef1a-1abc-0a4032d42537', '019d416f-3253-7543-a058-30ea5a6b7e37', 'autonomy_records_enqueue_embedding', NULL),
  ('2920879b-8444-ae5c-f0d9-4aa467622a5b', '019d416f-3253-7543-a058-30ea5a6b7e37', 'expenses_enqueue_chunking', NULL),
  ('2ae7f919-b5cb-d0cc-d7c2-432cc57ad72d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'contacts_enqueue_embedding', NULL),
  ('2d73756c-a1c9-8bc2-d4d2-888490daf87f', '019d416f-3253-7543-a058-30ea5a6b7e37', 'rules_embedding_stale', NULL),
  ('2d8e82d0-e5c7-c487-8406-55891024950f', '019d416f-3253-7543-a058-30ea5a6b7e37', 'tasks_enqueue_chunking', NULL),
  ('2e369718-1949-f5ae-a573-14537e35229d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'email_threads_enqueue_embedding', NULL),
  ('2eec5e66-96f7-6c37-f7c5-9d2b594ffa33', '019d416f-3253-7543-a058-30ea5a6b7e37', 'places_embedding_stale', NULL),
  ('2faa2eda-31a9-a3cc-43d4-4ee70cab7b0e', '019d416f-3253-7543-a058-30ea5a6b7e37', 'trips_embedding_stale', NULL),
  ('39abad13-3064-539d-6cca-5c6a6c9786e5', '019d416f-3253-7543-a058-30ea5a6b7e37', 'memories_enqueue_chunking', NULL),
  ('442dbb55-cd85-dd83-67c1-4b869b7b8d63', '019d416f-3253-7543-a058-30ea5a6b7e37', 'autonomy_records_embedding_stale', NULL),
  ('4becb575-dbd8-fe4c-f6bb-fdb5dc050f9b', '019d416f-3253-7543-a058-30ea5a6b7e37', 'emails_embedding_stale', NULL),
  ('4ea11244-e334-a234-3f30-aea9b9ca70ac', '019d416f-3253-7543-a058-30ea5a6b7e37', 'projects_enqueue_embedding', NULL),
  ('4f789544-ffbd-d18a-b81a-2a0bea51a27b', '019d416f-3253-7543-a058-30ea5a6b7e37', 'touchpoints_enqueue_embedding', NULL),
  ('4fb07a3e-2795-82e4-c418-f9d40ef1385b', '019d416f-3253-7543-a058-30ea5a6b7e37', 'goals_enqueue_embedding', NULL),
  ('50ef6fdb-acf9-f16d-a28b-977e2c563073', '019d416f-3253-7543-a058-30ea5a6b7e37', 'projects_embedding_stale', NULL),
  ('525cc8a9-720b-ac32-5274-98e12bf69009', '019d416f-3253-7543-a058-30ea5a6b7e37', 'tasks_enqueue_embedding', NULL),
  ('53aba7be-34a7-6cb8-ff06-66452d666de0', '019d416f-3253-7543-a058-30ea5a6b7e37', 'goals_embedding_stale', NULL),
  ('591e41b3-ec12-9195-5298-5c3fe349b99c', '019d416f-3253-7543-a058-30ea5a6b7e37', 'conversations_enqueue_chunking', NULL),
  ('661fefad-8ba0-14cf-e04e-0aef32a5f4c8', '019d416f-3253-7543-a058-30ea5a6b7e37', 'codebases_enqueue_embedding', NULL),
  ('694bd715-1573-7139-791c-a33c278a64c7', '019d416f-3253-7543-a058-30ea5a6b7e37', 'venues_enqueue_embedding', NULL),
  ('69ab004d-29c3-3379-dc9c-11bbc3871594', '019d416f-3253-7543-a058-30ea5a6b7e37', 'tasks_embedding_stale', NULL),
  ('69fffe8c-d019-d507-d69b-8fe5b6a29096', '019d416f-3253-7543-a058-30ea5a6b7e37', 'calendar_events_embedding_stale', NULL),
  ('6b1b79f3-820b-5040-7da9-f596e1409c6d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'prompts_enqueue_chunking', NULL),
  ('6c048ab4-200d-03f4-20c1-8933f6da51f7', '019d416f-3253-7543-a058-30ea5a6b7e37', 'notes_enqueue_embedding', NULL),
  ('6c5efdb0-b27f-7a94-454f-e7f0669ad2f8', '019d416f-3253-7543-a058-30ea5a6b7e37', 'venues_search_tsv_tsv', NULL),
  ('704007af-c0f8-cc1a-72ee-be1a90783fee', '019d416f-3253-7543-a058-30ea5a6b7e37', 'events_embedding_stale', NULL),
  ('704c5106-8096-ac00-08ed-fc08e32e59ab', '019d416f-3253-7543-a058-30ea5a6b7e37', 'companies_embedding_stale', NULL),
  ('7236bfd3-14a1-a159-54e5-d88de84623f2', '019d416f-3253-7543-a058-30ea5a6b7e37', 'venues_enqueue_chunking', NULL),
  ('74685c09-6df6-5317-f36b-49559f7389fd', '019d416f-3253-7543-a058-30ea5a6b7e37', 'memories_enqueue_embedding', NULL),
  ('74982ab9-358b-a915-8879-4173fde3c018', '019d416f-3253-7543-a058-30ea5a6b7e37', 'calendar_events_enqueue_chunking', NULL),
  ('7543ba4a-deae-6523-816b-e0a4011713f2', '019d416f-3253-7543-a058-30ea5a6b7e37', 'skills_enqueue_embedding', NULL),
  ('7960555f-bccc-5338-0f64-cf1c96f04574', '019d416f-3253-7543-a058-30ea5a6b7e37', 'skills_embedding_stale', NULL),
  ('7a1ab71f-3e70-3f88-be26-e407ce9b8844', '019d416f-3253-7543-a058-30ea5a6b7e37', 'prompts_embedding_stale', NULL),
  ('7a80a023-7155-ed82-917a-332c0448ab30', '019d416f-3253-7543-a058-30ea5a6b7e37', 'events_enqueue_chunking', NULL),
  ('7ddcd943-10f5-848a-f3df-2c99cc362eaa', '019d416f-3253-7543-a058-30ea5a6b7e37', 'deals_enqueue_embedding', NULL),
  ('7ec980d8-159f-9028-760a-6c49afec9151', '019d416f-3253-7543-a058-30ea5a6b7e37', 'messages_enqueue_chunking', NULL),
  ('81de88d0-a208-fb21-b087-60f79e90f628', '019d416f-3253-7543-a058-30ea5a6b7e37', 'companies_enqueue_chunking', NULL),
  ('83d212f3-7b47-8321-68d6-96bb506b94fd', '019d416f-3253-7543-a058-30ea5a6b7e37', 'activity_logs_embedding_stale', NULL),
  ('8886c63e-3082-e4ff-ba7c-d86e7093b65d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'companies_search_tsv_tsv', NULL),
  ('89378b55-bc24-9774-9b3d-41a8ca0386b4', '019d416f-3253-7543-a058-30ea5a6b7e37', 'emails_enqueue_embedding', NULL),
  ('8a2b79fb-447a-0924-2320-74f65b39cb63', '019d416f-3253-7543-a058-30ea5a6b7e37', 'expenses_enqueue_embedding', NULL),
  ('8a65e0ac-a2cd-c28c-3436-602048ca9edd', '019d416f-3253-7543-a058-30ea5a6b7e37', 'emails_search_tsv_tsv', NULL),
  ('8bba5961-c56e-8430-e797-c61c1ef0e2cd', '019d416f-3253-7543-a058-30ea5a6b7e37', 'events_search_tsv_tsv', NULL),
  ('8cf5daad-3ef2-cf41-85db-543be8e264fc', '019d416f-3253-7543-a058-30ea5a6b7e37', 'activity_logs_enqueue_chunking', NULL),
  ('905a95dd-7ce4-969e-205e-75651ef15c91', '019d416f-3253-7543-a058-30ea5a6b7e37', 'skills_enqueue_chunking', NULL),
  ('98554415-17d0-8163-cf27-7f9f1ae44f89', '019d416f-3253-7543-a058-30ea5a6b7e37', 'venues_embedding_stale', NULL),
  ('99ae61c7-5525-19da-e92d-664dbdc4dd1e', '019d416f-3253-7543-a058-30ea5a6b7e37', 'events_enqueue_embedding', NULL),
  ('99b33eb9-4cb6-e9f0-beb7-618b8b72fe0f', '019d416f-3253-7543-a058-30ea5a6b7e37', 'codebases_enqueue_chunking', NULL),
  ('9b5fada3-76af-bc23-9163-172436669cc8', '019d416f-3253-7543-a058-30ea5a6b7e37', 'code_chunks_embedding_stale', NULL),
  ('9e8f9138-270f-6fcd-2972-499bb5ea85bb', '019d416f-3253-7543-a058-30ea5a6b7e37', 'expenses_embedding_stale', NULL),
  ('a01e763e-41c2-8b9d-5da0-fdf8912ce48c', '019d416f-3253-7543-a058-30ea5a6b7e37', 'agent_logs_enqueue_embedding', NULL),
  ('a09208e9-4bc8-f163-6406-3826a81e9aec', '019d416f-3253-7543-a058-30ea5a6b7e37', 'runtime_logs_enqueue_embedding', NULL),
  ('a2a50d6d-8458-1bbb-8b8d-20808d52d88a', '019d416f-3253-7543-a058-30ea5a6b7e37', 'notes_enqueue_chunking', NULL),
  ('a2da5869-8b78-52c1-e73f-c3e5acb6d1d8', '019d416f-3253-7543-a058-30ea5a6b7e37', 'email_threads_search_tsv_tsv', NULL),
  ('a684c723-a59a-94a6-5beb-f33767096902', '019d416f-3253-7543-a058-30ea5a6b7e37', 'rules_enqueue_chunking', NULL),
  ('a74debeb-9fbe-50be-1542-69cb9bf4eba3', '019d416f-3253-7543-a058-30ea5a6b7e37', 'messages_embedding_stale', NULL),
  ('aae6431a-f5b5-b43e-bd48-2daacc660e96', '019d416f-3253-7543-a058-30ea5a6b7e37', 'hiking_trails_enqueue_chunking', NULL),
  ('ab9be504-cc83-13c3-50b6-dc6c8298424d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'interactions_embedding_stale', NULL),
  ('aba0cc87-fa00-f9f1-fec4-d8ceb4dd4a9e', '019d416f-3253-7543-a058-30ea5a6b7e37', 'code_chunks_enqueue_embedding', NULL),
  ('bb42eeec-531d-48f8-f0e3-6f48bfcbff5b', '019d416f-3253-7543-a058-30ea5a6b7e37', 'activity_logs_enqueue_embedding', NULL),
  ('bd296f27-ef17-16e9-9efc-79a20fcfb7ad', '019d416f-3253-7543-a058-30ea5a6b7e37', 'runtime_states_enqueue_embedding', NULL),
  ('be2b5261-a208-b62b-f303-2231c99a1065', '019d416f-3253-7543-a058-30ea5a6b7e37', 'places_enqueue_embedding', NULL),
  ('bfa2cf72-8146-7293-aa5c-7a418a92e7c3', '019d416f-3253-7543-a058-30ea5a6b7e37', 'hiking_trails_enqueue_embedding', NULL),
  ('c3f69f12-a5b5-b12e-fada-329ee5a64a73', '019d416f-3253-7543-a058-30ea5a6b7e37', 'trips_enqueue_chunking', NULL),
  ('c487ff32-3318-6a7b-6597-a21e3953a8c3', '019d416f-3253-7543-a058-30ea5a6b7e37', 'trips_enqueue_embedding', NULL),
  ('c6cd3c25-e4c3-e399-3956-1fb17cb55cca', '019d416f-3253-7543-a058-30ea5a6b7e37', 'agents_enqueue_chunking', NULL),
  ('cc6b5933-921d-3f75-ce21-fea096444e51', '019d416f-3253-7543-a058-30ea5a6b7e37', 'contacts_embedding_stale', NULL),
  ('cf2bb9e1-6cd5-372b-3e96-632fa544b4f2', '019d416f-3253-7543-a058-30ea5a6b7e37', 'contacts_search_tsv_tsv', NULL),
  ('d1e45a52-c49b-49d2-2a30-1715f5b34b6a', '019d416f-3253-7543-a058-30ea5a6b7e37', 'email_threads_embedding_stale', NULL),
  ('d3ff0880-43c3-240e-691b-6445fdecb134', '019d416f-3253-7543-a058-30ea5a6b7e37', 'rules_enqueue_embedding', NULL),
  ('d41e7cd4-0864-2597-f887-1c20686e32e6', '019d416f-3253-7543-a058-30ea5a6b7e37', 'messages_enqueue_embedding', NULL),
  ('d54d5319-aa36-cb75-6a05-7b2096f3d615', '019d416f-3253-7543-a058-30ea5a6b7e37', 'goals_enqueue_chunking', NULL),
  ('dce61668-3d39-9af3-8ebd-1dbaa4222c7a', '019d416f-3253-7543-a058-30ea5a6b7e37', 'projects_enqueue_chunking', NULL),
  ('dd0c1b72-656b-8537-42f0-9181fb257f81', '019d416f-3253-7543-a058-30ea5a6b7e37', 'agents_enqueue_embedding', NULL),
  ('e731133c-bf78-3e96-0205-0370a4c66de7', '019d416f-3253-7543-a058-30ea5a6b7e37', 'companies_enqueue_embedding', NULL),
  ('e9f8c855-90c8-1a51-23a5-2de938f611d2', '019d416f-3253-7543-a058-30ea5a6b7e37', 'deals_enqueue_chunking', NULL),
  ('ea0aaaff-4cec-893b-1984-176b746d8664', '019d416f-3253-7543-a058-30ea5a6b7e37', 'tool_definitions_embedding_stale', NULL),
  ('eaff64b9-b597-2287-6c97-77cfb3162dc5', '019d416f-3253-7543-a058-30ea5a6b7e37', 'email_threads_enqueue_chunking', NULL),
  ('ec8b3b0e-2026-47a4-62d8-b988f0bc0153', '019d416f-3253-7543-a058-30ea5a6b7e37', 'runtime_states_enqueue_chunking', NULL),
  ('ef1918d2-3aba-71f4-bf0c-526cad1d3cfe', '019d416f-3253-7543-a058-30ea5a6b7e37', 'memories_embedding_stale', NULL),
  ('ef40dc13-ef9c-fba7-883b-6cc1c28372f8', '019d416f-3253-7543-a058-30ea5a6b7e37', 'runtime_logs_embedding_stale', NULL),
  ('f1226fbc-f668-f0d7-4f16-91031e8bd46a', '019d416f-3253-7543-a058-30ea5a6b7e37', 'runtime_states_embedding_stale', NULL),
  ('f17fd1c4-7de6-f61c-4c8f-a80e4213bd74', '019d416f-3253-7543-a058-30ea5a6b7e37', 'notes_embedding_stale', NULL),
  ('f1a8f81e-5141-0f3b-d7a0-81dadbe63e8c', '019d416f-3253-7543-a058-30ea5a6b7e37', 'prompts_enqueue_embedding', NULL),
  ('f55ecf3d-4ff0-f1c1-a7bd-1859103c94e2', '019d416f-3253-7543-a058-30ea5a6b7e37', 'contacts_enqueue_chunking', NULL),
  ('f92f381e-9449-a4ee-c57b-c9fe67a249db', '019d416f-3253-7543-a058-30ea5a6b7e37', 'touchpoints_embedding_stale', NULL),
  ('fb36467d-2f50-5677-aaaf-54e7df3eeb7f', '019d416f-3253-7543-a058-30ea5a6b7e37', 'agent_logs_enqueue_chunking', NULL),
  ('fff7c441-0b2e-b96a-0c0d-827945edaffe', '019d416f-3253-7543-a058-30ea5a6b7e37', 'codebases_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


