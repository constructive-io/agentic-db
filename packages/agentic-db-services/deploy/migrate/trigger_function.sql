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
  ('001c6d67-59b3-f7f9-6724-db341d6306d2', '019d937b-b671-77da-9a1e-5b9b26705894', 'email_threads_search_tsv_tsv', NULL),
  ('04fcade9-20ea-931a-c398-958b7ac5911c', '019d937b-b671-77da-9a1e-5b9b26705894', 'trips_embedding_stale', NULL),
  ('0abacc9d-c085-7239-f16d-32129daa7551', '019d937b-b671-77da-9a1e-5b9b26705894', 'contacts_enqueue_embedding', NULL),
  ('0ea91e1c-07ef-6a97-739b-d2c84babe54f', '019d937b-b671-77da-9a1e-5b9b26705894', 'rules_embedding_stale', NULL),
  ('104b6c7a-8e20-7792-2bdd-71990395077c', '019d937b-b671-77da-9a1e-5b9b26705894', 'autonomy_records_embedding_stale', NULL),
  ('1088756f-7511-0f7b-979a-e6a8ec6c693c', '019d937b-b671-77da-9a1e-5b9b26705894', 'emails_enqueue_embedding', NULL),
  ('173efae6-c402-dd40-cc45-cd16f19a98ad', '019d937b-b671-77da-9a1e-5b9b26705894', 'runtime_states_embedding_stale', NULL),
  ('1cd721bd-53a2-028b-3988-333bc40a259d', '019d937b-b671-77da-9a1e-5b9b26705894', 'events_search_tsv_tsv', NULL),
  ('1e350866-7df9-7ed5-0426-45f5a862ed13', '019d937b-b671-77da-9a1e-5b9b26705894', 'venues_enqueue_embedding', NULL),
  ('1fe22f1d-8708-08d4-783b-6129192e559f', '019d937b-b671-77da-9a1e-5b9b26705894', 'touchpoints_embedding_stale', NULL),
  ('20b5ce49-92b9-c28a-71a1-48d4657994cd', '019d937b-b671-77da-9a1e-5b9b26705894', 'runtime_logs_embedding_stale', NULL),
  ('21274ea1-ea47-0997-3d70-e01e968cb2e6', '019d937b-b671-77da-9a1e-5b9b26705894', 'prompts_embedding_stale', NULL),
  ('26b605d7-2882-b079-b997-34c1dbe92bf4', '019d937b-b671-77da-9a1e-5b9b26705894', 'projects_embedding_stale', NULL),
  ('29a5a2fb-241c-bf6b-d3fb-b906b768d502', '019d937b-b671-77da-9a1e-5b9b26705894', 'interactions_embedding_stale', NULL),
  ('29cb0086-8f0c-bce9-ab1c-7ee58ca99727', '019d937b-b671-77da-9a1e-5b9b26705894', 'runtime_logs_enqueue_embedding', NULL),
  ('3360514d-7880-09ce-a544-50cf88da2422', '019d937b-b671-77da-9a1e-5b9b26705894', 'tasks_enqueue_embedding', NULL),
  ('34812df1-528f-06c5-77a6-92ce914f4906', '019d937b-b671-77da-9a1e-5b9b26705894', 'notes_enqueue_embedding', NULL),
  ('388b1740-e037-c729-2e25-6c94d95a355a', '019d937b-b671-77da-9a1e-5b9b26705894', 'conversations_enqueue_embedding', NULL),
  ('3d027822-1607-a333-cb35-9dfd7fceaa7c', '019d937b-b671-77da-9a1e-5b9b26705894', 'companies_search_tsv_tsv', NULL),
  ('40fd7b30-00ad-745c-bd29-79f179312184', '019d937b-b671-77da-9a1e-5b9b26705894', 'tasks_embedding_stale', NULL),
  ('4394e970-049a-2f28-4461-e3a011b82eef', '019d937b-b671-77da-9a1e-5b9b26705894', 'prompts_enqueue_embedding', NULL),
  ('44ac24be-a70d-2c71-30ea-0267d7c1612d', '019d937b-b671-77da-9a1e-5b9b26705894', 'deals_embedding_stale', NULL),
  ('488bdf05-fd1f-74bb-4127-2fd60e419c44', '019d937b-b671-77da-9a1e-5b9b26705894', 'expenses_enqueue_embedding', NULL),
  ('4a197909-8471-01ff-df7a-bac3abb06a50', '019d937b-b671-77da-9a1e-5b9b26705894', 'projects_enqueue_embedding', NULL),
  ('501ac7ea-e4bf-8b2e-2a5b-2f5d0ed467f7', '019d937b-b671-77da-9a1e-5b9b26705894', 'tool_definitions_enqueue_embedding', NULL),
  ('53070e29-03f5-7362-b7f6-4fcfbf2edf83', '019d937b-b671-77da-9a1e-5b9b26705894', 'calendar_events_embedding_stale', NULL),
  ('5694da62-05a2-8eac-3e7c-3c9b655322ca', '019d937b-b671-77da-9a1e-5b9b26705894', 'emails_search_tsv_tsv', NULL),
  ('589e43eb-797b-a601-9d97-4f819103d2a2', '019d937b-b671-77da-9a1e-5b9b26705894', 'agents_enqueue_embedding', NULL),
  ('593cf3ce-6fc1-2141-6953-b48531bcdbe5', '019d937b-b671-77da-9a1e-5b9b26705894', 'deals_enqueue_embedding', NULL),
  ('5bd00a47-7d2d-62fb-a606-79ebc983e826', '019d937b-b671-77da-9a1e-5b9b26705894', 'goals_enqueue_embedding', NULL),
  ('6081dc33-598b-fc45-e216-ecf2f8ea8cb3', '019d937b-b671-77da-9a1e-5b9b26705894', 'venues_search_tsv_tsv', NULL),
  ('69068747-9328-4478-879e-3c8a464aae24', '019d937b-b671-77da-9a1e-5b9b26705894', 'touchpoints_enqueue_embedding', NULL),
  ('6f6314bd-ac6c-c897-e98d-bf36f95a4e4f', '019d937b-b671-77da-9a1e-5b9b26705894', 'email_threads_embedding_stale', NULL),
  ('70e23220-63fc-3a67-135b-b15b7bfe5d9f', '019d937b-b671-77da-9a1e-5b9b26705894', 'skills_embedding_stale', NULL),
  ('75042945-6ccc-bfca-bd15-35bfd18ce4a0', '019d937b-b671-77da-9a1e-5b9b26705894', 'rules_enqueue_embedding', NULL),
  ('7af1b3b6-c93c-5d8c-e40c-c73c749bb103', '019d937b-b671-77da-9a1e-5b9b26705894', 'autonomy_records_enqueue_embedding', NULL),
  ('7e7a2de4-521f-60ac-c49a-790529ed13d7', '019d937b-b671-77da-9a1e-5b9b26705894', 'messages_enqueue_embedding', NULL),
  ('81a9d9ed-fbee-4235-65dd-03c2fe561ae0', '019d937b-b671-77da-9a1e-5b9b26705894', 'activity_logs_enqueue_embedding', NULL),
  ('8331689c-1373-d1cf-fb32-961048954e9b', '019d937b-b671-77da-9a1e-5b9b26705894', 'skills_enqueue_embedding', NULL),
  ('8363d224-0c46-12ab-db77-ff56608113b9', '019d937b-b671-77da-9a1e-5b9b26705894', 'tool_definitions_embedding_stale', NULL),
  ('83fc6a9d-590c-b04a-6095-3918b8a10f00', '019d937b-b671-77da-9a1e-5b9b26705894', 'agent_logs_embedding_stale', NULL),
  ('9588aeb4-dd2f-f971-2641-7daa879d37c7', '019d937b-b671-77da-9a1e-5b9b26705894', 'places_enqueue_embedding', NULL),
  ('990aa02c-9872-2f13-13db-3f1fc21cae2a', '019d937b-b671-77da-9a1e-5b9b26705894', 'events_enqueue_embedding', NULL),
  ('9b1a2666-0eb2-de20-d9aa-320384bde7fa', '019d937b-b671-77da-9a1e-5b9b26705894', 'memories_embedding_stale', NULL),
  ('9ec9aee8-095c-1a26-49ac-5f1bb5e05540', '019d937b-b671-77da-9a1e-5b9b26705894', 'memories_enqueue_embedding', NULL),
  ('a1578370-5032-9d30-7406-47eaf3d5b91d', '019d937b-b671-77da-9a1e-5b9b26705894', 'contacts_embedding_stale', NULL),
  ('a1e64cfb-657b-0ae1-509a-4417ae963b3b', '019d937b-b671-77da-9a1e-5b9b26705894', 'runtime_states_enqueue_embedding', NULL),
  ('a796c7bb-5a38-4538-e35c-876029a03cca', '019d937b-b671-77da-9a1e-5b9b26705894', 'calendar_events_search_tsv_tsv', NULL),
  ('a942ef0a-d75c-cfa1-cf5d-b495cff846bd', '019d937b-b671-77da-9a1e-5b9b26705894', 'notes_embedding_stale', NULL),
  ('ac3be621-2f3f-ccae-b2a0-310299c09624', '019d937b-b671-77da-9a1e-5b9b26705894', 'venues_embedding_stale', NULL),
  ('af821b40-f4f8-58dc-4428-fccdde3a3a8f', '019d937b-b671-77da-9a1e-5b9b26705894', 'emails_embedding_stale', NULL),
  ('b3de22d0-ae5d-cce0-bf93-be354132998e', '019d937b-b671-77da-9a1e-5b9b26705894', 'trips_enqueue_embedding', NULL),
  ('be9f78a1-4ef7-746c-91db-c005239aaed8', '019d937b-b671-77da-9a1e-5b9b26705894', 'goals_embedding_stale', NULL),
  ('c4e45377-6048-1f72-0af6-9c2db09d192b', '019d937b-b671-77da-9a1e-5b9b26705894', 'activity_logs_embedding_stale', NULL),
  ('c6ce0551-9c16-f43b-b14b-b5943beaf40c', '019d937b-b671-77da-9a1e-5b9b26705894', 'events_embedding_stale', NULL),
  ('c70d0c61-4b1d-6387-6ac8-cf4b9e1b1c1b', '019d937b-b671-77da-9a1e-5b9b26705894', 'expenses_embedding_stale', NULL),
  ('cc5e9fe7-edb0-5b99-085d-f236ef6e5acf', '019d937b-b671-77da-9a1e-5b9b26705894', 'calendar_events_enqueue_embedding', NULL),
  ('d8541738-ce55-e40a-1562-075595697819', '019d937b-b671-77da-9a1e-5b9b26705894', 'agent_logs_enqueue_embedding', NULL),
  ('e5673a28-fcbd-f525-80fe-1b3d4efaa2f6', '019d937b-b671-77da-9a1e-5b9b26705894', 'conversations_embedding_stale', NULL),
  ('eaef8bb7-e380-11d6-68e4-9ea1e52b4b44', '019d937b-b671-77da-9a1e-5b9b26705894', 'messages_embedding_stale', NULL),
  ('ec0936f0-2123-14e6-102b-65a777ea910f', '019d937b-b671-77da-9a1e-5b9b26705894', 'agents_embedding_stale', NULL),
  ('f148485c-c65a-8b55-3b8e-362e2fbf6a2e', '019d937b-b671-77da-9a1e-5b9b26705894', 'companies_embedding_stale', NULL),
  ('f5ae187b-f267-5d58-918d-4eb1152e1050', '019d937b-b671-77da-9a1e-5b9b26705894', 'contacts_search_tsv_tsv', NULL),
  ('f6529f9f-6853-a9ee-8b32-a021e4f845ce', '019d937b-b671-77da-9a1e-5b9b26705894', 'companies_enqueue_embedding', NULL),
  ('f7f5776f-29ab-80c1-598a-3fe205dec5ae', '019d937b-b671-77da-9a1e-5b9b26705894', 'places_embedding_stale', NULL),
  ('f99a14f1-b3c9-f3d2-5798-f18e566cee90', '019d937b-b671-77da-9a1e-5b9b26705894', 'email_threads_enqueue_embedding', NULL),
  ('fb471529-8ff6-1215-720c-32375682d3c2', '019d937b-b671-77da-9a1e-5b9b26705894', 'interactions_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


