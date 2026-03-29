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
  ('0044eab3-aa75-5af6-310d-177d94cc6be5', '2ef50f93-192b-b168-969d-304c8e675e1d', 'prompts_enqueue_embedding', NULL),
  ('02032ffa-c13d-8adf-476c-35cdf9a80e60', '2ef50f93-192b-b168-969d-304c8e675e1d', 'companies_search_tsv_tsv', NULL),
  ('02d7b461-0229-1949-6a34-e29baf640d0d', '2ef50f93-192b-b168-969d-304c8e675e1d', 'touchpoints_enqueue_embedding', NULL),
  ('03a1e45a-febd-ad52-add4-05a63d26bd69', '2ef50f93-192b-b168-969d-304c8e675e1d', 'conversations_embedding_stale', NULL),
  ('07626feb-b130-f22f-5c70-a1237376ab42', '2ef50f93-192b-b168-969d-304c8e675e1d', 'activity_logs_embedding_stale', NULL),
  ('08ee2d73-10da-3841-9ade-7ff026105abc', '2ef50f93-192b-b168-969d-304c8e675e1d', 'code_chunks_embedding_stale', NULL),
  ('0efaca6a-0785-e0dd-84a3-5d89291aa398', '2ef50f93-192b-b168-969d-304c8e675e1d', 'prompts_enqueue_chunking', NULL),
  ('102bdf42-0a8d-c1c1-ba04-435fa24f0e8c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'deals_enqueue_chunking', NULL),
  ('14261465-b63c-4c81-b824-df3293d874e7', '2ef50f93-192b-b168-969d-304c8e675e1d', 'interactions_embedding_stale', NULL),
  ('16ca76db-4cff-5c6a-657a-953931aab010', '2ef50f93-192b-b168-969d-304c8e675e1d', 'memories_enqueue_embedding', NULL),
  ('1d806b58-42c6-3a45-0851-89ee8e335bda', '2ef50f93-192b-b168-969d-304c8e675e1d', 'places_embedding_stale', NULL),
  ('1da45df0-dded-7ea9-feb8-459d7a2b2ea1', '2ef50f93-192b-b168-969d-304c8e675e1d', 'events_enqueue_chunking', NULL),
  ('2097eeb6-d75d-ceb5-bced-d90a9161c337', '2ef50f93-192b-b168-969d-304c8e675e1d', 'tasks_embedding_stale', NULL),
  ('27956494-a2ac-e99a-3805-7afb01052023', '2ef50f93-192b-b168-969d-304c8e675e1d', 'goals_enqueue_chunking', NULL),
  ('2a539939-9278-65d1-6fff-dfb9a77a4b41', '2ef50f93-192b-b168-969d-304c8e675e1d', 'expenses_enqueue_embedding', NULL),
  ('2ea4a39d-9689-01ae-5e0f-84fba9af125c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'deals_embedding_stale', NULL),
  ('345a5f5f-3489-3f54-eea7-212801871e61', '2ef50f93-192b-b168-969d-304c8e675e1d', 'codebases_enqueue_embedding', NULL),
  ('34857543-40b1-c58f-d96f-3989aeb92b9f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'companies_embedding_stale', NULL),
  ('349aacd7-4077-1c54-56ef-34c56474eabf', '2ef50f93-192b-b168-969d-304c8e675e1d', 'email_threads_enqueue_chunking', NULL),
  ('34b190af-f33a-fc8b-6ca0-2d1c396e018b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'hiking_trails_embedding_stale', NULL),
  ('3b08198f-ceae-6e3a-5c63-f9f46d01bfef', '2ef50f93-192b-b168-969d-304c8e675e1d', 'trips_embedding_stale', NULL),
  ('3b926281-a99a-2a8c-f12a-ca13a644827b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'activity_logs_enqueue_embedding', NULL),
  ('46141ae0-f29e-6941-1b32-94e6c5d039c0', '2ef50f93-192b-b168-969d-304c8e675e1d', 'skills_embedding_stale', NULL),
  ('4ac7e3da-62c5-aabe-0599-39d894a034f7', '2ef50f93-192b-b168-969d-304c8e675e1d', 'events_search_tsv_tsv', NULL),
  ('4d90531f-ed75-7271-2974-2ea1dba480df', '2ef50f93-192b-b168-969d-304c8e675e1d', 'skills_enqueue_chunking', NULL),
  ('5036fe52-00af-53cd-dfd7-0de6d6390fbe', '2ef50f93-192b-b168-969d-304c8e675e1d', 'projects_enqueue_embedding', NULL),
  ('56221e8f-b29d-4e58-2daf-55a06609fa41', '2ef50f93-192b-b168-969d-304c8e675e1d', 'agents_embedding_stale', NULL),
  ('5a8524f5-05a2-8a8a-082c-b4bdbb216419', '2ef50f93-192b-b168-969d-304c8e675e1d', 'autonomy_records_embedding_stale', NULL),
  ('5b3f5e3f-bf26-44e9-3b17-73eca845550c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'trips_enqueue_chunking', NULL),
  ('5b44f5b9-4cc6-6b32-839f-39087c7c3310', '2ef50f93-192b-b168-969d-304c8e675e1d', 'emails_enqueue_embedding', NULL),
  ('618a4dd3-8c6b-8b0a-cbe8-e41a66edc7fc', '2ef50f93-192b-b168-969d-304c8e675e1d', 'contacts_enqueue_chunking', NULL),
  ('620345d1-f479-329d-bb83-8c9d9d4a86ea', '2ef50f93-192b-b168-969d-304c8e675e1d', 'tasks_enqueue_embedding', NULL),
  ('6327f38f-8eb6-45f5-9efc-15a99bf07bef', '2ef50f93-192b-b168-969d-304c8e675e1d', 'places_enqueue_embedding', NULL),
  ('6adeceab-a881-0d2b-239d-a0040d871d6f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'runtime_logs_embedding_stale', NULL),
  ('6e9e6f09-beb5-9f15-e1d7-cd33a3af92aa', '2ef50f93-192b-b168-969d-304c8e675e1d', 'runtime_states_embedding_stale', NULL),
  ('722d814a-8dcb-e703-f92c-937049d0d565', '2ef50f93-192b-b168-969d-304c8e675e1d', 'expenses_embedding_stale', NULL),
  ('731c4c75-41ea-5e4f-510e-62c6d8fd2ed2', '2ef50f93-192b-b168-969d-304c8e675e1d', 'conversations_enqueue_chunking', NULL),
  ('73b7db8c-9a18-1ad8-3872-e62f7ee58d86', '2ef50f93-192b-b168-969d-304c8e675e1d', 'runtime_states_enqueue_embedding', NULL),
  ('743571a2-0d82-e030-84b8-8be63efd6b82', '2ef50f93-192b-b168-969d-304c8e675e1d', 'interactions_enqueue_embedding', NULL),
  ('77f01d41-0984-7eee-5d0c-f8fb3c427f42', '2ef50f93-192b-b168-969d-304c8e675e1d', 'memories_embedding_stale', NULL),
  ('7a82bdda-d376-ebb9-4bfd-5627be906355', '2ef50f93-192b-b168-969d-304c8e675e1d', 'tool_definitions_enqueue_embedding', NULL),
  ('7bb2f470-228c-13ea-1b51-7e620e7af08a', '2ef50f93-192b-b168-969d-304c8e675e1d', 'agent_logs_enqueue_embedding', NULL),
  ('7c7e9632-fef6-e1d2-54de-1c9a068ab756', '2ef50f93-192b-b168-969d-304c8e675e1d', 'messages_enqueue_embedding', NULL),
  ('7ecd48d1-7195-a18f-b060-05ffc1ea5a8e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'email_threads_enqueue_embedding', NULL),
  ('811aef74-dc82-942b-2cc5-80a1b83a8d44', '2ef50f93-192b-b168-969d-304c8e675e1d', 'agent_logs_enqueue_chunking', NULL),
  ('84f04a61-a5d2-e051-6c74-36c4c0200aea', '2ef50f93-192b-b168-969d-304c8e675e1d', 'hiking_trails_enqueue_embedding', NULL),
  ('869719cf-4096-dd43-51b7-efa477dcea44', '2ef50f93-192b-b168-969d-304c8e675e1d', 'companies_enqueue_embedding', NULL),
  ('8be76af3-cdc1-28ad-d72f-9df41addbc1f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'rules_enqueue_chunking', NULL),
  ('8cb92d89-2e6b-bf6e-098f-4768c562a0e4', '2ef50f93-192b-b168-969d-304c8e675e1d', 'encrypted_secrets_hash', NULL),
  ('8d2c2c10-f237-5d44-37db-efcf1702ccd3', '2ef50f93-192b-b168-969d-304c8e675e1d', 'venues_enqueue_embedding', NULL),
  ('8e54f601-739f-303c-dc14-539ec8058e55', '2ef50f93-192b-b168-969d-304c8e675e1d', 'companies_enqueue_chunking', NULL),
  ('8e982fd8-d9a2-7082-7c02-0d141ab01559', '2ef50f93-192b-b168-969d-304c8e675e1d', 'places_enqueue_chunking', NULL),
  ('8ec2eb55-6662-a4e6-ccf0-608c41c8defb', '2ef50f93-192b-b168-969d-304c8e675e1d', 'tasks_enqueue_chunking', NULL),
  ('90250850-3fc6-4160-3074-68e2d96304fe', '2ef50f93-192b-b168-969d-304c8e675e1d', 'rules_enqueue_embedding', NULL),
  ('90d8d65e-96dd-9fed-1faf-dfc4f689f6a4', '2ef50f93-192b-b168-969d-304c8e675e1d', 'contacts_enqueue_embedding', NULL),
  ('96628dc2-15e2-d980-6192-2d2b2add3c9c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'codebases_embedding_stale', NULL),
  ('9775ae4f-0855-2857-76d5-74fdf70bd5cc', '2ef50f93-192b-b168-969d-304c8e675e1d', 'deals_enqueue_embedding', NULL),
  ('99cb7718-071b-8017-a821-aeed1d3928c0', '2ef50f93-192b-b168-969d-304c8e675e1d', 'skills_enqueue_embedding', NULL),
  ('99cbfede-1e48-e69a-60b4-28578cfc4962', '2ef50f93-192b-b168-969d-304c8e675e1d', 'agents_enqueue_chunking', NULL),
  ('a18a4226-7fed-c3f3-0e08-b2633ffbcd73', '2ef50f93-192b-b168-969d-304c8e675e1d', 'notes_enqueue_embedding', NULL),
  ('a4a558c6-c484-6082-fc37-5bf5a2393293', '2ef50f93-192b-b168-969d-304c8e675e1d', 'autonomy_records_enqueue_chunking', NULL),
  ('a78da621-60b0-d2c6-ea6d-8c41e82451ce', '2ef50f93-192b-b168-969d-304c8e675e1d', 'emails_enqueue_chunking', NULL),
  ('a854c696-ea0e-fa50-8653-1e57282659d9', '2ef50f93-192b-b168-969d-304c8e675e1d', 'venues_search_tsv_tsv', NULL),
  ('aa5e9353-8e73-d079-7988-b1d3ebf52d3b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'users_search_tsv_tsv', NULL),
  ('b34c8df9-58c1-0299-7ffa-f17f577954aa', '2ef50f93-192b-b168-969d-304c8e675e1d', 'notes_enqueue_chunking', NULL),
  ('b49376e6-2922-d7b3-1372-2e6fbd0b7ae4', '2ef50f93-192b-b168-969d-304c8e675e1d', 'calendar_events_enqueue_chunking', NULL),
  ('b4b13115-00f1-be5e-b54d-3dbd89dc591b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'calendar_events_embedding_stale', NULL),
  ('b59d4004-2a11-d4d4-8a9f-9e4f2706ef5b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'venues_enqueue_chunking', NULL),
  ('b5e07a6b-c48e-a0c3-f48c-7b6d8a6334c6', '2ef50f93-192b-b168-969d-304c8e675e1d', 'rules_embedding_stale', NULL),
  ('b64f6bfa-1cd1-bc41-af86-f21db2768c29', '2ef50f93-192b-b168-969d-304c8e675e1d', 'email_threads_embedding_stale', NULL),
  ('b6e0b3be-528e-57b1-66eb-610800b47157', '2ef50f93-192b-b168-969d-304c8e675e1d', 'codebases_enqueue_chunking', NULL),
  ('b7acd842-7f77-413e-3178-be76bff69167', '2ef50f93-192b-b168-969d-304c8e675e1d', 'touchpoints_embedding_stale', NULL),
  ('b82f81e4-5e59-f6f4-a867-edb04df98fcd', '2ef50f93-192b-b168-969d-304c8e675e1d', 'notes_embedding_stale', NULL),
  ('b9385b2a-5cc3-e049-08be-45e241dd94b8', '2ef50f93-192b-b168-969d-304c8e675e1d', 'events_embedding_stale', NULL),
  ('b98bef7e-0a0c-8945-9d1e-248c375181a2', '2ef50f93-192b-b168-969d-304c8e675e1d', 'emails_search_tsv_tsv', NULL),
  ('be3efef2-7072-46a0-21fd-63bca7f2c8b9', '2ef50f93-192b-b168-969d-304c8e675e1d', 'goals_embedding_stale', NULL),
  ('be681a29-1e44-7daf-d718-385ba5dc0624', '2ef50f93-192b-b168-969d-304c8e675e1d', 'expenses_enqueue_chunking', NULL),
  ('c00f80ee-fbd9-1ad9-e6c9-3cb9b23eafd0', '2ef50f93-192b-b168-969d-304c8e675e1d', 'runtime_logs_enqueue_chunking', NULL),
  ('c13997a9-de3c-4bc4-4a76-b510887ad0e2', '2ef50f93-192b-b168-969d-304c8e675e1d', 'hiking_trails_enqueue_chunking', NULL),
  ('c2551a1c-dbe5-37a5-9c14-784a3168374f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'code_chunks_enqueue_embedding', NULL),
  ('c6c99008-d084-4179-60bf-2c4e81b71163', '2ef50f93-192b-b168-969d-304c8e675e1d', 'messages_enqueue_chunking', NULL),
  ('c7d5d347-be39-19e8-607f-ada89675d4ca', '2ef50f93-192b-b168-969d-304c8e675e1d', 'activity_logs_enqueue_chunking', NULL),
  ('c8f4c5f0-22f8-b5d2-8477-73c2057f4ffe', '2ef50f93-192b-b168-969d-304c8e675e1d', 'prompts_embedding_stale', NULL),
  ('c8f83cea-fd43-7879-c5f6-7efd4c40d835', '2ef50f93-192b-b168-969d-304c8e675e1d', 'events_enqueue_embedding', NULL),
  ('c9fa975c-982c-d0c6-3c31-7134083f0fee', '2ef50f93-192b-b168-969d-304c8e675e1d', 'contacts_embedding_stale', NULL),
  ('d01537a4-00ff-fc11-adc4-4424ef361794', '2ef50f93-192b-b168-969d-304c8e675e1d', 'email_threads_search_tsv_tsv', NULL),
  ('d1a7c96f-7642-c545-c8c8-a16008057c06', '2ef50f93-192b-b168-969d-304c8e675e1d', 'calendar_events_enqueue_embedding', NULL),
  ('d514e844-2fbc-2602-c636-275dcdc5b72e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'projects_embedding_stale', NULL),
  ('d6b92ddd-60ed-87d0-9762-82408d5ff399', '2ef50f93-192b-b168-969d-304c8e675e1d', 'runtime_logs_enqueue_embedding', NULL),
  ('d74235bc-edae-ea5b-9f3d-c98c28491626', '2ef50f93-192b-b168-969d-304c8e675e1d', 'agent_logs_embedding_stale', NULL),
  ('d91823a6-217c-9168-7e57-79650c45f350', '2ef50f93-192b-b168-969d-304c8e675e1d', 'trips_enqueue_embedding', NULL),
  ('d93fc4f7-d019-eade-bc73-463f247af42c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'emails_embedding_stale', NULL),
  ('d943f012-4c3c-5fb9-95ea-56ae52b2bc57', '2ef50f93-192b-b168-969d-304c8e675e1d', 'agents_enqueue_embedding', NULL),
  ('da62e2ca-d231-1fad-aba9-c72ed76c7476', '2ef50f93-192b-b168-969d-304c8e675e1d', 'conversations_enqueue_embedding', NULL),
  ('dd396162-2596-7733-b572-88de652b8c32', '2ef50f93-192b-b168-969d-304c8e675e1d', 'tool_definitions_enqueue_chunking', NULL),
  ('e28823b6-370c-67b3-1f36-491a4407876e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'runtime_states_enqueue_chunking', NULL),
  ('e2df33d5-97d2-8644-aff1-c47cba23b78b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'touchpoints_enqueue_chunking', NULL),
  ('e3022a18-3271-e944-770c-08db0259c9c4', '2ef50f93-192b-b168-969d-304c8e675e1d', 'autonomy_records_enqueue_embedding', NULL),
  ('e71f1fb5-43bb-b42c-6dbb-5579ba918978', '2ef50f93-192b-b168-969d-304c8e675e1d', 'venues_embedding_stale', NULL),
  ('e7ad5738-6436-bedb-e976-a6f0b77a1217', '2ef50f93-192b-b168-969d-304c8e675e1d', 'interactions_enqueue_chunking', NULL),
  ('ea28db59-1746-9fd8-9507-3713017eac3b', '2ef50f93-192b-b168-969d-304c8e675e1d', 'goals_enqueue_embedding', NULL),
  ('ee6e4cc4-8d4a-f03d-d6f0-7ff8780de559', '2ef50f93-192b-b168-969d-304c8e675e1d', 'memories_enqueue_chunking', NULL),
  ('eeb2e99e-d56f-b3b7-9fdb-57b95169a60d', '2ef50f93-192b-b168-969d-304c8e675e1d', 'messages_embedding_stale', NULL),
  ('f7f632d7-8db7-f07c-851a-9fac58bc9607', '2ef50f93-192b-b168-969d-304c8e675e1d', 'projects_enqueue_chunking', NULL),
  ('f978c4fd-3fc1-f954-b902-082f32a6312f', '2ef50f93-192b-b168-969d-304c8e675e1d', 'tool_definitions_embedding_stale', NULL),
  ('fa6daa74-972c-b0d2-85fd-c931e5b0a34d', '2ef50f93-192b-b168-969d-304c8e675e1d', 'calendar_events_search_tsv_tsv', NULL),
  ('fc0de729-4130-7124-e223-ba23d9f77a98', '2ef50f93-192b-b168-969d-304c8e675e1d', 'contacts_search_tsv_tsv', NULL);


SET session_replication_role TO DEFAULT;


