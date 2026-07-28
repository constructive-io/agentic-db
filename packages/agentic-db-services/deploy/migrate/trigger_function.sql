-- Deploy: migrate/trigger_function
-- made with <3 @ constructive.io

-- requires: migrate/schema


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
  ('012f2a53-82f5-fcac-c48a-7dbc5c11b652', '019fa679-9064-7be8-b12a-f974608356ce', 'rules_embedding_stale', NULL),
  ('021594fa-f906-059a-08e7-8b8d55d7d6ce', '019fa679-9064-7be8-b12a-f974608356ce', 'projects_embedding_stale', NULL),
  ('037f8157-8b83-c89e-0902-c72d7e9a2cf4', '019fa679-9064-7be8-b12a-f974608356ce', 'contacts_search_tsv_tsv', NULL),
  ('04b24304-b402-cf08-a7cb-545263594d41', '019fa679-9064-7be8-b12a-f974608356ce', 'venues_embedding_auto_updated_at', NULL),
  ('067bde30-a684-f4c8-5c9e-e30e1ac273d2', '019fa679-9064-7be8-b12a-f974608356ce', 'activity_logs_embedding_stale', NULL),
  ('06e62190-b22d-0e59-8210-7c8c77c52a63', '019fa679-9064-7be8-b12a-f974608356ce', 'contacts_embedding_auto_updated_at', NULL),
  ('0825c09e-c4b4-7810-71b3-65b518bfcb25', '019fa679-9064-7be8-b12a-f974608356ce', 'messages_enqueue_embedding', NULL),
  ('096458e5-9b66-3041-f7b0-6a0d8a7aca76', '019fa679-9064-7be8-b12a-f974608356ce', 'activity_logs_enqueue_embedding', NULL),
  ('09d0dd2a-3fb3-e8c7-ca9e-250b4503a8c3', '019fa679-9064-7be8-b12a-f974608356ce', 'trips_embedding_stale', NULL),
  ('0ba20db4-8148-b9a7-ce13-109f98b913bd', '019fa679-9064-7be8-b12a-f974608356ce', 'events_embedding_stale', NULL),
  ('0f8560df-cd40-4b11-8731-57c7d7eb3597', '019fa679-9064-7be8-b12a-f974608356ce', 'emails_embedding_auto_updated_at', NULL),
  ('0f9e18c1-6c38-dd68-9b16-ca1147805e72', '019fa679-9064-7be8-b12a-f974608356ce', 'trips_enqueue_embedding', NULL),
  ('10f60537-b06d-076e-6e78-8b5aca535b78', '019fa679-9064-7be8-b12a-f974608356ce', 'calendar_events_embedding_stale', NULL),
  ('15a88a4c-ee96-ad75-b0ab-7b6474a5612d', '019fa679-9064-7be8-b12a-f974608356ce', 'conversations_embedding_auto_updated_at', NULL),
  ('16c020ce-00ad-6880-0c6c-7bf7c16f9db0', '019fa679-9064-7be8-b12a-f974608356ce', 'events_enqueue_embedding', NULL),
  ('16d834b2-a8ba-0c8d-99cc-202a6822b50f', '019fa679-9064-7be8-b12a-f974608356ce', 'venues_enqueue_embedding', NULL),
  ('1b2dae3b-b9bf-f608-d5f9-9b6a157f9e1a', '019fa679-9064-7be8-b12a-f974608356ce', 'tasks_enqueue_embedding', NULL),
  ('1b56648a-b898-2d67-1965-74853bb10ba9', '019fa679-9064-7be8-b12a-f974608356ce', 'agent_logs_embedding_stale', NULL),
  ('1cdcbe2b-f753-9a6d-2276-9b0dd107ac11', '019fa679-9064-7be8-b12a-f974608356ce', 'activity_logs_embedding_auto_updated_at', NULL),
  ('1daf1a99-23ef-1182-05e5-382c38c36713', '019fa679-9064-7be8-b12a-f974608356ce', 'conversations_enqueue_embedding', NULL),
  ('1fa5b42a-b5c4-7c67-840d-98a47053fb83', '019fa679-9064-7be8-b12a-f974608356ce', 'runtime_logs_embedding_auto_updated_at', NULL),
  ('1fdb81ff-a2ce-b0e5-b39a-3caa4f6c5a3a', '019fa679-9064-7be8-b12a-f974608356ce', 'memories_embedding_stale', NULL),
  ('20b3a7f8-bea2-c8e4-fb5e-cb4a2d499edd', '019fa679-9064-7be8-b12a-f974608356ce', 'memories_embedding_auto_updated_at', NULL),
  ('21ad352b-340a-6ce5-6f6e-3f0af021ed1a', '019fa679-9064-7be8-b12a-f974608356ce', 'contacts_enqueue_chunking', NULL),
  ('2232b599-1be2-ef3f-acde-48d97da4a32e', '019fa679-9064-7be8-b12a-f974608356ce', 'documents_enqueue_embedding', NULL),
  ('2556eaa1-e27b-e1c8-96ea-71909aae4f6d', '019fa679-9064-7be8-b12a-f974608356ce', 'projects_embedding_auto_updated_at', NULL),
  ('294a4ea3-c647-0bbc-ee2b-a6a724de80a2', '019fa679-9064-7be8-b12a-f974608356ce', 'autonomy_records_enqueue_embedding', NULL),
  ('2a2c6b47-1580-ec42-3527-1ec0f4c159c6', '019fa679-9064-7be8-b12a-f974608356ce', 'email_threads_embedding_auto_updated_at', NULL),
  ('2abfba71-f385-7b41-53de-92927b1a6b11', '019fa679-9064-7be8-b12a-f974608356ce', 'calendar_events_enqueue_embedding', NULL),
  ('2b3a693e-7827-8a48-face-090543e0c0d4', '019fa679-9064-7be8-b12a-f974608356ce', 'expenses_embedding_auto_updated_at', NULL),
  ('2e6427e6-c459-ce89-c2a0-88e7ca9f354e', '019fa679-9064-7be8-b12a-f974608356ce', 'venues_search_tsv_tsv', NULL),
  ('2fa8a1b7-1d8c-d5e9-14bd-2d9aab996977', '019fa679-9064-7be8-b12a-f974608356ce', 'interactions_enqueue_embedding', NULL),
  ('30224c83-b02a-c946-1299-5643b038425b', '019fa679-9064-7be8-b12a-f974608356ce', 'skills_embedding_auto_updated_at', NULL),
  ('32dd7962-54a8-3fbc-238a-ddd49eb523a5', '019fa679-9064-7be8-b12a-f974608356ce', 'deals_embedding_stale', NULL),
  ('330255ec-7d8e-78a1-da38-68541eddb273', '019fa679-9064-7be8-b12a-f974608356ce', 'places_embedding_stale', NULL),
  ('382c2de0-993d-83a7-45b0-fac05d7cb569', '019fa679-9064-7be8-b12a-f974608356ce', 'companies_enqueue_embedding', NULL),
  ('38df7af7-3c66-f972-bc0e-48a81c664e9a', '019fa679-9064-7be8-b12a-f974608356ce', 'prompts_enqueue_embedding', NULL),
  ('390f65ee-4a1c-c753-6d2f-5ae44db6b88a', '019fa679-9064-7be8-b12a-f974608356ce', 'tasks_embedding_stale', NULL),
  ('3a53f57f-2529-94bf-08b3-a8908ba5a053', '019fa679-9064-7be8-b12a-f974608356ce', 'events_search_tsv_tsv', NULL),
  ('3f94fa3f-84e7-e431-38b9-d451c6b19f04', '019fa679-9064-7be8-b12a-f974608356ce', 'goals_embedding_auto_updated_at', NULL),
  ('410bfd04-d441-6986-16b1-cdb97454f152', '019fa679-9064-7be8-b12a-f974608356ce', 'deals_embedding_auto_updated_at', NULL),
  ('42198a1d-8bef-14e0-7631-10b16b8e96cb', '019fa679-9064-7be8-b12a-f974608356ce', 'contact_links_embedding_auto_updated_at', NULL),
  ('442f689f-b6f6-811d-6ec7-14da7f34a581', '019fa679-9064-7be8-b12a-f974608356ce', 'expenses_enqueue_embedding', NULL),
  ('46ff00ec-1126-a663-5515-cb63cd96f17f', '019fa679-9064-7be8-b12a-f974608356ce', 'interactions_embedding_stale', NULL),
  ('47751f68-6ed8-eab5-1ea0-c76b0b40a0fa', '019fa679-9064-7be8-b12a-f974608356ce', 'runtime_logs_enqueue_embedding', NULL),
  ('4b5c415f-9ba0-a8c2-69dd-4bb7c9013e77', '019fa679-9064-7be8-b12a-f974608356ce', 'agent_logs_embedding_auto_updated_at', NULL),
  ('4dc1acd8-8631-8757-3a15-150c59cdde36', '019fa679-9064-7be8-b12a-f974608356ce', 'interactions_embedding_auto_updated_at', NULL),
  ('4e0cd7d6-a72e-dbe0-d1d9-e389f8364113', '019fa679-9064-7be8-b12a-f974608356ce', 'runtime_states_enqueue_embedding', NULL),
  ('4f18bc9b-b065-c4f0-ab4b-a32cc1818142', '019fa679-9064-7be8-b12a-f974608356ce', 'prompts_embedding_auto_updated_at', NULL),
  ('4fb06187-004f-bf19-df31-94edeffbca65', '019fa679-9064-7be8-b12a-f974608356ce', 'emails_search_tsv_tsv', NULL),
  ('5115b586-961b-d6ae-47fc-615f677d6311', '019fa679-9064-7be8-b12a-f974608356ce', 'calendar_events_embedding_auto_updated_at', NULL),
  ('5601f471-c576-09f1-1ea2-26ae1a73376c', '019fa679-9064-7be8-b12a-f974608356ce', 'notes_embedding_auto_updated_at', NULL),
  ('563836ee-13bd-01d3-8faf-010d1ca14317', '019fa679-9064-7be8-b12a-f974608356ce', 'agents_embedding_auto_updated_at', NULL),
  ('57283d57-8db9-0413-59f5-113dd773f674', '019fa679-9064-7be8-b12a-f974608356ce', 'contacts_chunks_search_tsv', NULL),
  ('59c4ead2-f34d-8702-d68a-5dc9b093fc5e', '019fa679-9064-7be8-b12a-f974608356ce', 'notes_embedding_stale', NULL),
  ('5c78ffd8-07f2-74ba-2a0f-8f4452f962f6', '019fa679-9064-7be8-b12a-f974608356ce', 'contacts_embedding_stale', NULL),
  ('61bf2d63-ce3e-a039-3d46-bfb089b3da70', '019fa679-9064-7be8-b12a-f974608356ce', 'skills_embedding_stale', NULL),
  ('654d2171-b163-b5c1-b265-3bdcde80ba19', '019fa679-9064-7be8-b12a-f974608356ce', 'agent_logs_enqueue_embedding', NULL),
  ('65dc881a-c599-bcb4-1c98-f7e086ea2663', '019fa679-9064-7be8-b12a-f974608356ce', 'tasks_embedding_auto_updated_at', NULL),
  ('6d4ec623-0548-1c0b-f8fd-c6c36ffc4be9', '019fa679-9064-7be8-b12a-f974608356ce', 'tool_definitions_enqueue_embedding', NULL),
  ('701a6ef2-3ad6-0e7b-64b0-2d53def47740', '019fa679-9064-7be8-b12a-f974608356ce', 'companies_search_tsv_tsv', NULL),
  ('703358c1-ba83-1bdf-f7d6-882a2edbda81', '019fa679-9064-7be8-b12a-f974608356ce', 'rules_trigger_concept_embedding_auto_updated_at', NULL),
  ('7d3ea77a-eef8-fab7-64d4-a0a682734566', '019fa679-9064-7be8-b12a-f974608356ce', 'tool_definitions_embedding_auto_updated_at', NULL),
  ('7e0e072d-748d-99b6-cffe-e482cec1a9ff', '019fa679-9064-7be8-b12a-f974608356ce', 'emails_embedding_stale', NULL),
  ('82d38aa2-b072-928d-63bb-df2b3f138c0a', '019fa679-9064-7be8-b12a-f974608356ce', 'memories_enqueue_embedding', NULL),
  ('835277ee-bf75-3c19-1eda-47c53327adb1', '019fa679-9064-7be8-b12a-f974608356ce', 'skills_intent_trigger_embedding_auto_updated_at', NULL),
  ('8619df84-1776-1aaf-b652-37f1b66f8e9c', '019fa679-9064-7be8-b12a-f974608356ce', 'autonomy_records_embedding_stale', NULL),
  ('87bb8591-5549-aae7-86e7-54b8343e7937', '019fa679-9064-7be8-b12a-f974608356ce', 'expenses_embedding_stale', NULL),
  ('87e8bc2f-839f-da66-8472-1a4631260d2e', '019fa679-9064-7be8-b12a-f974608356ce', 'touchpoints_embedding_auto_updated_at', NULL),
  ('8df2b6e2-6408-b8a0-a476-5e9d52b1b5d7', '019fa679-9064-7be8-b12a-f974608356ce', 'notes_enqueue_chunking', NULL),
  ('8e6bff14-ba78-d3d5-0c37-8471e87a4e7c', '019fa679-9064-7be8-b12a-f974608356ce', 'autonomy_records_embedding_auto_updated_at', NULL),
  ('985c4459-4a28-73ff-9289-aec342aa4f80', '019fa679-9064-7be8-b12a-f974608356ce', 'venues_embedding_stale', NULL),
  ('9c810edd-d0e3-339c-5b4c-8b4451972b5a', '019fa679-9064-7be8-b12a-f974608356ce', 'venue_links_embedding_auto_updated_at', NULL),
  ('9cfc9b39-3b2c-e016-e1de-50553e727d22', '019fa679-9064-7be8-b12a-f974608356ce', 'trips_embedding_auto_updated_at', NULL),
  ('9d828c2d-b983-6e24-1dc3-2174dbf89962', '019fa679-9064-7be8-b12a-f974608356ce', 'deals_enqueue_embedding', NULL),
  ('a50691bb-9fa8-1ae6-b9ae-de9f7d54f842', '019fa679-9064-7be8-b12a-f974608356ce', 'notes_enqueue_embedding', NULL),
  ('a98caa40-e67b-7733-c7c8-5df5ce0f859b', '019fa679-9064-7be8-b12a-f974608356ce', 'event_links_embedding_auto_updated_at', NULL),
  ('b00f21b8-6a33-00fb-3c94-38dfe07c5e74', '019fa679-9064-7be8-b12a-f974608356ce', 'tool_definitions_embedding_stale', NULL),
  ('b09cb25d-f78f-034f-bc82-fe996b261c23', '019fa679-9064-7be8-b12a-f974608356ce', 'events_embedding_auto_updated_at', NULL),
  ('b12a36dc-fa68-0aa7-7fd1-c128093cf393', '019fa679-9064-7be8-b12a-f974608356ce', 'conversations_embedding_stale', NULL),
  ('b9344b2c-1799-b472-f4ab-c9e094e9106b', '019fa679-9064-7be8-b12a-f974608356ce', 'email_threads_search_tsv_tsv', NULL),
  ('ba2e2a99-315f-7689-0217-e7e1288f468c', '019fa679-9064-7be8-b12a-f974608356ce', 'calendar_events_search_tsv_tsv', NULL),
  ('baff5152-33f3-9845-d9d1-a31a8081b4e4', '019fa679-9064-7be8-b12a-f974608356ce', 'companies_embedding_stale', NULL),
  ('bc2d1df1-d675-78f9-3c14-4fea081ab738', '019fa679-9064-7be8-b12a-f974608356ce', 'agents_embedding_stale', NULL),
  ('bce3cbf4-2dae-ec98-b264-92a355e55890', '019fa679-9064-7be8-b12a-f974608356ce', 'touchpoints_embedding_stale', NULL),
  ('bfc8bde7-c188-669c-cc35-44c407935351', '019fa679-9064-7be8-b12a-f974608356ce', 'skills_intent_trigger_embedding_stale', NULL),
  ('c5a43313-4b0a-98a8-5e4f-75f360f3d132', '019fa679-9064-7be8-b12a-f974608356ce', 'images_embedding_auto_updated_at', NULL),
  ('c6481551-b697-19bc-0d67-3fdd1d2eba91', '019fa679-9064-7be8-b12a-f974608356ce', 'places_enqueue_embedding', NULL),
  ('c927e9ac-c072-931c-65b9-229eae55217f', '019fa679-9064-7be8-b12a-f974608356ce', 'documents_enqueue_chunking', NULL),
  ('c992e6da-ae59-452d-9ef9-f2d332132ebf', '019fa679-9064-7be8-b12a-f974608356ce', 'rules_enqueue_embedding', NULL),
  ('cdd684bc-1a20-2763-8c7a-e1d15d68fa4d', '019fa679-9064-7be8-b12a-f974608356ce', 'email_threads_embedding_stale', NULL),
  ('d442d3a8-70bb-9eb2-3633-87bae68db856', '019fa679-9064-7be8-b12a-f974608356ce', 'goals_embedding_stale', NULL),
  ('d4f70425-19cb-aa17-e74b-59e085f2862c', '019fa679-9064-7be8-b12a-f974608356ce', 'company_links_embedding_auto_updated_at', NULL),
  ('d602690b-8cab-e718-9257-7913d496f771', '019fa679-9064-7be8-b12a-f974608356ce', 'documents_embedding_auto_updated_at', NULL),
  ('d7124525-0e98-fd7d-1fbb-28244b9833e3', '019fa679-9064-7be8-b12a-f974608356ce', 'runtime_states_embedding_stale', NULL),
  ('e2f07eea-50a1-3caf-4fee-880abf56d7e7', '019fa679-9064-7be8-b12a-f974608356ce', 'runtime_states_embedding_auto_updated_at', NULL),
  ('e4dc1f47-2797-b53b-46ac-9ae286d26eff', '019fa679-9064-7be8-b12a-f974608356ce', 'places_embedding_auto_updated_at', NULL),
  ('e502597c-a85f-6345-b7f5-b835b4debdad', '019fa679-9064-7be8-b12a-f974608356ce', 'goals_enqueue_embedding', NULL),
  ('e5734f83-ed52-cae1-99a7-9ce64531c6e7', '019fa679-9064-7be8-b12a-f974608356ce', 'projects_enqueue_embedding', NULL),
  ('e7377e30-7fb2-485e-5cb2-623af87b2a3d', '019fa679-9064-7be8-b12a-f974608356ce', 'messages_embedding_stale', NULL),
  ('e8777f5d-17cc-27ad-6d3a-24c0d20f18ee', '019fa679-9064-7be8-b12a-f974608356ce', 'skills_enqueue_embedding', NULL),
  ('e91a1493-c020-2089-9001-2c903186934d', '019fa679-9064-7be8-b12a-f974608356ce', 'rules_trigger_concept_embedding_stale', NULL),
  ('ead05bee-8ed1-ffe9-4f2f-950be2235751', '019fa679-9064-7be8-b12a-f974608356ce', 'touchpoints_enqueue_embedding', NULL),
  ('ecdb4ad6-6efd-cbc0-6b23-16a3dfd17334', '019fa679-9064-7be8-b12a-f974608356ce', 'contacts_enqueue_embedding', NULL),
  ('ed5d20ae-a550-ccac-d7fe-3b350c9583f5', '019fa679-9064-7be8-b12a-f974608356ce', 'companies_embedding_auto_updated_at', NULL),
  ('ee261f22-7094-4f0f-a834-fa3137604fc0', '019fa679-9064-7be8-b12a-f974608356ce', 'emails_enqueue_embedding', NULL),
  ('eef2511b-aaff-d02f-8cf4-99e64040a494', '019fa679-9064-7be8-b12a-f974608356ce', 'prompts_embedding_stale', NULL),
  ('f174a402-a93d-13d3-2770-3610d92381a3', '019fa679-9064-7be8-b12a-f974608356ce', 'documents_embedding_stale', NULL),
  ('f38609f5-2c7b-4ac4-3fb6-7a917a25915b', '019fa679-9064-7be8-b12a-f974608356ce', 'messages_embedding_auto_updated_at', NULL),
  ('f69e722d-c9ed-fd07-c77c-ec09a6e7ec8e', '019fa679-9064-7be8-b12a-f974608356ce', 'runtime_logs_embedding_stale', NULL),
  ('fbe21d4e-0c3b-326f-c6ca-6fd5e5d58dab', '019fa679-9064-7be8-b12a-f974608356ce', 'rules_embedding_auto_updated_at', NULL),
  ('fcb6118e-d0bc-f892-5657-813fe7f531c3', '019fa679-9064-7be8-b12a-f974608356ce', 'email_threads_enqueue_embedding', NULL),
  ('ffd91c82-f833-9d28-9806-2c22b18ff3b2', '019fa679-9064-7be8-b12a-f974608356ce', 'agents_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


