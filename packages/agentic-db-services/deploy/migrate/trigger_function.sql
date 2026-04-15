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
  ('00c9cae5-a54b-cb78-f583-9fcd1cdc2881', '019d934f-84fc-7efb-8598-917bbf218b99', 'companies_enqueue_embedding', NULL),
  ('019d934f-8b69-717c-b6d9-4d6fde590f1b', '019d934f-84fc-7efb-8598-917bbf218b99', 'users_search_tsv_tsv', NULL),
  ('019d9350-66f7-7e29-85f5-fb1089128383', '019d934f-84fc-7efb-8598-917bbf218b99', 'encrypted_secrets_hash', NULL),
  ('019d9350-b3e8-7ffd-a080-2c2b46d8fd25', '019d934f-84fc-7efb-8598-917bbf218b99', 'buckets_force_current_user_actor_id', NULL),
  ('019d9350-b42f-7c1f-9e92-c2b7dcd2b32e', '019d934f-84fc-7efb-8598-917bbf218b99', 'buckets_immutable_fields', NULL),
  ('019d9350-bc50-754c-a7ff-e7069b4d2074', '019d934f-84fc-7efb-8598-917bbf218b99', 'files_inherit_from_parent', NULL),
  ('019d9350-bcad-75bd-bc60-acad2a42ff70', '019d934f-84fc-7efb-8598-917bbf218b99', 'files_force_current_user_actor_id', NULL),
  ('019d9350-bcef-7fec-a22e-a58ad80aec2b', '019d934f-84fc-7efb-8598-917bbf218b99', 'files_immutable_fields', NULL),
  ('019d9350-c562-702b-a9bb-c0a326387c35', '019d934f-84fc-7efb-8598-917bbf218b99', 'upload_requests_inherit_from_parent', NULL),
  ('019d9350-c599-7d50-a45b-0781db0f3036', '019d934f-84fc-7efb-8598-917bbf218b99', 'upload_requests_force_current_user_actor_id', NULL),
  ('019d9350-c5d6-71ac-b643-c49db84bf9bb', '019d934f-84fc-7efb-8598-917bbf218b99', 'upload_requests_immutable_fields', NULL),
  ('0c1a2593-c867-91eb-61f1-a313fe8b402a', '019d934f-84fc-7efb-8598-917bbf218b99', 'emails_embedding_stale', NULL),
  ('0d57f6f7-cc77-4b7b-ef5b-58e20bc8228f', '019d934f-84fc-7efb-8598-917bbf218b99', 'contacts_embedding_stale', NULL),
  ('0ecd113c-84cc-440c-f0e6-2fb14a8e2781', '019d934f-84fc-7efb-8598-917bbf218b99', 'calendar_events_search_tsv_tsv', NULL),
  ('1146065e-70c2-509d-8d86-3463656960b7', '019d934f-84fc-7efb-8598-917bbf218b99', 'tool_definitions_embedding_stale', NULL),
  ('12bc05b1-6dd6-ff5c-785c-a22cf36ea9e5', '019d934f-84fc-7efb-8598-917bbf218b99', 'emails_enqueue_embedding', NULL),
  ('12d74563-0353-7463-63d2-053172d1e5bd', '019d934f-84fc-7efb-8598-917bbf218b99', 'projects_embedding_stale', NULL),
  ('134cf542-8311-c4ab-4d50-989244d1b57a', '019d934f-84fc-7efb-8598-917bbf218b99', 'events_search_tsv_tsv', NULL),
  ('13a9c26e-adc5-bd70-ab2a-39d152a120fb', '019d934f-84fc-7efb-8598-917bbf218b99', 'autonomy_records_enqueue_embedding', NULL),
  ('15b75f7c-c874-763d-8ff9-603fd053a9a2', '019d934f-84fc-7efb-8598-917bbf218b99', 'runtime_logs_enqueue_embedding', NULL),
  ('18a1aefe-675c-e449-22ac-3e703e6044fd', '019d934f-84fc-7efb-8598-917bbf218b99', 'goals_enqueue_embedding', NULL),
  ('1b6b3632-3c26-6fa2-1fa1-8301f3cc2495', '019d934f-84fc-7efb-8598-917bbf218b99', 'skills_enqueue_embedding', NULL),
  ('23c9de5f-9ecc-faf7-adb2-668a9b94190c', '019d934f-84fc-7efb-8598-917bbf218b99', 'venues_enqueue_embedding', NULL),
  ('29e94a64-17e9-e736-0849-e298cb3ddaad', '019d934f-84fc-7efb-8598-917bbf218b99', 'contacts_enqueue_embedding', NULL),
  ('2ab680c0-12e3-2fe9-8ea6-ed54a3d16871', '019d934f-84fc-7efb-8598-917bbf218b99', 'touchpoints_embedding_stale', NULL),
  ('2cc4ae79-6f73-8101-8ba0-0057bd01e0b4', '019d934f-84fc-7efb-8598-917bbf218b99', 'conversations_enqueue_embedding', NULL),
  ('2d1d6bcd-d510-8ade-b6bf-f0341e4a239a', '019d934f-84fc-7efb-8598-917bbf218b99', 'calendar_events_embedding_stale', NULL),
  ('355ffca4-ae76-c3ef-9269-4f9aa3ad83ff', '019d934f-84fc-7efb-8598-917bbf218b99', 'tool_definitions_enqueue_embedding', NULL),
  ('3d292c97-ea36-11d2-5fd2-5fd771bf2116', '019d934f-84fc-7efb-8598-917bbf218b99', 'codebases_enqueue_embedding', NULL),
  ('418f8f83-7a23-8c64-1b64-c0790953539f', '019d934f-84fc-7efb-8598-917bbf218b99', 'notes_embedding_stale', NULL),
  ('45cbffe5-3dd2-6c5d-67ad-8a6d9da665ed', '019d934f-84fc-7efb-8598-917bbf218b99', 'venues_search_tsv_tsv', NULL),
  ('4822320b-e5da-3079-900b-db88670a5712', '019d934f-84fc-7efb-8598-917bbf218b99', 'expenses_enqueue_embedding', NULL),
  ('4a0d3b68-e669-e083-57b2-dad37f91055e', '019d934f-84fc-7efb-8598-917bbf218b99', 'emails_search_tsv_tsv', NULL),
  ('4c94aa23-20a1-07f6-4162-6350a00f50f6', '019d934f-84fc-7efb-8598-917bbf218b99', 'deals_embedding_stale', NULL),
  ('5c5dbb74-11be-5157-32b0-0339fbb7e81b', '019d934f-84fc-7efb-8598-917bbf218b99', 'events_embedding_stale', NULL),
  ('5ccc1ac8-cdd8-ce04-81ea-8d743b5de2b3', '019d934f-84fc-7efb-8598-917bbf218b99', 'calendar_events_enqueue_embedding', NULL),
  ('60dde036-c9e9-3080-41a9-46769954b5b8', '019d934f-84fc-7efb-8598-917bbf218b99', 'conversations_embedding_stale', NULL),
  ('62358402-bf31-5077-dd38-f066abc624b5', '019d934f-84fc-7efb-8598-917bbf218b99', 'runtime_states_enqueue_embedding', NULL),
  ('63cb4373-5047-f772-d893-d046398293b5', '019d934f-84fc-7efb-8598-917bbf218b99', 'touchpoints_enqueue_embedding', NULL),
  ('6e33c582-4ec8-702a-f875-3fc35b5ecd32', '019d934f-84fc-7efb-8598-917bbf218b99', 'runtime_states_embedding_stale', NULL),
  ('768664e9-dcff-1cf4-7a09-e31c09f4ed68', '019d934f-84fc-7efb-8598-917bbf218b99', 'projects_enqueue_embedding', NULL),
  ('771411f9-1775-c017-ede3-2600f63c2e4c', '019d934f-84fc-7efb-8598-917bbf218b99', 'messages_embedding_stale', NULL),
  ('79c6cd79-ab4d-a62e-08a6-a45a67e609a6', '019d934f-84fc-7efb-8598-917bbf218b99', 'messages_enqueue_embedding', NULL),
  ('7cd4456e-0eb6-7fce-9596-808a1c941f62', '019d934f-84fc-7efb-8598-917bbf218b99', 'memories_embedding_stale', NULL),
  ('7fb7477f-1b17-0bec-7c0f-566b0ef4344e', '019d934f-84fc-7efb-8598-917bbf218b99', 'runtime_logs_embedding_stale', NULL),
  ('835952d5-2371-c9f8-e8ec-f281a55baf9b', '019d934f-84fc-7efb-8598-917bbf218b99', 'codebases_embedding_stale', NULL),
  ('87765abc-8a74-9a29-2bdf-9c3e2f5b660a', '019d934f-84fc-7efb-8598-917bbf218b99', 'interactions_embedding_stale', NULL),
  ('8c3ffa57-9938-76ea-9769-114c162d57fc', '019d934f-84fc-7efb-8598-917bbf218b99', 'trips_embedding_stale', NULL),
  ('8cf182d8-86a7-96ec-41c3-5a327396380c', '019d934f-84fc-7efb-8598-917bbf218b99', 'agents_embedding_stale', NULL),
  ('9221d324-2ec1-d746-e0ea-562b52b5920f', '019d934f-84fc-7efb-8598-917bbf218b99', 'memories_enqueue_embedding', NULL),
  ('95389fec-ee93-c2db-d038-6100e92e54d3', '019d934f-84fc-7efb-8598-917bbf218b99', 'tasks_embedding_stale', NULL),
  ('9be30a45-fd78-4f6e-4f94-17fe3ed4e70b', '019d934f-84fc-7efb-8598-917bbf218b99', 'companies_embedding_stale', NULL),
  ('9d2bf5e3-a1c6-ed5b-6d58-da86b0b10439', '019d934f-84fc-7efb-8598-917bbf218b99', 'agent_logs_embedding_stale', NULL),
  ('a3ae920e-dd24-74f1-2621-dd12d5234990', '019d934f-84fc-7efb-8598-917bbf218b99', 'places_enqueue_embedding', NULL),
  ('aac4fd6a-c713-dd99-6bde-127168361b76', '019d934f-84fc-7efb-8598-917bbf218b99', 'places_embedding_stale', NULL),
  ('ab337e39-50e7-67ae-93f9-d18e2358759e', '019d934f-84fc-7efb-8598-917bbf218b99', 'hiking_trails_embedding_stale', NULL),
  ('b9e6902a-f6a2-08b9-45c6-dadfc3708f36', '019d934f-84fc-7efb-8598-917bbf218b99', 'deals_enqueue_embedding', NULL),
  ('baa583a3-8c17-f04a-aa64-0cfa82b5d9a2', '019d934f-84fc-7efb-8598-917bbf218b99', 'expenses_embedding_stale', NULL),
  ('bb26a0f6-629e-e0cf-b94c-3de57442f25c', '019d934f-84fc-7efb-8598-917bbf218b99', 'venues_embedding_stale', NULL),
  ('c3113fdd-6e39-3149-1cbc-b95dc8482e08', '019d934f-84fc-7efb-8598-917bbf218b99', 'autonomy_records_embedding_stale', NULL),
  ('c6ab530c-495e-39a7-f592-2413aa1925a5', '019d934f-84fc-7efb-8598-917bbf218b99', 'code_chunks_embedding_stale', NULL),
  ('c6f4a2c6-4c6c-c9fb-1aff-0732cd1cdead', '019d934f-84fc-7efb-8598-917bbf218b99', 'activity_logs_embedding_stale', NULL),
  ('c73d0043-ac28-f182-9c19-7618c76230ec', '019d934f-84fc-7efb-8598-917bbf218b99', 'trips_enqueue_embedding', NULL),
  ('d2f69851-0f8d-a508-53e8-f4f9f80c176a', '019d934f-84fc-7efb-8598-917bbf218b99', 'goals_embedding_stale', NULL),
  ('d658bc0b-0f7f-3530-d56d-9448f429e39d', '019d934f-84fc-7efb-8598-917bbf218b99', 'notes_enqueue_embedding', NULL),
  ('d6a02a33-2c19-93ac-3800-64a3a08dfc5a', '019d934f-84fc-7efb-8598-917bbf218b99', 'prompts_embedding_stale', NULL),
  ('d75ee793-856c-aa0b-0ec0-1d9e99c30b31', '019d934f-84fc-7efb-8598-917bbf218b99', 'interactions_enqueue_embedding', NULL),
  ('d7b1fd9e-697c-c0e6-b306-75d1d21ccfab', '019d934f-84fc-7efb-8598-917bbf218b99', 'prompts_enqueue_embedding', NULL),
  ('db54d111-7474-1f1e-c994-2ed762a7a7a6', '019d934f-84fc-7efb-8598-917bbf218b99', 'agents_enqueue_embedding', NULL),
  ('db571da2-5cc2-ec29-3f5d-b4c87bc43400', '019d934f-84fc-7efb-8598-917bbf218b99', 'companies_search_tsv_tsv', NULL),
  ('e078e3db-e69e-b275-34fd-4fda520fe156', '019d934f-84fc-7efb-8598-917bbf218b99', 'activity_logs_enqueue_embedding', NULL),
  ('e33cdc9f-d101-8c22-8b67-94fb855ee596', '019d934f-84fc-7efb-8598-917bbf218b99', 'hiking_trails_enqueue_embedding', NULL),
  ('e3488e16-d0d3-40c9-2289-612b47df7cf4', '019d934f-84fc-7efb-8598-917bbf218b99', 'rules_embedding_stale', NULL),
  ('e3db89a9-9bbf-cc4b-3b84-58e1ef1e4f82', '019d934f-84fc-7efb-8598-917bbf218b99', 'email_threads_embedding_stale', NULL),
  ('e667b105-bc09-1517-0ba0-4aef7369df67', '019d934f-84fc-7efb-8598-917bbf218b99', 'contacts_search_tsv_tsv', NULL),
  ('e91cd5e9-d49f-1186-fa33-affaa3f34b91', '019d934f-84fc-7efb-8598-917bbf218b99', 'code_chunks_enqueue_embedding', NULL),
  ('e97a1a55-9b2f-7a69-904f-3dcb1eed25a7', '019d934f-84fc-7efb-8598-917bbf218b99', 'events_enqueue_embedding', NULL),
  ('ed0a9905-661b-fc0c-21cd-df935a3b251b', '019d934f-84fc-7efb-8598-917bbf218b99', 'email_threads_search_tsv_tsv', NULL),
  ('ee52a8e2-c7b2-5a3b-91c6-d70ccb3348c8', '019d934f-84fc-7efb-8598-917bbf218b99', 'skills_embedding_stale', NULL),
  ('f30a0992-2ad3-2313-451c-3809e408f1de', '019d934f-84fc-7efb-8598-917bbf218b99', 'email_threads_enqueue_embedding', NULL),
  ('fc32c3e7-43f6-a2ea-f6c3-3efe92038ea3', '019d934f-84fc-7efb-8598-917bbf218b99', 'rules_enqueue_embedding', NULL),
  ('fcf48165-303a-42f2-d9f0-662c8cab7b66', '019d934f-84fc-7efb-8598-917bbf218b99', 'tasks_enqueue_embedding', NULL),
  ('ffa0e677-b3b1-bf19-e8f7-a5c086bdd0bd', '019d934f-84fc-7efb-8598-917bbf218b99', 'agent_logs_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


