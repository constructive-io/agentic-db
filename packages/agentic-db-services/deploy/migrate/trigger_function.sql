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
  ('019d1dbf-dbe4-7919-a76b-d7f739562b90', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'users_search_tsv_tsv', NULL),
  ('019d1dc0-85dd-7573-a14e-3f0e4dfba72a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'encrypted_secrets_hash', NULL),
  ('019d1dc1-822d-755f-a3fe-163f26008929', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'contacts_search_tsv_tsv', NULL),
  ('019d1dc1-83e3-772e-b339-f46fadffeb4d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'contacts_embedding_stale', NULL),
  ('019d1dc1-845b-7b47-99f7-a17a1ecd884f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'contacts_enqueue_embedding', NULL),
  ('019d1dc1-8c97-75a7-b33d-d7cb5d129b55', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'contacts_enqueue_chunking', NULL),
  ('019d1dc1-96d6-7e50-a5db-68d162e9f877', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'companies_search_tsv_tsv', NULL),
  ('019d1dc1-98ec-7b9f-9e91-db0eb47db6d4', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'companies_embedding_stale', NULL),
  ('019d1dc1-997e-783a-9e7e-540adeff9322', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'companies_enqueue_embedding', NULL),
  ('019d1dc1-a435-7cdd-97e6-d4c56c10a344', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'companies_enqueue_chunking', NULL),
  ('019d1dc1-b276-79f9-9454-5b0895e6408c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'deals_embedding_stale', NULL),
  ('019d1dc1-b345-72fb-b3d4-da270bba7cf3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'deals_enqueue_embedding', NULL),
  ('019d1dc1-c1a4-7067-a050-0d1178db8db8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'deals_enqueue_chunking', NULL),
  ('019d1dc1-d2a0-7bb5-af8e-c2e0fd0d4aee', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'events_search_tsv_tsv', NULL),
  ('019d1dc1-d611-7e48-beba-561f398e49f7', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'events_embedding_stale', NULL),
  ('019d1dc1-d703-750d-987f-6cdf4d1121a6', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'events_enqueue_embedding', NULL),
  ('019d1dc1-e7c4-79dc-997f-71604b41435e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'events_enqueue_chunking', NULL),
  ('019d1dc1-fde2-756e-9e8f-772edfee8d60', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'venues_search_tsv_tsv', NULL),
  ('019d1dc2-01ea-7228-a217-8e293113077b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'venues_embedding_stale', NULL),
  ('019d1dc2-030c-7c10-85a9-00e260e19b53', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'venues_enqueue_embedding', NULL),
  ('019d1dc2-1642-78d6-b9d8-3832975a6f7f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'venues_enqueue_chunking', NULL),
  ('019d1dc2-2ee1-7b4a-a4dd-97958943df78', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'notes_embedding_stale', NULL),
  ('019d1dc2-301c-7ada-a685-e478799d9bc7', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'notes_enqueue_embedding', NULL),
  ('019d1dc2-462a-7a29-8f44-74eee9c1bddb', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'notes_enqueue_chunking', NULL),
  ('019d1dc2-6076-764b-b35e-39eea90fef35', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'interactions_embedding_stale', NULL),
  ('019d1dc2-61c6-7b13-93e1-2ae75a08f3c8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'interactions_enqueue_embedding', NULL),
  ('019d1dc2-799d-72e5-846e-ace361302f32', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'interactions_enqueue_chunking', NULL),
  ('019d1dc2-9b26-7252-811b-869fbf15b3c5', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'touchpoints_embedding_stale', NULL),
  ('019d1dc2-9c97-7c18-8c0c-b0da1d7de576', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'touchpoints_enqueue_embedding', NULL),
  ('019d1dc2-b703-7b6d-a207-bf67e095eeed', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'touchpoints_enqueue_chunking', NULL),
  ('019d1dc4-71ae-7a90-b14c-1a5097c8c167', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agents_embedding_stale', NULL),
  ('019d1dc4-7230-7aa8-ae81-13e07a9c3942', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agents_enqueue_embedding', NULL),
  ('019d1dc4-79a6-7172-b8c2-861a219cb868', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agents_enqueue_chunking', NULL),
  ('019d1dc4-83df-7313-a86f-4b201ff53a80', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agent_tasks_embedding_stale', NULL),
  ('019d1dc4-8467-79d4-b12a-63fe275a9fda', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agent_tasks_enqueue_embedding', NULL),
  ('019d1dc4-8dd3-7899-bc12-d79e5d04971d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agent_tasks_enqueue_chunking', NULL),
  ('019d1dc4-9a1d-7acb-b812-c4da721406a3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agent_logs_embedding_stale', NULL),
  ('019d1dc4-9ac3-793e-b6e6-6ea115bbf13a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agent_logs_enqueue_embedding', NULL),
  ('019d1dc4-a728-7cf3-8651-e63e8522db97', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'agent_logs_enqueue_chunking', NULL),
  ('019d1dc4-b869-7bdc-9a8f-bfa7acac79fd', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'rules_embedding_stale', NULL),
  ('019d1dc4-b94f-75b2-a879-f17896a0a6b1', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'rules_enqueue_embedding', NULL),
  ('019d1dc4-c956-7955-8603-11ef278d4740', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'rules_enqueue_chunking', NULL),
  ('019d1dc4-e163-7bf8-91ae-d11a7b607ead', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'skills_embedding_stale', NULL),
  ('019d1dc4-e272-7a6f-9854-7324b857e98f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'skills_enqueue_embedding', NULL),
  ('019d1dc4-f54c-71e3-ab92-ebd33c3eba86', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'skills_enqueue_chunking', NULL),
  ('019d1dc5-17d9-7bbf-9be5-c1d8b781a368', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'runtime_states_embedding_stale', NULL),
  ('019d1dc5-185d-7b4d-91c1-f2ceaed4ee2b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'runtime_states_enqueue_embedding', NULL),
  ('019d1dc5-207f-7442-b50b-974927b730e9', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'runtime_states_enqueue_chunking', NULL),
  ('019d1dc5-2a6c-7e61-95aa-b7a727198899', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'runtime_logs_embedding_stale', NULL),
  ('019d1dc5-2af3-72e2-acf6-db3aaf43848b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'runtime_logs_enqueue_embedding', NULL),
  ('019d1dc5-34a3-71da-a78d-5dbbe35f6fe9', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'runtime_logs_enqueue_chunking', NULL),
  ('019d1dc5-7ebc-7b37-a814-51fd89b8ef98', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'conversations_embedding_stale', NULL),
  ('019d1dc5-7fb5-73e4-bf8e-4fba19a83de9', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'conversations_enqueue_embedding', NULL),
  ('019d1dc5-9107-7a75-a9e6-d67f5d7b63c1', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'conversations_enqueue_chunking', NULL),
  ('019d1dc5-a6f0-7ce0-afd3-da7f7e496c7a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'messages_embedding_stale', NULL),
  ('019d1dc5-a80b-740a-bc28-bfe981581a3d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'messages_enqueue_embedding', NULL),
  ('019d1dc5-bb93-7d6a-8c9a-1cd7e001070b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'messages_enqueue_chunking', NULL),
  ('019d1dc6-07b0-722b-b2e8-804bca31ef71', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'projects_embedding_stale', NULL),
  ('019d1dc6-0838-7c79-a741-f07ac555fd8b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'projects_enqueue_embedding', NULL),
  ('019d1dc6-10ec-7738-85c8-545173d4105a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'projects_enqueue_chunking', NULL),
  ('019d1dc6-1b61-7ff2-98ad-b7569c58b416', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'codebases_embedding_stale', NULL),
  ('019d1dc6-1bde-72f3-9eba-5f3903fa5e9c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'codebases_enqueue_embedding', NULL),
  ('019d1dc6-250e-724d-a93f-a1e679bb15c6', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'codebases_enqueue_chunking', NULL),
  ('019d1dc6-30f8-7347-8049-245a6eb52509', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'code_chunks_embedding_stale', NULL),
  ('019d1dc6-3190-784c-91ed-ffc3d737ae12', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'code_chunks_enqueue_embedding', NULL),
  ('019d1dc6-45fb-7edd-b488-71ee47f34ea3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'trips_embedding_stale', NULL),
  ('019d1dc6-468d-7b8c-9295-d4a073f5b04e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'trips_enqueue_embedding', NULL),
  ('019d1dc6-4f29-7e57-9f46-1cbebbba32ff', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'trips_enqueue_chunking', NULL),
  ('019d1dc6-5b19-75d1-956f-7412be67c036', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'places_embedding_stale', NULL),
  ('019d1dc6-5bb7-7b97-884d-ea97999d3d10', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'places_enqueue_embedding', NULL),
  ('019d1dc6-6762-72d3-adf0-c8bb2dd40bd7', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'places_enqueue_chunking', NULL),
  ('019d1dc6-78bb-788c-87d0-7afb7bc42558', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'itinerary_items_embedding_stale', NULL),
  ('019d1dc6-7989-7ea7-9f93-8f3688b15d31', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'itinerary_items_enqueue_embedding', NULL),
  ('019d1dc6-8902-7bbc-8e8a-e4b4c7007a07', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'itinerary_items_enqueue_chunking', NULL),
  ('019d1dc6-9cdb-76ec-bc7c-1c5c800cbd68', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'hiking_trails_embedding_stale', NULL),
  ('019d1dc6-9dd9-7fcc-abea-c6354f5dfe8a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'hiking_trails_enqueue_embedding', NULL),
  ('019d1dc6-affe-7353-9bfa-5d6b8e05f75d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'hiking_trails_enqueue_chunking', NULL),
  ('019d1dc6-c891-7d70-b039-f0f1fe4dc9e8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'memories_embedding_stale', NULL),
  ('019d1dc6-c9ac-7a03-bb52-af94b18f8218', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'memories_enqueue_embedding', NULL),
  ('019d1dc6-dd10-712b-9b30-17c310c350c7', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'memories_enqueue_chunking', NULL),
  ('019d1dc6-f5ba-7ee1-bfe2-a4196906fd79', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'goals_embedding_stale', NULL),
  ('019d1dc6-f6e9-7ca4-bbcd-2cd5a0b891de', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'goals_enqueue_embedding', NULL),
  ('019d1dc7-0b9f-712b-bb9c-ac7f94c1887e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'goals_enqueue_chunking', NULL),
  ('019d1dc7-2504-734c-97e4-1448f45b7b31', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'habits_embedding_stale', NULL),
  ('019d1dc7-264c-741b-bacf-af1d414da276', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'habits_enqueue_embedding', NULL),
  ('019d1dc7-3d64-7966-b1b9-f6347f640679', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'habits_enqueue_chunking', NULL),
  ('019d1dc7-93ee-7d30-8122-25727df0c83c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'autonomy_records_embedding_stale', NULL),
  ('019d1dc7-950d-7921-9f31-dee4dcd76a26', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'autonomy_records_enqueue_embedding', NULL),
  ('019d1dc7-a87a-704f-8afa-61953bd1b572', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', 'autonomy_records_enqueue_chunking', NULL);


SET session_replication_role TO DEFAULT;


