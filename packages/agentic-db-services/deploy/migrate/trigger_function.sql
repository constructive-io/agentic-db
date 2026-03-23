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
  ('019d19cf-065b-7c56-8fb9-e3f5a9e0e2e9', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'users_search_tsv_tsv', NULL),
  ('019d19cf-b52e-750a-9638-9042e9ac00fd', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'encrypted_secrets_hash', NULL),
  ('a1c55e2d-6d41-31ff-3ef6-10a6febd96e1', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'contacts_search_tsv_tsv', NULL),
  ('ebff6f6f-486c-cd5c-34d1-83943b1c6d6d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'contacts_embedding_stale', NULL),
  ('c42cdcbe-8a06-43e4-971c-9304e40f56a2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'contacts_enqueue_embedding', NULL),
  ('75d6d0e2-0587-e54e-0ff5-eea2ff246235', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'contacts_enqueue_chunking', NULL),
  ('1d4e17c8-bb70-0ea5-8a1e-e136dac3c8cb', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'companies_search_tsv_tsv', NULL),
  ('782b92f4-8458-afdb-d805-c3a33df7d9d6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'companies_embedding_stale', NULL),
  ('749ff1b8-2013-c9b7-d754-a28794f6bcc5', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'companies_enqueue_embedding', NULL),
  ('e750de51-567b-d46f-f4af-dabe1309681a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'companies_enqueue_chunking', NULL),
  ('5d3c694b-6119-4a14-5538-791b68b95819', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'deals_embedding_stale', NULL),
  ('b91894a2-978e-ce98-988c-5a2170a4b260', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'deals_enqueue_embedding', NULL),
  ('7f9e0bd9-cccd-e666-a98b-5630c816f403', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'deals_enqueue_chunking', NULL),
  ('05e4249d-7c2b-4bc8-fe65-fc3a18e4ec24', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'events_search_tsv_tsv', NULL),
  ('41b69586-7186-1ddc-03c8-60760448e8ad', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'events_embedding_stale', NULL),
  ('c2d2117f-2ec3-f02f-8082-d3275491e25d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'events_enqueue_embedding', NULL),
  ('efac483f-8d2f-b048-0d99-b92b81ec0641', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'events_enqueue_chunking', NULL),
  ('525f3dfb-48e5-3e08-f83e-aa9234eb3613', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'venues_search_tsv_tsv', NULL),
  ('d86ec4d2-484a-c773-5de7-bae7ab23f9a8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'venues_embedding_stale', NULL),
  ('a5ba9843-2ad4-c43c-f457-f0851d02899b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'venues_enqueue_embedding', NULL),
  ('627af69e-0608-71ed-8f21-94af5e37a8e7', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'venues_enqueue_chunking', NULL),
  ('67f88eb6-2d95-1a7c-4469-5c7095061c42', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'notes_embedding_stale', NULL),
  ('44c1f408-0bf8-6cca-147c-778447750c05', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'notes_enqueue_embedding', NULL),
  ('d2d3f8a1-57d5-f233-5ee9-1e066b2e1d80', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'notes_enqueue_chunking', NULL),
  ('44f4d3e0-8cd6-d15d-e952-e354dacea308', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'interactions_embedding_stale', NULL),
  ('a94b453b-750f-de3e-efd4-602b7486342c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'interactions_enqueue_embedding', NULL),
  ('c2ae90f1-918d-35af-da20-3b6049f46b4c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'interactions_enqueue_chunking', NULL),
  ('24d7cc5b-7199-2566-4eee-b5984d6ae10d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agents_embedding_stale', NULL),
  ('16a30072-6273-8043-2a88-153435646cf5', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agents_enqueue_embedding', NULL),
  ('fcd3f55f-0104-3318-35f7-01897057ae06', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agents_enqueue_chunking', NULL),
  ('a9b9bb83-868e-d442-150e-ea22b57a6182', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agent_tasks_embedding_stale', NULL),
  ('4e6e077c-aeee-7285-2cd1-529563a25e50', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agent_tasks_enqueue_embedding', NULL),
  ('67413a2c-23ef-55e7-8f8b-a6a79c42dc6a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agent_tasks_enqueue_chunking', NULL),
  ('53a4b092-200a-f68b-9186-4e363131bcf8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agent_logs_embedding_stale', NULL),
  ('80997950-726d-a4bc-aef8-583fba774760', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agent_logs_enqueue_embedding', NULL),
  ('54708841-1024-43d4-7a79-29517fe5a3b1', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'agent_logs_enqueue_chunking', NULL),
  ('6dda16fd-c664-b50e-74f3-d4b7dcb6a4fa', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'rules_embedding_stale', NULL),
  ('f29bab18-72f0-968d-2815-3538845a30e2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'rules_enqueue_embedding', NULL),
  ('b51fe996-baf3-7b2c-7a3e-edae02fbf05b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'rules_enqueue_chunking', NULL),
  ('0e281510-62df-8e1b-5d20-494a2c454fd0', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'skills_embedding_stale', NULL),
  ('7cd762e1-4762-294f-362a-27240c72e9ea', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'skills_enqueue_embedding', NULL),
  ('462c4540-7551-c85d-67a4-39fa33d7a360', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'skills_enqueue_chunking', NULL),
  ('9ab5a554-41cd-f495-cfbe-cc585b075ee4', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'runtime_states_embedding_stale', NULL),
  ('40af9aec-8bbf-8eda-fbb8-8ab3833dc636', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'runtime_states_enqueue_embedding', NULL),
  ('1a324f39-7b3d-8415-0ac6-cb0ff6a57f72', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'runtime_states_enqueue_chunking', NULL),
  ('fb6021ac-bcba-9c90-e680-43403f14c230', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'runtime_logs_embedding_stale', NULL),
  ('428fc394-4f73-52ac-79db-e02a6bd81f19', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'runtime_logs_enqueue_embedding', NULL),
  ('15259b9e-d7fb-c47a-3bed-e96d933a4e22', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'runtime_logs_enqueue_chunking', NULL),
  ('05737750-8449-f380-9bdf-42dd38ddd541', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'conversations_embedding_stale', NULL),
  ('c933dc3c-1810-10ad-9261-ce4784104ebf', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'conversations_enqueue_embedding', NULL),
  ('df608ee7-3c71-dcf2-880a-c1cc0fc7e5a1', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'conversations_enqueue_chunking', NULL),
  ('7430b3ba-526f-d6b9-b516-edeafdfe7ea9', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'messages_embedding_stale', NULL),
  ('368e2bc5-8005-e5e2-748f-d507500799a5', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'messages_enqueue_embedding', NULL),
  ('c826e2ff-7afc-8583-306c-e0019fcfa725', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'messages_enqueue_chunking', NULL),
  ('fbd8c3aa-aab8-c3ed-048d-3aaf4aa076b4', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'projects_embedding_stale', NULL),
  ('7db00360-e2a8-1925-c79a-b6a38e3e1def', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'projects_enqueue_embedding', NULL),
  ('672b091b-34b4-6356-f2ea-dc04ea9c0550', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'projects_enqueue_chunking', NULL),
  ('43bf2a4f-1c8a-a75a-692a-5a8ef0152bc3', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'codebases_embedding_stale', NULL),
  ('257a9510-c323-2978-1f37-3eae8dcd9859', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'codebases_enqueue_embedding', NULL),
  ('a6a0d428-7586-7ad1-2e05-92a775ade687', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'codebases_enqueue_chunking', NULL),
  ('6abb9594-3478-a7ad-c241-e2e4e842ede7', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'code_chunks_embedding_stale', NULL),
  ('c4eec04e-5c8c-b753-459d-aff2fef1d9f4', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'code_chunks_enqueue_embedding', NULL),
  ('6e6ebb6c-d96d-7fb8-98ed-829c03e0887a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'trips_embedding_stale', NULL),
  ('5462ece7-90f0-55d2-a934-efdbe3ccbc77', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'trips_enqueue_embedding', NULL),
  ('ab6df8ab-3fd1-acd1-fb86-4ce4db2271ab', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'trips_enqueue_chunking', NULL),
  ('de1d4e16-c296-aaa3-992f-6228f5fb9d2b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'places_embedding_stale', NULL),
  ('dcc11923-476c-11b2-d75a-fe632cef02b1', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'places_enqueue_embedding', NULL),
  ('2797810b-d5e0-c03a-ba36-177a52a56cd8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'places_enqueue_chunking', NULL),
  ('44612abb-56d2-4f68-60de-553356d66020', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'itinerary_items_embedding_stale', NULL),
  ('1b022ec7-8047-72e8-38fa-aa8630c1e785', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'itinerary_items_enqueue_embedding', NULL),
  ('96a0e90d-f023-a698-dcc7-8ac7ef7171b9', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'itinerary_items_enqueue_chunking', NULL),
  ('e4a64d2d-0e9d-daac-a3bd-d2d3930a35f0', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'hiking_trails_embedding_stale', NULL),
  ('7d1c953b-4d26-c008-675b-aac69341fb18', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'hiking_trails_enqueue_embedding', NULL),
  ('03e7175a-c823-80eb-b98d-4f80ab91b376', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'hiking_trails_enqueue_chunking', NULL),
  ('4664d309-7a38-f183-148c-9b355b7d8cbb', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'memories_embedding_stale', NULL),
  ('856cdb8e-fd08-6706-7614-4f0c358e9041', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'memories_enqueue_embedding', NULL),
  ('c09190f8-9d33-b7fe-df52-5b398994784c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'memories_enqueue_chunking', NULL),
  ('a92df2db-dc78-98d9-7b00-09fdc1ffe3b7', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'goals_embedding_stale', NULL),
  ('21ce3707-89cc-c269-c28d-4c4ff102b74c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'goals_enqueue_embedding', NULL),
  ('3bdddae4-c009-e6b5-56b9-6009c0396ed3', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'goals_enqueue_chunking', NULL),
  ('fbbcebcf-53ba-a2f8-f037-ce5d99bf8a6a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'habits_embedding_stale', NULL),
  ('14d76306-5cb7-5925-4b26-bbb443f43318', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'habits_enqueue_embedding', NULL),
  ('3fc1357d-f6ec-224e-8ed4-f0978e85f01f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'habits_enqueue_chunking', NULL),
  ('48889ad1-8ec2-c30e-38e8-fbcd48f30ce3', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'autonomy_records_embedding_stale', NULL),
  ('ad18dbba-e6a0-2751-773f-8bd8d178a3fa', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'autonomy_records_enqueue_embedding', NULL),
  ('7187ef10-5f13-0a0d-4aef-32fdfe89e726', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'autonomy_records_enqueue_chunking', NULL);


SET session_replication_role TO DEFAULT;


