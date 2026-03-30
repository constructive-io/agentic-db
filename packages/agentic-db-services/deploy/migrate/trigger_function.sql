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
  ('019d3dab-01f1-756e-876e-323a4545dc01', '019d3daa-fe1f-718c-ac17-5692dc771810', 'users_search_tsv_tsv', NULL),
  ('019d3dab-9c32-7542-b913-5fb9773ce39f', '019d3daa-fe1f-718c-ac17-5692dc771810', 'encrypted_secrets_hash', NULL),
  ('019d3dac-2640-7092-82fe-488eb9cf5203', '019d3daa-fe1f-718c-ac17-5692dc771810', 'contacts_search_tsv_tsv', NULL),
  ('019d3dac-270e-78d5-b3a9-043b07e5fc85', '019d3daa-fe1f-718c-ac17-5692dc771810', 'contacts_embedding_stale', NULL),
  ('019d3dac-2748-7372-a832-66e1f07c6d3c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'contacts_enqueue_embedding', NULL),
  ('019d3dac-2abf-7607-9f10-7d3cd13e2f97', '019d3daa-fe1f-718c-ac17-5692dc771810', 'contacts_enqueue_chunking', NULL),
  ('019d3dac-2e31-7966-944a-a4661079dfcd', '019d3daa-fe1f-718c-ac17-5692dc771810', 'companies_search_tsv_tsv', NULL),
  ('019d3dac-2ee1-726e-92a1-fbd208666158', '019d3daa-fe1f-718c-ac17-5692dc771810', 'companies_embedding_stale', NULL),
  ('019d3dac-2f14-70c0-86c6-d6faddbdb9d6', '019d3daa-fe1f-718c-ac17-5692dc771810', 'companies_enqueue_embedding', NULL),
  ('019d3dac-3243-77db-8736-34e931cdd28e', '019d3daa-fe1f-718c-ac17-5692dc771810', 'companies_enqueue_chunking', NULL),
  ('019d3dac-35d8-711d-95fe-bceff2523576', '019d3daa-fe1f-718c-ac17-5692dc771810', 'deals_embedding_stale', NULL),
  ('019d3dac-360a-7cde-9798-aa2df0385e01', '019d3daa-fe1f-718c-ac17-5692dc771810', 'deals_enqueue_embedding', NULL),
  ('019d3dac-3936-7fdb-8311-1b7fd7764fad', '019d3daa-fe1f-718c-ac17-5692dc771810', 'deals_enqueue_chunking', NULL),
  ('019d3dac-3cb6-7050-a63c-c115ee97b74c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'events_search_tsv_tsv', NULL),
  ('019d3dac-3d73-7cfb-9a77-b3cfa4e36761', '019d3daa-fe1f-718c-ac17-5692dc771810', 'events_embedding_stale', NULL),
  ('019d3dac-3da8-73f5-9c9b-737c6e859d5f', '019d3daa-fe1f-718c-ac17-5692dc771810', 'events_enqueue_embedding', NULL),
  ('019d3dac-40e3-7f8b-9c1d-ecb33f128551', '019d3daa-fe1f-718c-ac17-5692dc771810', 'events_enqueue_chunking', NULL),
  ('019d3dac-44ee-7926-bc21-cbdd5386ec11', '019d3daa-fe1f-718c-ac17-5692dc771810', 'venues_search_tsv_tsv', NULL),
  ('019d3dac-45a6-737f-9ba7-5dd25327e4de', '019d3daa-fe1f-718c-ac17-5692dc771810', 'venues_embedding_stale', NULL),
  ('019d3dac-45db-710f-b636-422cd5ff1a3c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'venues_enqueue_embedding', NULL),
  ('019d3dac-4ca2-79d5-83d4-d196bc343a8c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'venues_enqueue_chunking', NULL),
  ('019d3dac-5361-7315-9e08-800b3d59b1de', '019d3daa-fe1f-718c-ac17-5692dc771810', 'notes_embedding_stale', NULL),
  ('019d3dac-5398-7248-893c-0b8f6af163f2', '019d3daa-fe1f-718c-ac17-5692dc771810', 'notes_enqueue_embedding', NULL),
  ('019d3dac-56f2-78eb-8fa7-0013f5fefefc', '019d3daa-fe1f-718c-ac17-5692dc771810', 'notes_enqueue_chunking', NULL),
  ('019d3dac-5ade-7734-b958-23ce1fb7b798', '019d3daa-fe1f-718c-ac17-5692dc771810', 'interactions_embedding_stale', NULL),
  ('019d3dac-5b13-7031-92fe-d299943c175e', '019d3daa-fe1f-718c-ac17-5692dc771810', 'interactions_enqueue_embedding', NULL),
  ('019d3dac-5e69-7d19-bf64-4e8ed8d9a4c1', '019d3daa-fe1f-718c-ac17-5692dc771810', 'interactions_enqueue_chunking', NULL),
  ('019d3dac-62dd-768a-9704-e7671b11b342', '019d3daa-fe1f-718c-ac17-5692dc771810', 'touchpoints_embedding_stale', NULL),
  ('019d3dac-6313-7a83-ad59-2b75cd5c689a', '019d3daa-fe1f-718c-ac17-5692dc771810', 'touchpoints_enqueue_embedding', NULL),
  ('019d3dac-6680-7034-8d49-27f48056dfe7', '019d3daa-fe1f-718c-ac17-5692dc771810', 'touchpoints_enqueue_chunking', NULL),
  ('019d3dac-a272-7144-8512-76f90aca9fff', '019d3daa-fe1f-718c-ac17-5692dc771810', 'agents_embedding_stale', NULL),
  ('019d3dac-a2b0-7077-aa65-1542a4fab802', '019d3daa-fe1f-718c-ac17-5692dc771810', 'agents_enqueue_embedding', NULL),
  ('019d3dac-a621-7a6e-b951-996319359e6e', '019d3daa-fe1f-718c-ac17-5692dc771810', 'agents_enqueue_chunking', NULL),
  ('019d3dac-aa4a-791c-b098-375d179b9450', '019d3daa-fe1f-718c-ac17-5692dc771810', 'tasks_embedding_stale', NULL),
  ('019d3dac-aa81-7152-ad17-4d67e9cb9062', '019d3daa-fe1f-718c-ac17-5692dc771810', 'tasks_enqueue_embedding', NULL),
  ('019d3dac-ae0d-734f-8f2c-b913b0f6aefa', '019d3daa-fe1f-718c-ac17-5692dc771810', 'tasks_enqueue_chunking', NULL),
  ('019d3dac-b187-70aa-ba4d-92e5a581d68a', '019d3daa-fe1f-718c-ac17-5692dc771810', 'agent_logs_embedding_stale', NULL),
  ('019d3dac-b1b4-7c28-adcf-bcb8c3912ca5', '019d3daa-fe1f-718c-ac17-5692dc771810', 'agent_logs_enqueue_embedding', NULL),
  ('019d3dac-b4bd-7e48-bf05-87d4439114c9', '019d3daa-fe1f-718c-ac17-5692dc771810', 'agent_logs_enqueue_chunking', NULL),
  ('019d3dac-b865-715f-a7a9-31f166f85880', '019d3daa-fe1f-718c-ac17-5692dc771810', 'rules_embedding_stale', NULL),
  ('019d3dac-b896-7df8-a1e3-e8cab9eac7b2', '019d3daa-fe1f-718c-ac17-5692dc771810', 'rules_enqueue_embedding', NULL),
  ('019d3dac-bbae-7eb0-a518-e67ba87b92aa', '019d3daa-fe1f-718c-ac17-5692dc771810', 'rules_enqueue_chunking', NULL),
  ('019d3dac-bf4e-7273-b26b-434018a44e97', '019d3daa-fe1f-718c-ac17-5692dc771810', 'skills_embedding_stale', NULL),
  ('019d3dac-bf86-7f54-870b-6f4e48762386', '019d3daa-fe1f-718c-ac17-5692dc771810', 'skills_enqueue_embedding', NULL),
  ('019d3dac-c2e5-76f1-99a2-7fcc39ae0232', '019d3daa-fe1f-718c-ac17-5692dc771810', 'skills_enqueue_chunking', NULL),
  ('019d3dac-c683-7d42-9f7b-d65d23bd9215', '019d3daa-fe1f-718c-ac17-5692dc771810', 'tool_definitions_embedding_stale', NULL),
  ('019d3dac-c6b5-7311-8eb6-fb640b6f8c1a', '019d3daa-fe1f-718c-ac17-5692dc771810', 'tool_definitions_enqueue_embedding', NULL),
  ('019d3dac-c9e1-7c6e-9a51-5be33450a6a6', '019d3daa-fe1f-718c-ac17-5692dc771810', 'tool_definitions_enqueue_chunking', NULL),
  ('019d3dac-cd61-756e-b953-2a64b9e15ccb', '019d3daa-fe1f-718c-ac17-5692dc771810', 'prompts_embedding_stale', NULL),
  ('019d3dac-cd93-7167-8fcf-fe274224afa6', '019d3daa-fe1f-718c-ac17-5692dc771810', 'prompts_enqueue_embedding', NULL),
  ('019d3dac-d3f2-7287-9197-2651ade7e3f2', '019d3daa-fe1f-718c-ac17-5692dc771810', 'prompts_enqueue_chunking', NULL),
  ('019d3dac-d7bb-70b8-b296-fd5f47fe5db1', '019d3daa-fe1f-718c-ac17-5692dc771810', 'expenses_embedding_stale', NULL),
  ('019d3dac-d7f1-7fd8-bdbf-33bb8a490bb0', '019d3daa-fe1f-718c-ac17-5692dc771810', 'expenses_enqueue_embedding', NULL),
  ('019d3dac-db83-7f54-9103-f45876d29419', '019d3daa-fe1f-718c-ac17-5692dc771810', 'expenses_enqueue_chunking', NULL),
  ('019d3dac-ed4c-71fe-bf64-27a0f57a126c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'runtime_states_embedding_stale', NULL),
  ('019d3dac-ed8b-7b9f-a596-b495cbe5f64d', '019d3daa-fe1f-718c-ac17-5692dc771810', 'runtime_states_enqueue_embedding', NULL),
  ('019d3dac-f0bc-784b-a09e-518e91b4eb7f', '019d3daa-fe1f-718c-ac17-5692dc771810', 'runtime_states_enqueue_chunking', NULL),
  ('019d3dac-f46f-7413-89d5-cc9ff4b22010', '019d3daa-fe1f-718c-ac17-5692dc771810', 'runtime_logs_embedding_stale', NULL),
  ('019d3dac-f49f-7a67-a3ba-a40cac41a8fd', '019d3daa-fe1f-718c-ac17-5692dc771810', 'runtime_logs_enqueue_embedding', NULL),
  ('019d3dac-f7d7-70fb-a636-5416b916a8be', '019d3daa-fe1f-718c-ac17-5692dc771810', 'runtime_logs_enqueue_chunking', NULL),
  ('019d3dad-0947-73e9-aeeb-11e469da6b61', '019d3daa-fe1f-718c-ac17-5692dc771810', 'conversations_embedding_stale', NULL),
  ('019d3dad-097d-7148-962f-221a03a5b9d0', '019d3daa-fe1f-718c-ac17-5692dc771810', 'conversations_enqueue_embedding', NULL),
  ('019d3dad-0cc0-737e-a0a2-6d18a94733d0', '019d3daa-fe1f-718c-ac17-5692dc771810', 'conversations_enqueue_chunking', NULL),
  ('019d3dad-10ed-7ae9-b1b7-d47442b1a7f9', '019d3daa-fe1f-718c-ac17-5692dc771810', 'messages_embedding_stale', NULL),
  ('019d3dad-1125-7148-8cfc-94d9f4390e6d', '019d3daa-fe1f-718c-ac17-5692dc771810', 'messages_enqueue_embedding', NULL),
  ('019d3dad-149a-7d2d-b5fe-eda6084666c1', '019d3daa-fe1f-718c-ac17-5692dc771810', 'messages_enqueue_chunking', NULL),
  ('019d3dad-290c-74d1-9f82-9b7da3130224', '019d3daa-fe1f-718c-ac17-5692dc771810', 'projects_embedding_stale', NULL),
  ('019d3dad-294d-794a-9666-c3f0d7b534e2', '019d3daa-fe1f-718c-ac17-5692dc771810', 'projects_enqueue_embedding', NULL),
  ('019d3dad-2caf-7810-bb1d-930fdf3dffba', '019d3daa-fe1f-718c-ac17-5692dc771810', 'projects_enqueue_chunking', NULL),
  ('019d3dad-38df-7ffe-bc5e-7cb73df9be19', '019d3daa-fe1f-718c-ac17-5692dc771810', 'codebases_embedding_stale', NULL),
  ('019d3dad-3924-7984-8cda-62fd8875f6a0', '019d3daa-fe1f-718c-ac17-5692dc771810', 'codebases_enqueue_embedding', NULL),
  ('019d3dad-3c84-7021-bd08-aea8624e719b', '019d3daa-fe1f-718c-ac17-5692dc771810', 'codebases_enqueue_chunking', NULL),
  ('019d3dad-40b9-7763-a428-f23d64d1d89d', '019d3daa-fe1f-718c-ac17-5692dc771810', 'code_chunks_embedding_stale', NULL),
  ('019d3dad-40ef-736d-86b6-471be8a6cbb1', '019d3daa-fe1f-718c-ac17-5692dc771810', 'code_chunks_enqueue_embedding', NULL),
  ('019d3dad-4ff6-7ff7-bb80-eba3a6512fba', '019d3daa-fe1f-718c-ac17-5692dc771810', 'goals_embedding_stale', NULL),
  ('019d3dad-5048-7991-9968-d554c5c27d7e', '019d3daa-fe1f-718c-ac17-5692dc771810', 'goals_enqueue_embedding', NULL),
  ('019d3dad-55f5-7fbe-af02-8c89ac8bf636', '019d3daa-fe1f-718c-ac17-5692dc771810', 'goals_enqueue_chunking', NULL),
  ('019d3dad-5cf0-7be8-9d85-3902217722b6', '019d3daa-fe1f-718c-ac17-5692dc771810', 'activity_logs_embedding_stale', NULL),
  ('019d3dad-5d2a-70cb-a306-a99614b95dd7', '019d3daa-fe1f-718c-ac17-5692dc771810', 'activity_logs_enqueue_embedding', NULL),
  ('019d3dad-60df-7c43-aa9e-7d01d8683401', '019d3daa-fe1f-718c-ac17-5692dc771810', 'activity_logs_enqueue_chunking', NULL),
  ('019d3dad-650c-7697-8795-9e55e44fb687', '019d3daa-fe1f-718c-ac17-5692dc771810', 'memories_embedding_stale', NULL),
  ('019d3dad-6545-7ff1-a884-c83a074a291e', '019d3daa-fe1f-718c-ac17-5692dc771810', 'memories_enqueue_embedding', NULL),
  ('019d3dad-6900-7545-a84e-4dbbc30d54f2', '019d3daa-fe1f-718c-ac17-5692dc771810', 'memories_enqueue_chunking', NULL),
  ('019d3dad-6d39-7899-bf04-70e2ca7fbdcf', '019d3daa-fe1f-718c-ac17-5692dc771810', 'trips_embedding_stale', NULL),
  ('019d3dad-6d75-7a61-8592-b03a9c1334cb', '019d3daa-fe1f-718c-ac17-5692dc771810', 'trips_enqueue_embedding', NULL),
  ('019d3dad-7129-7521-9da6-5ca56a062827', '019d3daa-fe1f-718c-ac17-5692dc771810', 'trips_enqueue_chunking', NULL),
  ('019d3dad-75b0-762f-8bf5-52387114bc5d', '019d3daa-fe1f-718c-ac17-5692dc771810', 'hiking_trails_embedding_stale', NULL),
  ('019d3dad-75ed-7f66-9918-7d82dbbb59d2', '019d3daa-fe1f-718c-ac17-5692dc771810', 'hiking_trails_enqueue_embedding', NULL),
  ('019d3dad-7996-77c8-9aa3-dff2598d7b1f', '019d3daa-fe1f-718c-ac17-5692dc771810', 'hiking_trails_enqueue_chunking', NULL),
  ('019d3dad-7e17-7910-840b-d058e64a910e', '019d3daa-fe1f-718c-ac17-5692dc771810', 'places_embedding_stale', NULL),
  ('019d3dad-7e55-7410-a03d-028aa012af11', '019d3daa-fe1f-718c-ac17-5692dc771810', 'places_enqueue_embedding', NULL),
  ('019d3dad-8224-7639-8617-98932575266b', '019d3daa-fe1f-718c-ac17-5692dc771810', 'places_enqueue_chunking', NULL),
  ('019d3dad-8f89-796d-8bc9-b4000f7315e7', '019d3daa-fe1f-718c-ac17-5692dc771810', 'email_threads_search_tsv_tsv', NULL),
  ('019d3dad-9069-746c-bc00-9f36c49ecc59', '019d3daa-fe1f-718c-ac17-5692dc771810', 'email_threads_embedding_stale', NULL),
  ('019d3dad-90a3-7db9-bcce-d32bd1d55b7b', '019d3daa-fe1f-718c-ac17-5692dc771810', 'email_threads_enqueue_embedding', NULL),
  ('019d3dad-943c-7a37-9411-3e285fb83ebc', '019d3daa-fe1f-718c-ac17-5692dc771810', 'email_threads_enqueue_chunking', NULL),
  ('019d3dad-9864-79c1-98f1-b6c1f47efd73', '019d3daa-fe1f-718c-ac17-5692dc771810', 'emails_search_tsv_tsv', NULL),
  ('019d3dad-9933-785a-9d83-93e8d1ed069c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'emails_embedding_stale', NULL),
  ('019d3dad-996b-757d-b372-a9085a4e0972', '019d3daa-fe1f-718c-ac17-5692dc771810', 'emails_enqueue_embedding', NULL),
  ('019d3dad-9d06-75af-8d2f-1974d9fcea69', '019d3daa-fe1f-718c-ac17-5692dc771810', 'emails_enqueue_chunking', NULL),
  ('019d3dad-a681-792c-84a0-89e1e66d4af0', '019d3daa-fe1f-718c-ac17-5692dc771810', 'calendar_events_search_tsv_tsv', NULL),
  ('019d3dad-a753-7a04-b362-216b6c862a54', '019d3daa-fe1f-718c-ac17-5692dc771810', 'calendar_events_embedding_stale', NULL),
  ('019d3dad-a791-7e0a-919e-df15f86b80f3', '019d3daa-fe1f-718c-ac17-5692dc771810', 'calendar_events_enqueue_embedding', NULL),
  ('019d3dad-ab75-7cc8-8335-e65b2cc131c9', '019d3daa-fe1f-718c-ac17-5692dc771810', 'calendar_events_enqueue_chunking', NULL),
  ('019d3dad-d91e-703f-9fbe-3f022f36d4c6', '019d3daa-fe1f-718c-ac17-5692dc771810', 'autonomy_records_embedding_stale', NULL),
  ('019d3dad-d95a-77d6-a56c-e42e847d8cad', '019d3daa-fe1f-718c-ac17-5692dc771810', 'autonomy_records_enqueue_embedding', NULL),
  ('019d3dad-dd28-717f-801f-d8823e1814a5', '019d3daa-fe1f-718c-ac17-5692dc771810', 'autonomy_records_enqueue_chunking', NULL);


SET session_replication_role TO DEFAULT;


