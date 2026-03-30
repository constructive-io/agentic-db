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
  ('009b24eb-b7c9-cc2c-cdcd-bcad6d183f3a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'autonomy_records_embedding_stale', NULL),
  ('019d3d14-e875-7204-b542-f0e595fc4ced', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'users_search_tsv_tsv', NULL),
  ('019d3d15-719e-7f67-9221-7236922f22b2', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'encrypted_secrets_hash', NULL),
  ('053ba974-1624-3e86-d76d-57d63cf3a7c7', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'deals_enqueue_embedding', NULL),
  ('0936b2f6-3472-349e-940e-cd71a898a304', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'trips_embedding_stale', NULL),
  ('0bb273cd-cac9-0758-0707-b5a0d5bf938a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'contacts_enqueue_chunking', NULL),
  ('0fd89f06-35dd-e66a-e41d-663cb5a73fdc', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'memories_enqueue_chunking', NULL),
  ('10577c63-9e85-ccf5-ad3c-6cb47e59c9ca', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'companies_enqueue_embedding', NULL),
  ('122310ec-786e-672f-57c4-33a1f6e888c2', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'email_threads_enqueue_embedding', NULL),
  ('12ce5704-b74f-1a29-e326-c15e7346e2c5', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'activity_logs_embedding_stale', NULL),
  ('1393cb25-af3c-0b17-8a10-b6a0d003d2eb', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'messages_embedding_stale', NULL),
  ('13b37e53-687a-de43-55b1-de6d4577d309', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'tasks_enqueue_embedding', NULL),
  ('14281b61-5d90-71dd-6b86-c05b79e53f0e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'messages_enqueue_chunking', NULL),
  ('149d1929-f5a0-da65-9fcd-f3526cc43c67', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'autonomy_records_enqueue_embedding', NULL),
  ('14c8d56b-5f78-2b3a-104e-c65a5317797a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'trips_enqueue_embedding', NULL),
  ('1551a6d4-73d7-e01b-ea29-7639e003f9cc', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'hiking_trails_enqueue_embedding', NULL),
  ('1602d08d-4aa4-1768-2dd3-80a5dd82c5e5', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'tasks_enqueue_chunking', NULL),
  ('1b98a6fb-af33-207a-9651-1eaa0c03434a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'notes_enqueue_embedding', NULL),
  ('1c05530a-ad56-3beb-b560-fcb6916f707a', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'emails_enqueue_embedding', NULL),
  ('1f1d03b6-1e1e-7f63-9e22-252495481aaa', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'projects_enqueue_embedding', NULL),
  ('232fcf89-372e-63fe-db1d-42c7cdf09bcd', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'venues_embedding_stale', NULL),
  ('24edea05-c359-0866-6693-4254feceed12', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'deals_embedding_stale', NULL),
  ('269c881b-bc30-5a19-77d0-8e3b7358b402', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'events_search_tsv_tsv', NULL),
  ('2821a9f1-16ad-d937-bc96-39b3c12621f1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'runtime_states_embedding_stale', NULL),
  ('2c0c715c-b1dd-5bc7-4d6e-ecedf97c29b6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'venues_enqueue_chunking', NULL),
  ('2c5239ea-5a28-b1f9-f6a1-4fcb7eb95b6f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'contacts_embedding_stale', NULL),
  ('2d365bf3-fa5d-abd2-fe6f-2628080ebbf6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'goals_embedding_stale', NULL),
  ('31baa269-d41f-d774-29f3-b402a5d858aa', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'touchpoints_embedding_stale', NULL),
  ('3641d60a-20c7-6088-308b-559aa0b6e3ae', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'prompts_enqueue_chunking', NULL),
  ('386684a6-6842-0d84-9136-421b81962f5b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'skills_enqueue_embedding', NULL),
  ('3a1bdd81-e2bd-024e-a872-ffdc69453c88', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'runtime_logs_embedding_stale', NULL),
  ('3c77ad94-1c1f-48a8-2857-ef045a077440', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'venues_search_tsv_tsv', NULL),
  ('3d40bef5-80a4-a462-c07c-510d925cf46e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'conversations_enqueue_chunking', NULL),
  ('40d14d22-9422-db91-9bb2-9bb6f2e038c4', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'runtime_logs_enqueue_embedding', NULL),
  ('433ff0a3-c070-94c9-74c3-f4fea35efb01', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'notes_enqueue_chunking', NULL),
  ('43c32223-e5d2-a3a8-bdf7-921dad9e9016', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'conversations_enqueue_embedding', NULL),
  ('4abb8a20-ad97-2da5-773a-61f2f250ea32', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'goals_enqueue_chunking', NULL),
  ('4f313e13-7248-29d6-e240-22649fa67f43', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'touchpoints_enqueue_chunking', NULL),
  ('52c4902b-dacf-7d72-0b8e-57e56f9be0ca', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'notes_embedding_stale', NULL),
  ('56a6e9a8-5a9f-d061-810f-d4525f499a56', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'conversations_embedding_stale', NULL),
  ('574dde49-3d5a-ce26-054c-de05c49dc30e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'rules_enqueue_embedding', NULL),
  ('5a7eda34-5be6-4487-1905-44da28e0b5a1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'codebases_enqueue_chunking', NULL),
  ('5cc4f14d-2584-ea68-855a-c1b132ce8dca', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'activity_logs_enqueue_chunking', NULL),
  ('630409ae-3b33-99c9-ffb7-788e07a6b12d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'tool_definitions_enqueue_embedding', NULL),
  ('637d8282-55a2-ddac-3ec6-b20ef02a13d2', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'skills_enqueue_chunking', NULL),
  ('651b5f57-1f39-9884-c2a6-96e3412ae216', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'events_enqueue_chunking', NULL),
  ('66067311-f8fa-cdd3-f2f3-6f66fba0826e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'events_enqueue_embedding', NULL),
  ('68f7ef7c-f1af-a953-de89-ed97a77e9010', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'expenses_enqueue_embedding', NULL),
  ('6df78f72-a17d-71d0-f4ce-9816b1411d56', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'agent_logs_enqueue_chunking', NULL),
  ('71c431d1-be02-382e-bec5-e21890b25385', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'hiking_trails_embedding_stale', NULL),
  ('732799cc-7359-8d61-3acc-a34bd7561b76', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'touchpoints_enqueue_embedding', NULL),
  ('78c25f52-bf19-d5ac-76a9-27b355487aa3', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'calendar_events_embedding_stale', NULL),
  ('79d65d64-ab96-85d4-7846-9f7614dc3cf1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'skills_embedding_stale', NULL),
  ('7a39fd64-d10b-a936-6494-ac0ad169b37e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'codebases_enqueue_embedding', NULL),
  ('7f82536a-18c8-4e1c-2f47-f5975f473ca6', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'companies_search_tsv_tsv', NULL),
  ('81c35eed-d885-18c1-1dab-4dd4ddfaf301', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'expenses_embedding_stale', NULL),
  ('833a9685-52b8-6814-7067-c7c51ac83070', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'events_embedding_stale', NULL),
  ('8397dba4-32b1-c31d-2ad2-04eb25307c2d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'contacts_search_tsv_tsv', NULL),
  ('8418356d-a94f-a154-6b6e-a42028c682f0', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'places_enqueue_embedding', NULL),
  ('845a871d-a608-9b7f-c798-5bbf32fb0dac', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'agents_enqueue_embedding', NULL),
  ('87145421-8ac7-5a93-ecd0-bd331d16e79b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'prompts_embedding_stale', NULL),
  ('88109246-0ec6-822a-e662-7abe61509135', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'companies_embedding_stale', NULL),
  ('8bd6b0af-a10f-c493-ecbb-a608f0e23a28', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'prompts_enqueue_embedding', NULL),
  ('8fa7e4a0-887a-3be7-19a1-1d3f106685c2', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'tool_definitions_enqueue_chunking', NULL),
  ('92912ab2-ba39-1ace-e251-e4ffb7545623', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'contacts_enqueue_embedding', NULL),
  ('950008f7-6412-7a1b-e0ac-f11b04fc932b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'tasks_embedding_stale', NULL),
  ('978f9ba4-b9de-4166-3218-f5599501ad33', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'email_threads_embedding_stale', NULL),
  ('97ee5065-150e-2d5f-e70e-e9f0889dc1b4', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'memories_embedding_stale', NULL),
  ('99184db9-349e-4f11-fdf2-8aafc28348d0', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'emails_enqueue_chunking', NULL),
  ('9b7a0dcb-fa5d-0910-f448-3940ea9712a5', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'memories_enqueue_embedding', NULL),
  ('9c68ae2e-8a59-7ef4-039f-4002fa46231e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'places_enqueue_chunking', NULL),
  ('9d51e432-759e-0929-edd6-04f90ffe2bc1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'interactions_enqueue_chunking', NULL),
  ('9f7aadd3-ba97-b8d1-d545-aad2c39b833c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'interactions_enqueue_embedding', NULL),
  ('a1204017-77bb-12b6-acd0-72fdbbcd2656', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'expenses_enqueue_chunking', NULL),
  ('a2a9861e-75f6-bdb1-e460-a21e47a6380f', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'rules_enqueue_chunking', NULL),
  ('a2cdece5-89e0-8571-8f64-02424d787a78', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'emails_embedding_stale', NULL),
  ('a3396cb5-79c0-aa3a-7492-cf568dda488b', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'code_chunks_embedding_stale', NULL),
  ('a6dae9f4-24b6-c594-1ed2-282f24cd788d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'trips_enqueue_chunking', NULL),
  ('b9cb022d-2e2f-cfe5-00bd-52872464ed00', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'projects_enqueue_chunking', NULL),
  ('bec89cfd-bb27-98a1-e1af-fb74d3b9b652', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'goals_enqueue_embedding', NULL),
  ('c22b6e90-d05d-2b2c-99ac-abd6e46f6ed2', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'codebases_embedding_stale', NULL),
  ('c3a6ee3f-df54-bb91-c957-65d93ea9f3d8', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'agents_enqueue_chunking', NULL),
  ('c6268479-02d7-f3ba-6ad7-4163ae97754c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'calendar_events_enqueue_embedding', NULL),
  ('c71eaf46-1d18-059f-cf33-49d2ee1b299c', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'places_embedding_stale', NULL),
  ('d09bf8f6-ae60-5c89-a506-e28e7bcacda4', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'deals_enqueue_chunking', NULL),
  ('d1edb9c2-65ca-1723-7c45-c341fa418a72', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'email_threads_search_tsv_tsv', NULL),
  ('d71c30a8-b77a-e392-a0b1-435078d2b5ab', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'runtime_states_enqueue_chunking', NULL),
  ('d84234b2-f55e-2db0-ebe9-6fb7461065de', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'hiking_trails_enqueue_chunking', NULL),
  ('d8c89dcd-e2be-733d-7245-98f4ac5118c7', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'autonomy_records_enqueue_chunking', NULL),
  ('dc6f2c10-4f6e-edee-0498-3e558472eb5d', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'projects_embedding_stale', NULL),
  ('dd60aa1c-9c72-8112-0a86-9984e5a32013', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'runtime_logs_enqueue_chunking', NULL),
  ('e2421a14-cc3f-c86b-55b1-372fa72c4bf1', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'agent_logs_embedding_stale', NULL),
  ('e40dd346-0e0e-d80b-8b1f-5cad6a26fb98', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'agents_embedding_stale', NULL),
  ('e556ade2-977f-337e-7365-fb763fbf064e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'venues_enqueue_embedding', NULL),
  ('e763f8b7-12ba-dddc-db4d-8b5ae9381ef3', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'calendar_events_search_tsv_tsv', NULL),
  ('e85095d0-030a-3c8e-1801-537564421f10', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'rules_embedding_stale', NULL),
  ('ea493902-e010-c665-d79d-2a2fe73d17dd', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'runtime_states_enqueue_embedding', NULL),
  ('eefffb2a-5bc9-9124-f2bb-4b06d2211336', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'email_threads_enqueue_chunking', NULL),
  ('f4744fd8-30de-1d8e-4a85-182f8cafce17', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'calendar_events_enqueue_chunking', NULL),
  ('f4d857d9-5eda-8565-5e07-0baac5532d2e', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'code_chunks_enqueue_embedding', NULL),
  ('f626f6de-2d34-4e69-cc60-ff3208a743fa', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'emails_search_tsv_tsv', NULL),
  ('f8fb8bfe-5349-a770-c35b-fe89a442f532', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'messages_enqueue_embedding', NULL),
  ('f98546b4-3d6e-5da6-548f-0db1138d93b3', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'agent_logs_enqueue_embedding', NULL),
  ('f9a8c9cb-144e-5b67-d08a-5017e6e3c019', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'activity_logs_enqueue_embedding', NULL),
  ('fa45f1a1-ff19-584e-d53c-60faf6378d87', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'companies_enqueue_chunking', NULL),
  ('fcf53ef4-0ed6-7d34-3f99-a59639e5c0b2', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'interactions_embedding_stale', NULL),
  ('ff264fd6-1033-0b22-b178-a809e5d92f52', '019d3d14-e4d9-7da9-8899-3e3a337a3080', 'tool_definitions_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


