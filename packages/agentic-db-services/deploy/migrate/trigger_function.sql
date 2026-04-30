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
  ('0191adaf-c39c-0829-611e-9c34ac55a45e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'projects_enqueue_embedding', NULL),
  ('048c3325-e29e-3d0f-9891-9a11a8ccc173', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'deals_enqueue_embedding', NULL),
  ('076d9350-dc90-27d4-4330-098081f493af', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'expenses_enqueue_embedding', NULL),
  ('0851dfc6-33a0-068c-963b-ab21ca440c0e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'prompts_embedding_stale', NULL),
  ('098f0041-5da6-b27b-fe95-3eed886f7f25', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'agents_enqueue_embedding', NULL),
  ('0b5b37d7-b436-19df-0378-2ec54c7024f9', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'venues_enqueue_embedding', NULL),
  ('167e25be-7e6e-2230-a010-078ded8f5158', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'autonomy_records_enqueue_embedding', NULL),
  ('1cc0ba1a-86da-47f1-6e10-ef206f462f25', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'venues_embedding_stale', NULL),
  ('1cfa60d1-967e-67f0-8e07-021cc7a3c2a5', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'trips_enqueue_embedding', NULL),
  ('202eb3f2-3539-c2de-3a97-6feb0340c6fc', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'events_search_tsv_tsv', NULL),
  ('23343f72-2312-72fd-a421-c60503a92727', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'places_enqueue_embedding', NULL),
  ('2d38506e-d7ee-5366-4d13-c4f00ac7a35f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'conversations_embedding_stale', NULL),
  ('2e9904aa-98b5-91b9-9c64-f80a3ea3d22e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'calendar_events_search_tsv_tsv', NULL),
  ('338a396e-a57b-b3b3-3afb-23ce8111d0cf', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'calendar_events_embedding_stale', NULL),
  ('361ca9a9-c6a5-5312-e22d-c53b28025ecf', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'agent_logs_embedding_stale', NULL),
  ('375d0e61-107a-db7f-158f-3116ff9ad975', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'contacts_search_tsv_tsv', NULL),
  ('3785acfe-28f2-8852-f6ee-b723afb0fdc9', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'companies_search_tsv_tsv', NULL),
  ('388e7460-0480-30ec-92db-24144504ee9a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'runtime_logs_embedding_stale', NULL),
  ('3b71b909-6ea4-e7a8-48ce-d5a22484195a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'messages_enqueue_embedding', NULL),
  ('3ead443c-e76e-de2a-65a9-1a7c37008df7', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'email_threads_search_tsv_tsv', NULL),
  ('42322492-ff60-2022-8d9e-04548bf969ef', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'interactions_enqueue_embedding', NULL),
  ('45a0ea53-8078-c630-d290-261999210d16', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'agent_logs_enqueue_embedding', NULL),
  ('467f8ab4-5455-a198-6736-764e998006c2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'documents_embedding_stale', NULL),
  ('473225a5-a06d-3ec4-058a-5beffeef7e03', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'autonomy_records_embedding_stale', NULL),
  ('4c4ec63d-a432-1bcf-9524-124f722068ff', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'companies_enqueue_embedding', NULL),
  ('4c938674-5830-ed26-0790-04614757537c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'notes_enqueue_chunking', NULL),
  ('4f06b8b4-b3ed-5fd9-1da1-5511314b2a44', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'companies_embedding_stale', NULL),
  ('4fd93137-9450-81ab-e685-8ad2763436ec', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'memories_embedding_stale', NULL),
  ('53ea3eea-adc4-fc65-b16e-0cf54b416f07', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'trips_embedding_stale', NULL),
  ('53fb8198-c4ed-b4bf-5615-5afa2a0c084e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'touchpoints_enqueue_embedding', NULL),
  ('58c816e3-006c-26bb-d2c7-ea01b2a5b380', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'activity_logs_enqueue_embedding', NULL),
  ('64547185-ee01-2393-75fa-596264d16a6a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'contacts_embedding_stale', NULL),
  ('66c3d365-7c01-d196-fda4-a48d92b869dd', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'email_threads_enqueue_embedding', NULL),
  ('6a0ba1bc-b11e-56be-e4fc-b62d9712bdf8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'activity_logs_embedding_stale', NULL),
  ('6a98c8c4-1ff9-5ec1-60a2-762abd782b60', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'tool_definitions_enqueue_embedding', NULL),
  ('6bbd8fb9-7281-4937-4637-47dbc790581b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'venues_search_tsv_tsv', NULL),
  ('6ce812a6-b643-038e-d596-bc78e50f9b41', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'documents_enqueue_embedding', NULL),
  ('704e3103-ecc1-f4b6-9b9f-6ae10e240106', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'interactions_embedding_stale', NULL),
  ('735c0ab9-2f44-94b9-3bdf-147b7f9680d6', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'notes_enqueue_embedding', NULL),
  ('7b5da030-35e8-5344-5c71-6b889f9ffeb9', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'email_threads_embedding_stale', NULL),
  ('7dfab604-5da4-40fa-3093-91e9cef26bc1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'expenses_embedding_stale', NULL),
  ('811b26c6-2967-d3b3-908f-377e94156c25', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'emails_embedding_stale', NULL),
  ('86c67cb5-b8c9-0218-8437-4a2125ac44a5', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'runtime_logs_enqueue_embedding', NULL),
  ('88d64766-b34d-fb68-dac4-cf4dac888ea6', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'documents_enqueue_chunking', NULL),
  ('8dca23c7-418d-03a5-26e1-91e383ba545f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'calendar_events_enqueue_embedding', NULL),
  ('9a969ea1-c2bc-0bd8-68cd-1ab23267f57f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'memories_enqueue_embedding', NULL),
  ('a2e457de-7e8a-adcf-1fa4-8569cee3b7d4', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'projects_embedding_stale', NULL),
  ('ac35f3e4-4872-0160-36d4-56bee90d4c94', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'emails_enqueue_embedding', NULL),
  ('acad864c-49ae-18ac-df7f-dec48c676b1a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'tool_definitions_embedding_stale', NULL),
  ('ae0fcf53-8a6b-2e46-9d54-ed7e48386632', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'contacts_enqueue_embedding', NULL),
  ('b0ebf92d-7839-9f77-dabf-531afb521563', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'messages_embedding_stale', NULL),
  ('b1d86a18-18df-b23f-3852-c24e705a7983', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'tasks_enqueue_embedding', NULL),
  ('b3b7893f-bfc8-85de-f517-927293080eaa', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'agents_embedding_stale', NULL),
  ('b3cf2fc7-967b-a107-d207-c178eca26d32', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'runtime_states_enqueue_embedding', NULL),
  ('b6a8f1f9-88d6-4137-f6dc-3635ce8dc51c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'rules_enqueue_embedding', NULL),
  ('bd309c97-6a12-23b1-0563-65483f44047b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'events_enqueue_embedding', NULL),
  ('c42f22a2-fb8d-3c41-d325-7dd440dda846', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'skills_enqueue_embedding', NULL),
  ('ca6f6ab2-18ab-d9e0-9e30-a14ea3e6135c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'contacts_enqueue_chunking', NULL),
  ('cc2fc861-7dc1-40b9-70ea-3351899564cf', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'events_embedding_stale', NULL),
  ('cdacde79-d831-b17f-aad3-088fa3e252c2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'skills_embedding_stale', NULL),
  ('d10e90be-fc81-2db8-5bd7-ecdd19697400', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'runtime_states_embedding_stale', NULL),
  ('d3d39a0b-4cb4-02c3-84e9-915bfd80578c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'deals_embedding_stale', NULL),
  ('d7091d28-bbc3-d5e0-f291-c06034b277d0', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'goals_enqueue_embedding', NULL),
  ('da1333ba-c7d2-9d4f-4b61-ce3f3f55476f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'notes_embedding_stale', NULL),
  ('dac76a9c-99ed-bb6f-de3d-ab955ef6581c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'rules_embedding_stale', NULL),
  ('dd782a83-8a05-1a7e-accf-ce576c74a1b8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'goals_embedding_stale', NULL),
  ('e3b4601f-d0f9-bc8b-4872-42db4826e2a2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'prompts_enqueue_embedding', NULL),
  ('e7f35e7f-f4f9-38fc-a036-97dc8e6e3b59', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'tasks_embedding_stale', NULL),
  ('ecac7ff5-614e-f3c6-695b-d7052a2395df', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'places_embedding_stale', NULL),
  ('ef4f8e08-f599-7e46-e1da-f7fbb3a91598', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'conversations_enqueue_embedding', NULL),
  ('fd171135-b49c-1a5f-4d62-9b4974552af9', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'emails_search_tsv_tsv', NULL),
  ('fea3137d-b618-823c-a959-0322b563b3ea', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'touchpoints_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


