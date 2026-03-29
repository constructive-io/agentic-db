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
  ('033d92d3-a68e-7ced-753c-9ef06ff2f4b4', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'agent_logs_embedding_stale', NULL),
  ('050167b0-0fec-9434-c224-76bc99a107a2', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'skills_embedding_stale', NULL),
  ('083126ca-a4e8-22d0-2f2a-8ed46fe5ded9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'calendar_events_search_tsv_tsv', NULL),
  ('0da14e7b-a15d-c354-88d7-d8cda1578877', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'tool_definitions_embedding_stale', NULL),
  ('10255fd9-e1cb-f693-a8fd-543672fedd1f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'trips_enqueue_embedding', NULL),
  ('1449668f-a647-006a-f6b5-c6e7474e213c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'calendar_events_enqueue_embedding', NULL),
  ('14a7a4b9-7bde-77b7-c231-a48e101362bd', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'runtime_states_embedding_stale', NULL),
  ('1ae63220-08cf-ea39-981e-0de3bb10fbd4', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'places_embedding_stale', NULL),
  ('1bd6799d-f1e0-d5d2-db8b-a87d8f6a4e92', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'runtime_logs_embedding_stale', NULL),
  ('27cab84d-9528-211b-d891-78ed243c7af5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'interactions_embedding_stale', NULL),
  ('2b3c2690-6297-7366-ffe4-f7e5cc99b4b5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'deals_embedding_stale', NULL),
  ('2db3f1d7-eaf6-cf00-0105-f81399465032', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'email_threads_embedding_stale', NULL),
  ('2dd73885-e2f6-d9ae-9aca-afb64996e752', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'emails_search_tsv_tsv', NULL),
  ('2e6700f1-a341-9e57-beda-eedc388e17b5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'hiking_trails_enqueue_embedding', NULL),
  ('313fa025-2a5b-be9e-a75f-eeb5fb71a1c5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'runtime_states_enqueue_embedding', NULL),
  ('32280709-872c-6d42-ca83-5289a4372e62', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'places_enqueue_embedding', NULL),
  ('346e522b-087c-1963-2394-fb0c78eee176', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'contacts_enqueue_embedding', NULL),
  ('3491e510-547a-be2d-289e-6b9526424702', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'activity_logs_embedding_stale', NULL),
  ('38508bb5-ab40-a6cd-f416-00a9807ababa', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'companies_search_tsv_tsv', NULL),
  ('3f1c820f-eab3-2318-8593-4c95c95fc0e3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'goals_enqueue_embedding', NULL),
  ('4d59856d-ea23-c49a-17b6-c1d874cbb68f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'prompts_enqueue_embedding', NULL),
  ('4f4b4260-3dfb-fdcb-886d-b75000a13561', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'notes_enqueue_embedding', NULL),
  ('515666d9-5a46-2233-ac47-369b744e9ed0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'memories_enqueue_embedding', NULL),
  ('54990235-e3e1-d6ea-9b68-daf6a76468bd', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'messages_embedding_stale', NULL),
  ('551dd6db-43b3-6c4e-b1dc-257f0e316d79', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'messages_enqueue_embedding', NULL),
  ('55d67636-685a-11ed-811a-079b613fe3b0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'deals_enqueue_embedding', NULL),
  ('56683cba-5d21-7d83-7a2a-15f8f674e659', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'notes_embedding_stale', NULL),
  ('574cbf6f-cb0a-d31a-b6d4-1210f5df41b3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'events_embedding_stale', NULL),
  ('58a126b6-5db5-9145-690f-b107aae3d5e9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'emails_enqueue_embedding', NULL),
  ('61e4d7e9-8fc4-9e44-4f1a-9bde7fc533cd', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'trips_embedding_stale', NULL),
  ('6855362a-294d-7ec5-c884-4d44379b9019', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'venues_embedding_stale', NULL),
  ('6a4cf292-abf3-6a96-0361-836fc37036c9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'agent_logs_enqueue_embedding', NULL),
  ('6d7c30d0-4a7d-091a-6e24-b8d3ae9a3333', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'companies_enqueue_embedding', NULL),
  ('759c3c25-cbeb-152d-b05f-43376e9253a9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'agents_enqueue_embedding', NULL),
  ('7b4deae4-e378-1e84-5b2b-85774f6138bf', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'emails_embedding_stale', NULL),
  ('7d73e3e6-6e0f-94ce-c30b-4de3c514e10b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'codebases_embedding_stale', NULL),
  ('7dce05b2-d154-f62c-1075-2478c0aa8f83', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'touchpoints_embedding_stale', NULL),
  ('804d4ca8-3f04-59cc-5a9d-c4eb0aa331bb', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'conversations_embedding_stale', NULL),
  ('83bd53de-103f-1ec0-e533-174b2c064c46', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'expenses_embedding_stale', NULL),
  ('840f0ded-b6be-077c-0ab3-0f3ffd7563e3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'hiking_trails_embedding_stale', NULL),
  ('86d88140-3445-6989-2609-ad492de2ea8a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'prompts_embedding_stale', NULL),
  ('88aee818-a779-13eb-2293-8b45ec57ca6f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'events_enqueue_embedding', NULL),
  ('891cc882-f1b4-e830-7e1e-27785d3f4ce5', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'codebases_enqueue_embedding', NULL),
  ('924e9148-727a-3618-dd2f-b6b5a488f855', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'runtime_logs_enqueue_embedding', NULL),
  ('95c39823-9280-d179-456d-edbf405fc702', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'venues_search_tsv_tsv', NULL),
  ('9ec34214-c010-6b57-8e59-96f37964ad28', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'projects_embedding_stale', NULL),
  ('a2694dd3-9ddb-7670-bc09-becb2872455c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'companies_embedding_stale', NULL),
  ('a4ceacfc-8990-e486-b0ce-91ebfd24a3fa', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'autonomy_records_embedding_stale', NULL),
  ('a6c655d0-6448-60bc-c204-0cedbe8d0b98', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'code_chunks_embedding_stale', NULL),
  ('a6ca329c-e2e3-cca9-bd97-e79a95a43c37', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'conversations_enqueue_embedding', NULL),
  ('ab20fd6d-4864-50dd-522e-f318fb3aa5f2', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'skills_enqueue_embedding', NULL),
  ('b3e34d39-40f1-b1f7-c474-4dc41872f776', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'email_threads_search_tsv_tsv', NULL),
  ('b851dd1f-9cd5-1839-df61-9a232b06bb13', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'agents_embedding_stale', NULL),
  ('c4d56951-2fe7-ff8b-c73d-8bd298161fda', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'email_threads_enqueue_embedding', NULL),
  ('c4d9b2ea-2aaf-20ef-437a-3e334e4efd53', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'contacts_search_tsv_tsv', NULL),
  ('c7cef99c-e0d0-8b45-faf2-0d7192c7fe63', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'contacts_embedding_stale', NULL),
  ('c8158912-0223-e662-402b-e36bdf0d0e2f', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'expenses_enqueue_embedding', NULL),
  ('cb78018e-8b08-68c5-0083-a8d27252fb0b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'events_search_tsv_tsv', NULL),
  ('ce091c1b-ed12-3814-cc24-74bddc324d4b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'rules_embedding_stale', NULL),
  ('d1e0bf4d-898c-deec-f337-01e1aa72f1e3', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'memories_embedding_stale', NULL),
  ('da837d50-56ca-bed7-f083-47357164457c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'interactions_enqueue_embedding', NULL),
  ('daccb0e6-3968-0e84-41a9-4109255140c6', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'autonomy_records_enqueue_embedding', NULL),
  ('de643e73-f42c-3132-421a-70da8cc76e29', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'users_search_tsv_tsv', NULL),
  ('def49555-adfc-03a3-59c1-9445041574f9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'touchpoints_enqueue_embedding', NULL),
  ('dfa6e259-bcd7-072d-86b1-d9cbe87e1361', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'code_chunks_enqueue_embedding', NULL),
  ('e24f4fa3-6354-3424-30e7-7fd502a89f66', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'goals_embedding_stale', NULL),
  ('e3ad2095-481d-f14f-c529-689d7c851fe8', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'calendar_events_embedding_stale', NULL),
  ('e40f2426-7b87-b87e-8456-7186398b62f9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'tasks_enqueue_embedding', NULL),
  ('e626b7db-6ea1-83f4-64ca-7672e758e6f9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'tasks_embedding_stale', NULL),
  ('e6b47b77-36b3-c021-2c81-3029b4f332cd', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'venues_enqueue_embedding', NULL),
  ('e81dc4e2-9439-7c20-1930-4a020069c8ed', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'activity_logs_enqueue_embedding', NULL),
  ('ea65682e-2228-761e-aac1-af24947e029a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'tool_definitions_enqueue_embedding', NULL),
  ('ed39770b-268f-05d4-fb18-11f4423125a1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'rules_enqueue_embedding', NULL),
  ('fa36fde2-30c1-d950-3111-018daf7c0054', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'projects_enqueue_embedding', NULL),
  ('fd0da16b-d50c-f4ef-8445-621745ef5d65', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'encrypted_secrets_hash', NULL);


SET session_replication_role TO DEFAULT;


