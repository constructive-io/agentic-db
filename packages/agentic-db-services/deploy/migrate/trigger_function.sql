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
  ('019d2727-727c-71ce-b14e-c983ffd1e664', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'users_search_tsv_tsv', NULL),
  ('019d2728-139d-7429-a9c5-8eb03f1f8f27', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'encrypted_secrets_hash', NULL),
  ('019d2728-8c93-764f-b6eb-11f8dae219e7', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'contacts_search_tsv_tsv', NULL),
  ('019d2728-8ed8-7dce-b08f-d4ad8f35a2e3', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'contacts_embedding_stale', NULL),
  ('019d2728-8f6c-7c9c-bc83-fe1a59ba41e0', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'contacts_enqueue_embedding', NULL),
  ('019d2728-99af-710e-a3e7-8c15cad70b2b', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'contacts_enqueue_chunking', NULL),
  ('019d2728-a53e-75f8-ad87-fa1a7ffcc233', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'companies_search_tsv_tsv', NULL),
  ('019d2728-a79c-794d-8f86-7541a51f3a3c', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'companies_embedding_stale', NULL),
  ('019d2728-a846-781f-b3ae-ea5682d84bcb', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'companies_enqueue_embedding', NULL),
  ('019d2728-b4f0-7cec-a196-b3518e3d7548', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'companies_enqueue_chunking', NULL),
  ('019d2728-c5d0-7905-9abf-6966e06a69ab', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'deals_embedding_stale', NULL),
  ('019d2728-c6b6-71b6-bbce-6387603806c7', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'deals_enqueue_embedding', NULL),
  ('019d2728-d6c0-7f42-8cdf-3b4c3f40bd85', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'deals_enqueue_chunking', NULL),
  ('019d2728-e8dd-773c-b0ef-2b08a253cde8', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'events_search_tsv_tsv', NULL),
  ('019d2728-ec87-710d-a916-2d550ac45a27', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'events_embedding_stale', NULL),
  ('019d2728-ed8a-77ea-9044-0a27ce802847', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'events_enqueue_embedding', NULL),
  ('019d2728-ff48-7e41-924b-b00be4754c82', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'events_enqueue_chunking', NULL),
  ('019d2729-16f1-7db1-a414-23a6de3955c7', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'venues_search_tsv_tsv', NULL),
  ('019d2729-1b2d-7320-b075-fbca0c41a7bd', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'venues_embedding_stale', NULL),
  ('019d2729-1c58-7579-b8c7-f7a534270d50', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'venues_enqueue_embedding', NULL),
  ('019d2729-312e-7f0a-bb9a-b3c55ac6cd1a', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'venues_enqueue_chunking', NULL),
  ('019d2729-4a75-7d8a-ab12-457a8c66b6d5', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'notes_embedding_stale', NULL),
  ('019d2729-4bb3-75c8-9bb7-090516c6e0ca', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'notes_enqueue_embedding', NULL),
  ('019d2729-62bd-78a9-acc9-4c363dd874b9', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'notes_enqueue_chunking', NULL),
  ('019d2729-7e75-76fb-b23d-c5c442ddf8eb', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'interactions_embedding_stale', NULL),
  ('019d2729-7fe3-720e-8133-d9bca7a7b3eb', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'interactions_enqueue_embedding', NULL),
  ('019d2729-9902-7aa8-9afa-a8a544ed0772', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'interactions_enqueue_chunking', NULL),
  ('019d2729-bcbf-726f-8bc3-36a117cca688', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'touchpoints_embedding_stale', NULL),
  ('019d2729-be4f-7f50-8ed5-a8131bcbedc7', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'touchpoints_enqueue_embedding', NULL),
  ('019d2729-d9f9-712f-98a8-934f213215eb', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'touchpoints_enqueue_chunking', NULL),
  ('019d272b-b064-768f-9846-a71d243c4847', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'agents_embedding_stale', NULL),
  ('019d272b-b140-7813-8326-ee729cb33c5f', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'agents_enqueue_embedding', NULL),
  ('019d272b-bf75-703c-8929-62521732fce1', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'agents_enqueue_chunking', NULL),
  ('019d272b-d1dd-7a22-a354-00f76f91c852', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'tasks_embedding_stale', NULL),
  ('019d272b-d2c6-7b1d-948e-35c82694f18c', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'tasks_enqueue_embedding', NULL),
  ('019d272b-e338-7816-95d5-4276c39d7471', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'tasks_enqueue_chunking', NULL),
  ('019d272b-f6ee-7627-b9d3-d159fede70e4', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'agent_logs_embedding_stale', NULL),
  ('019d272b-f7f5-7a3d-853b-406a98fa5b73', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'agent_logs_enqueue_embedding', NULL),
  ('019d272c-0a8b-7d26-950a-cdc5a314b0c7', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'agent_logs_enqueue_chunking', NULL),
  ('019d272c-2197-7867-b9e4-04d18116e714', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'rules_embedding_stale', NULL),
  ('019d272c-22bc-71ec-9639-f9bbc8a0cb7f', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'rules_enqueue_embedding', NULL),
  ('019d272c-3769-7f42-8ba8-ab547533e5cb', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'rules_enqueue_chunking', NULL),
  ('019d272c-517d-7847-be27-3966ba239168', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'skills_embedding_stale', NULL),
  ('019d272c-52fd-7095-910b-474a400321a3', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'skills_enqueue_embedding', NULL),
  ('019d272c-6d5b-7f3d-bb26-7c01259b4a57', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'skills_enqueue_chunking', NULL),
  ('019d272c-870f-7478-8460-5bec0b2c14a3', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'tool_definitions_embedding_stale', NULL),
  ('019d272c-8831-7c46-8b6b-00a135077019', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'tool_definitions_enqueue_embedding', NULL),
  ('019d272c-9d25-7bc7-865a-ab1be74b3a48', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'tool_definitions_enqueue_chunking', NULL),
  ('019d272c-b752-7ac5-9ff3-6e93bd3ef255', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'prompts_embedding_stale', NULL),
  ('019d272c-b89a-78b6-bb24-83f670eba93f', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'prompts_enqueue_embedding', NULL),
  ('019d272c-cfdd-77ba-a9d7-eb5a6692848b', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'prompts_enqueue_chunking', NULL),
  ('019d272c-eba5-7725-ad68-9b8ad3da1421', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'expenses_embedding_stale', NULL),
  ('019d272c-ecfc-7897-8b63-e2712a57b055', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'expenses_enqueue_embedding', NULL),
  ('019d272d-0643-7e56-b049-b47c5a28dd7a', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'expenses_enqueue_chunking', NULL),
  ('019d272d-3e48-7e6c-9ad6-eaf75b35c0b0', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'runtime_states_embedding_stale', NULL),
  ('019d272d-3f5a-788d-8f9c-f12ce86f6860', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'runtime_states_enqueue_embedding', NULL),
  ('019d272d-51cc-7e22-9fbe-67644dbc5e38', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'runtime_states_enqueue_chunking', NULL),
  ('019d272d-66d4-704c-a90b-6bdfeaf9240b', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'runtime_logs_embedding_stale', NULL),
  ('019d272d-675e-7133-a963-b2ade89e5dc3', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'runtime_logs_enqueue_embedding', NULL),
  ('019d272d-7157-7473-ac06-b2757e725f0a', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'runtime_logs_enqueue_chunking', NULL),
  ('019d272d-bc37-7472-a31d-a7621612c7c5', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'conversations_embedding_stale', NULL),
  ('019d272d-bd6d-7192-a269-bb958967c8ad', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'conversations_enqueue_embedding', NULL),
  ('019d272d-cf73-7c45-bc65-4ddd5b33d118', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'conversations_enqueue_chunking', NULL),
  ('019d272d-e5cc-7a16-886c-c68bb6df8ba6', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'messages_embedding_stale', NULL),
  ('019d272d-e6ed-7474-b236-ebeccbb2ff5b', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'messages_enqueue_embedding', NULL),
  ('019d272d-fb07-7356-9ae6-b6c01c3b9119', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'messages_enqueue_chunking', NULL),
  ('019d272e-3361-7c99-bd4c-b4caf09aaa83', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'projects_embedding_stale', NULL),
  ('019d272e-33e9-7849-bb8c-33fee7a0398b', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'projects_enqueue_embedding', NULL),
  ('019d272e-3cb2-7e83-a2cd-9e135bbbc505', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'projects_enqueue_chunking', NULL),
  ('019d272e-46f2-77e5-8135-4123f70ec0c8', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'codebases_embedding_stale', NULL),
  ('019d272e-4769-7934-9c45-eaf103f5b07b', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'codebases_enqueue_embedding', NULL),
  ('019d272e-5044-74b7-b121-744400ead233', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'codebases_enqueue_chunking', NULL),
  ('019d272e-5aee-75a6-bb6e-0392faa8310d', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'code_chunks_embedding_stale', NULL),
  ('019d272e-5b77-7ad5-b3c0-b5d8f034aebb', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'code_chunks_enqueue_embedding', NULL),
  ('019d272e-6c76-761a-ae1a-f9e8592fe1e2', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'goals_embedding_stale', NULL),
  ('019d272e-6cf0-79ce-8e4d-e6d3a2e44cf1', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'goals_enqueue_embedding', NULL),
  ('019d272e-751c-78f9-857f-11fa900dbf9d', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'goals_enqueue_chunking', NULL),
  ('019d272e-863a-7801-b759-712604e2bbfa', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'memories_embedding_stale', NULL),
  ('019d272e-86ca-7ab3-91e8-f7cfea985727', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'memories_enqueue_embedding', NULL),
  ('019d272e-9119-79d8-a537-9283244d30b5', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'memories_enqueue_chunking', NULL),
  ('019d272e-9eb2-7f2e-93bb-eab202bce6ea', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'trips_embedding_stale', NULL),
  ('019d272e-9f71-795d-ab51-8f12f736c629', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'trips_enqueue_embedding', NULL),
  ('019d272e-ae6e-75c4-a3b1-971ae3047216', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'trips_enqueue_chunking', NULL),
  ('019d272e-c1d2-7135-a8eb-5bd41670b198', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'hiking_trails_embedding_stale', NULL),
  ('019d272e-c2c3-7bbb-bc84-75f8f4591e59', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'hiking_trails_enqueue_embedding', NULL),
  ('019d272e-d46f-773c-95b4-991db66a45ed', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'hiking_trails_enqueue_chunking', NULL),
  ('019d272e-e984-74a7-852d-a2e41ee14e5a', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'places_embedding_stale', NULL),
  ('019d272e-ea98-7d05-ac88-870fe272b4fe', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'places_enqueue_embedding', NULL),
  ('019d272e-fe1e-7866-ad86-b7a4b7adf4ce', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'places_enqueue_chunking', NULL),
  ('019d272f-0d27-70b1-8c45-49aeb4d43ec9', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'email_threads_search_tsv_tsv', NULL),
  ('019d272f-0ec1-7b6f-bb6c-6a3204f4c81b', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'email_threads_embedding_stale', NULL),
  ('019d272f-0f63-73ba-8527-03ad13caff14', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'email_threads_enqueue_embedding', NULL),
  ('019d272f-1749-720a-a9c9-43c8ef6c61b0', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'email_threads_enqueue_chunking', NULL),
  ('019d272f-20e7-7a02-976b-24c318a52379', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'emails_search_tsv_tsv', NULL),
  ('019d272f-22ea-762e-b034-e7bc5a4e4898', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'emails_embedding_stale', NULL),
  ('019d272f-2372-7e8e-852a-65bede5e53ae', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'emails_enqueue_embedding', NULL),
  ('019d272f-2d8d-7923-8e25-11b1cfe965a5', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'emails_enqueue_chunking', NULL),
  ('019d272f-4fa8-73f4-b6f5-d3efbe817e05', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'calendar_events_search_tsv_tsv', NULL),
  ('019d272f-52fc-7594-bb47-d73a3669d678', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'calendar_events_embedding_stale', NULL),
  ('019d272f-53dd-737f-8ac4-68093b2ba90c', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'calendar_events_enqueue_embedding', NULL),
  ('019d272f-639f-72ee-95ea-2b3433053dae', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'calendar_events_enqueue_chunking', NULL),
  ('019d272f-b956-7ad0-9ee2-6350b071d381', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'autonomy_records_embedding_stale', NULL),
  ('019d272f-b9de-776d-b90e-13cbe5aa320a', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'autonomy_records_enqueue_embedding', NULL),
  ('019d272f-c261-7700-9606-3a164795d03d', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'autonomy_records_enqueue_chunking', NULL);


SET session_replication_role TO DEFAULT;


