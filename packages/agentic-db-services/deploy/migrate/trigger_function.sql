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
  ('019d2831-6492-7cd3-9f39-1332693f5171', '019d2831-6080-7e86-a360-21cd48c6ce49', 'users_search_tsv_tsv', NULL),
  ('019d2832-11d3-769d-9750-0479c56e8e14', '019d2831-6080-7e86-a360-21cd48c6ce49', 'encrypted_secrets_hash', NULL),
  ('019d2833-d757-716c-9e1a-a6feac933cec', '019d2831-6080-7e86-a360-21cd48c6ce49', 'contacts_search_tsv_tsv', NULL),
  ('019d2833-d936-71cf-8ace-7517eaddaddd', '019d2831-6080-7e86-a360-21cd48c6ce49', 'contacts_embedding_stale', NULL),
  ('019d2833-d9b6-7e5e-bbc1-96f293aa4698', '019d2831-6080-7e86-a360-21cd48c6ce49', 'contacts_enqueue_embedding', NULL),
  ('019d2833-e2c5-7b52-b9bf-fb2334671e32', '019d2831-6080-7e86-a360-21cd48c6ce49', 'contacts_enqueue_chunking', NULL),
  ('019d2833-ede7-76e0-80d0-fabab2ec3f71', '019d2831-6080-7e86-a360-21cd48c6ce49', 'companies_search_tsv_tsv', NULL),
  ('019d2833-f033-7d3c-b3aa-48bec83473a0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'companies_embedding_stale', NULL),
  ('019d2833-f0d0-7c42-b9e4-e74a31eb425c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'companies_enqueue_embedding', NULL),
  ('019d2833-fc14-7a2c-9fd3-baf82659aff5', '019d2831-6080-7e86-a360-21cd48c6ce49', 'companies_enqueue_chunking', NULL),
  ('019d2834-0b62-7d91-803a-f16c2dcd96b5', '019d2831-6080-7e86-a360-21cd48c6ce49', 'deals_embedding_stale', NULL),
  ('019d2834-0c42-7f56-818b-c7e1852a79d4', '019d2831-6080-7e86-a360-21cd48c6ce49', 'deals_enqueue_embedding', NULL),
  ('019d2834-1be2-77f9-afb7-a6d15077593d', '019d2831-6080-7e86-a360-21cd48c6ce49', 'deals_enqueue_chunking', NULL),
  ('019d2834-2e09-76b4-8b08-9fbc725aebff', '019d2831-6080-7e86-a360-21cd48c6ce49', 'events_search_tsv_tsv', NULL),
  ('019d2834-31ae-72ee-a7a9-bb22daf2c1b8', '019d2831-6080-7e86-a360-21cd48c6ce49', 'events_embedding_stale', NULL),
  ('019d2834-32ae-7f73-a9aa-a01b5ad62078', '019d2831-6080-7e86-a360-21cd48c6ce49', 'events_enqueue_embedding', NULL),
  ('019d2834-4494-760d-8ac7-02fd4feb2619', '019d2831-6080-7e86-a360-21cd48c6ce49', 'events_enqueue_chunking', NULL),
  ('019d2834-5d15-7ede-9f96-839cda735f7d', '019d2831-6080-7e86-a360-21cd48c6ce49', 'venues_search_tsv_tsv', NULL),
  ('019d2834-6152-7ef0-a600-44ff872b3258', '019d2831-6080-7e86-a360-21cd48c6ce49', 'venues_embedding_stale', NULL),
  ('019d2834-6279-73cd-829c-3b45f57d4d1d', '019d2831-6080-7e86-a360-21cd48c6ce49', 'venues_enqueue_embedding', NULL),
  ('019d2834-76ee-7668-9250-65180bc4e8c0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'venues_enqueue_chunking', NULL),
  ('019d2834-9028-73b2-b1e7-5ff4ed43cfe2', '019d2831-6080-7e86-a360-21cd48c6ce49', 'notes_embedding_stale', NULL),
  ('019d2834-916c-7457-8dc1-e64387472231', '019d2831-6080-7e86-a360-21cd48c6ce49', 'notes_enqueue_embedding', NULL),
  ('019d2834-a820-7be2-b9e6-4d3d50310c4f', '019d2831-6080-7e86-a360-21cd48c6ce49', 'notes_enqueue_chunking', NULL),
  ('019d2834-c3fc-7f33-9903-9d2bdc53be8c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'interactions_embedding_stale', NULL),
  ('019d2834-c560-728e-a6f4-33e726400862', '019d2831-6080-7e86-a360-21cd48c6ce49', 'interactions_enqueue_embedding', NULL),
  ('019d2834-de73-79e8-8d48-3cbe97d42da7', '019d2831-6080-7e86-a360-21cd48c6ce49', 'interactions_enqueue_chunking', NULL),
  ('019d2835-01c1-78ca-8025-8112c7615d81', '019d2831-6080-7e86-a360-21cd48c6ce49', 'touchpoints_embedding_stale', NULL),
  ('019d2835-0348-75e7-88b9-631070f5a3cb', '019d2831-6080-7e86-a360-21cd48c6ce49', 'touchpoints_enqueue_embedding', NULL),
  ('019d2835-1fb2-7b01-85a2-cd105edbad8d', '019d2831-6080-7e86-a360-21cd48c6ce49', 'touchpoints_enqueue_chunking', NULL),
  ('019d2836-f174-7be0-8def-2349db56cc56', '019d2831-6080-7e86-a360-21cd48c6ce49', 'agents_embedding_stale', NULL),
  ('019d2836-f1fb-707d-9e0a-6462a69bfdd1', '019d2831-6080-7e86-a360-21cd48c6ce49', 'agents_enqueue_embedding', NULL),
  ('019d2836-f9bd-7675-9639-06e195920f97', '019d2831-6080-7e86-a360-21cd48c6ce49', 'agents_enqueue_chunking', NULL),
  ('019d2837-0411-7276-b238-1425d4ef91ec', '019d2831-6080-7e86-a360-21cd48c6ce49', 'tasks_embedding_stale', NULL),
  ('019d2837-049e-7f19-b32e-494f128d51bc', '019d2831-6080-7e86-a360-21cd48c6ce49', 'tasks_enqueue_embedding', NULL),
  ('019d2837-0e99-7828-8b29-3a80c9464af3', '019d2831-6080-7e86-a360-21cd48c6ce49', 'tasks_enqueue_chunking', NULL),
  ('019d2837-1b4e-7bd6-a4bf-4bd1579272e5', '019d2831-6080-7e86-a360-21cd48c6ce49', 'agent_logs_embedding_stale', NULL),
  ('019d2837-1bfc-7f9d-b4bb-ea00c20abbed', '019d2831-6080-7e86-a360-21cd48c6ce49', 'agent_logs_enqueue_embedding', NULL),
  ('019d2837-28c0-7e5d-9542-3d4d0232bc7c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'agent_logs_enqueue_chunking', NULL),
  ('019d2837-3a6d-7faf-8a2c-dd5bf6888242', '019d2831-6080-7e86-a360-21cd48c6ce49', 'rules_embedding_stale', NULL),
  ('019d2837-3b4d-7620-a596-e712169f4731', '019d2831-6080-7e86-a360-21cd48c6ce49', 'rules_enqueue_embedding', NULL),
  ('019d2837-4b86-7a4c-b39d-02081d52f6a5', '019d2831-6080-7e86-a360-21cd48c6ce49', 'rules_enqueue_chunking', NULL),
  ('019d2837-5fda-7731-a4e3-55d8464a1e4b', '019d2831-6080-7e86-a360-21cd48c6ce49', 'skills_embedding_stale', NULL),
  ('019d2837-60df-70d3-bc01-6bcb0131a089', '019d2831-6080-7e86-a360-21cd48c6ce49', 'skills_enqueue_embedding', NULL),
  ('019d2837-72e6-7b15-89c2-846648adb2e4', '019d2831-6080-7e86-a360-21cd48c6ce49', 'skills_enqueue_chunking', NULL),
  ('019d2837-8981-7dd3-a9d0-bc2bc2d50408', '019d2831-6080-7e86-a360-21cd48c6ce49', 'tool_definitions_embedding_stale', NULL),
  ('019d2837-8aab-75a7-add8-d982742715f5', '019d2831-6080-7e86-a360-21cd48c6ce49', 'tool_definitions_enqueue_embedding', NULL),
  ('019d2837-9f56-74e6-bb41-83614c41ff1a', '019d2831-6080-7e86-a360-21cd48c6ce49', 'tool_definitions_enqueue_chunking', NULL),
  ('019d2837-b7b5-78b0-b564-a9ce00b5505e', '019d2831-6080-7e86-a360-21cd48c6ce49', 'prompts_embedding_stale', NULL),
  ('019d2837-b8ec-7b7d-8a31-585b9999131c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'prompts_enqueue_embedding', NULL),
  ('019d2837-cffc-7a7a-a9c2-86165e68b785', '019d2831-6080-7e86-a360-21cd48c6ce49', 'prompts_enqueue_chunking', NULL),
  ('019d2837-ec68-743d-87fb-36b2be83ceb4', '019d2831-6080-7e86-a360-21cd48c6ce49', 'expenses_embedding_stale', NULL),
  ('019d2837-edce-74e1-87a7-ea09db4d4d74', '019d2831-6080-7e86-a360-21cd48c6ce49', 'expenses_enqueue_embedding', NULL),
  ('019d2838-070e-7ee1-8358-4daa48709ccd', '019d2831-6080-7e86-a360-21cd48c6ce49', 'expenses_enqueue_chunking', NULL),
  ('019d2838-34c8-7db5-a38b-35962864d29c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'runtime_states_embedding_stale', NULL),
  ('019d2838-3551-73c8-bfc6-28ba6402e4d0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'runtime_states_enqueue_embedding', NULL),
  ('019d2838-3d3a-7f96-b8d5-fedaea0eb9f0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'runtime_states_enqueue_chunking', NULL),
  ('019d2838-475b-7436-81dd-35483e20a74f', '019d2831-6080-7e86-a360-21cd48c6ce49', 'runtime_logs_embedding_stale', NULL),
  ('019d2838-47e9-7b50-9c44-03679cdcbebf', '019d2831-6080-7e86-a360-21cd48c6ce49', 'runtime_logs_enqueue_embedding', NULL),
  ('019d2838-51f1-7879-85e9-ee6cb8306ad0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'runtime_logs_enqueue_chunking', NULL),
  ('019d2838-9e93-7b2d-9355-bdfc3e31c416', '019d2831-6080-7e86-a360-21cd48c6ce49', 'conversations_embedding_stale', NULL),
  ('019d2838-9f8d-7a93-9dc4-6b23d4177294', '019d2831-6080-7e86-a360-21cd48c6ce49', 'conversations_enqueue_embedding', NULL),
  ('019d2838-b20e-711b-a3a3-3a1f17ba418b', '019d2831-6080-7e86-a360-21cd48c6ce49', 'conversations_enqueue_chunking', NULL),
  ('019d2838-c92b-747c-8a59-ec707b528488', '019d2831-6080-7e86-a360-21cd48c6ce49', 'messages_embedding_stale', NULL),
  ('019d2838-ca48-7cc9-bde0-29a6693f247e', '019d2831-6080-7e86-a360-21cd48c6ce49', 'messages_enqueue_embedding', NULL),
  ('019d2838-df26-71c8-870e-56be2f594729', '019d2831-6080-7e86-a360-21cd48c6ce49', 'messages_enqueue_chunking', NULL),
  ('019d2839-2298-720d-a8ee-4bdfb4781171', '019d2831-6080-7e86-a360-21cd48c6ce49', 'projects_embedding_stale', NULL),
  ('019d2839-238f-7136-8bfc-c9f524c49d49', '019d2831-6080-7e86-a360-21cd48c6ce49', 'projects_enqueue_embedding', NULL),
  ('019d2839-34b5-7859-90e5-b5f8ab0c68ff', '019d2831-6080-7e86-a360-21cd48c6ce49', 'projects_enqueue_chunking', NULL),
  ('019d2839-493e-7b82-b571-96f4b64084a2', '019d2831-6080-7e86-a360-21cd48c6ce49', 'codebases_embedding_stale', NULL),
  ('019d2839-4a28-765d-a46f-44827bc99b78', '019d2831-6080-7e86-a360-21cd48c6ce49', 'codebases_enqueue_embedding', NULL),
  ('019d2839-5b14-7703-8348-9a36877f0ceb', '019d2831-6080-7e86-a360-21cd48c6ce49', 'codebases_enqueue_chunking', NULL),
  ('019d2839-70ee-76f9-9f45-42e301d3ec99', '019d2831-6080-7e86-a360-21cd48c6ce49', 'code_chunks_embedding_stale', NULL),
  ('019d2839-71f4-771c-8793-1e7b8addd7c2', '019d2831-6080-7e86-a360-21cd48c6ce49', 'code_chunks_enqueue_embedding', NULL),
  ('019d2839-93d4-76c9-83c1-ea070b63479a', '019d2831-6080-7e86-a360-21cd48c6ce49', 'goals_embedding_stale', NULL),
  ('019d2839-94c2-76fa-9004-2f6b917e6d3d', '019d2831-6080-7e86-a360-21cd48c6ce49', 'goals_enqueue_embedding', NULL),
  ('019d2839-a53e-77ba-bba5-9ca27d119398', '019d2831-6080-7e86-a360-21cd48c6ce49', 'goals_enqueue_chunking', NULL),
  ('019d2839-b918-7c80-8135-338542df4028', '019d2831-6080-7e86-a360-21cd48c6ce49', 'activity_logs_embedding_stale', NULL),
  ('019d2839-b9ac-750a-86a4-740a8e4c15f6', '019d2831-6080-7e86-a360-21cd48c6ce49', 'activity_logs_enqueue_embedding', NULL),
  ('019d2839-c4a9-7ecf-8ed9-f02b67f2f25d', '019d2831-6080-7e86-a360-21cd48c6ce49', 'activity_logs_enqueue_chunking', NULL),
  ('019d2839-d242-7492-a7fb-4712cd36cef8', '019d2831-6080-7e86-a360-21cd48c6ce49', 'memories_embedding_stale', NULL),
  ('019d2839-d302-742f-9815-0008e2d45430', '019d2831-6080-7e86-a360-21cd48c6ce49', 'memories_enqueue_embedding', NULL),
  ('019d2839-e1ea-7456-8ad7-ff75bf926ce0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'memories_enqueue_chunking', NULL),
  ('019d2839-f500-7b2c-9b1e-0387197dbed9', '019d2831-6080-7e86-a360-21cd48c6ce49', 'trips_embedding_stale', NULL),
  ('019d2839-f602-7799-9d2b-919a07af5396', '019d2831-6080-7e86-a360-21cd48c6ce49', 'trips_enqueue_embedding', NULL),
  ('019d283a-086d-73ce-946a-4d30a25f170e', '019d2831-6080-7e86-a360-21cd48c6ce49', 'trips_enqueue_chunking', NULL),
  ('019d283a-1f7b-76d2-a733-f28f5799c2fa', '019d2831-6080-7e86-a360-21cd48c6ce49', 'hiking_trails_embedding_stale', NULL),
  ('019d283a-209d-78c4-8f7e-21bb2c4cdff9', '019d2831-6080-7e86-a360-21cd48c6ce49', 'hiking_trails_enqueue_embedding', NULL),
  ('019d283a-3557-7038-8a5e-6ef632cc5ca3', '019d2831-6080-7e86-a360-21cd48c6ce49', 'hiking_trails_enqueue_chunking', NULL),
  ('019d283a-4e85-7500-9013-e03ffb29620a', '019d2831-6080-7e86-a360-21cd48c6ce49', 'places_embedding_stale', NULL),
  ('019d283a-4fc5-70e4-a162-f1767ac2cc89', '019d2831-6080-7e86-a360-21cd48c6ce49', 'places_enqueue_embedding', NULL),
  ('019d283a-6621-7023-bbaf-b81ec7c68f5d', '019d2831-6080-7e86-a360-21cd48c6ce49', 'places_enqueue_chunking', NULL),
  ('019d283a-7a0c-702c-ac81-cc003e5deb5a', '019d2831-6080-7e86-a360-21cd48c6ce49', 'email_threads_search_tsv_tsv', NULL),
  ('019d283a-7bf4-7c36-9004-7ccc77f71ae0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'email_threads_embedding_stale', NULL),
  ('019d283a-7c86-7f2a-afab-57ce32a57a7b', '019d2831-6080-7e86-a360-21cd48c6ce49', 'email_threads_enqueue_embedding', NULL),
  ('019d283a-85ac-7a2f-85b7-5c879c588c4c', '019d2831-6080-7e86-a360-21cd48c6ce49', 'email_threads_enqueue_chunking', NULL),
  ('019d283a-90d0-7d43-ad80-c1d969d22701', '019d2831-6080-7e86-a360-21cd48c6ce49', 'emails_search_tsv_tsv', NULL),
  ('019d283a-9304-7f6c-bd5b-81a624f1ce58', '019d2831-6080-7e86-a360-21cd48c6ce49', 'emails_embedding_stale', NULL),
  ('019d283a-93a2-77c2-a56c-f60b78b81cb3', '019d2831-6080-7e86-a360-21cd48c6ce49', 'emails_enqueue_embedding', NULL),
  ('019d283a-9e4b-77ca-8682-c6dc6093d380', '019d2831-6080-7e86-a360-21cd48c6ce49', 'emails_enqueue_chunking', NULL),
  ('019d283a-c2b3-7da9-892a-e57efa13e855', '019d2831-6080-7e86-a360-21cd48c6ce49', 'calendar_events_search_tsv_tsv', NULL),
  ('019d283a-c63e-727f-ab8e-88267a299bf3', '019d2831-6080-7e86-a360-21cd48c6ce49', 'calendar_events_embedding_stale', NULL),
  ('019d283a-c734-75bc-bd24-fe16c08753f0', '019d2831-6080-7e86-a360-21cd48c6ce49', 'calendar_events_enqueue_embedding', NULL),
  ('019d283a-d8be-7b8f-a0e0-fe993c5a3736', '019d2831-6080-7e86-a360-21cd48c6ce49', 'calendar_events_enqueue_chunking', NULL),
  ('019d283b-3880-748c-bb8a-f825872dd13f', '019d2831-6080-7e86-a360-21cd48c6ce49', 'autonomy_records_embedding_stale', NULL),
  ('019d283b-3900-721c-913c-1e6a7efeecfc', '019d2831-6080-7e86-a360-21cd48c6ce49', 'autonomy_records_enqueue_embedding', NULL),
  ('019d283b-428d-787a-822d-fdd64501d468', '019d2831-6080-7e86-a360-21cd48c6ce49', 'autonomy_records_enqueue_chunking', NULL);


SET session_replication_role TO DEFAULT;


