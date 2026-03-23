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
  ('878750c7-a015-98e8-8d48-fcee4ff19bd4', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'users_search_tsv_tsv', NULL),
  ('b7a2a47a-27da-04ca-59d4-3454a90fddb4', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'encrypted_secrets_hash', NULL),
  ('1120091b-a8f0-e208-c870-8d5fc8ae99ff', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'contacts_search_tsv_tsv', NULL),
  ('dda9a9c6-23a6-c2ec-8e1b-2bd6a9f1e0d1', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'contacts_embedding_stale', NULL),
  ('275f3751-448a-ed10-40c0-c2a38a8b347e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'contacts_enqueue_embedding', NULL),
  ('664a7c8c-37bf-caa4-21e8-aa95addf6546', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'contacts_enqueue_chunking', NULL),
  ('27a067f4-01cf-5c04-1222-a9354902d665', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'companies_search_tsv_tsv', NULL),
  ('d318af84-2596-43ff-a0c3-7f2649f2b7aa', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'companies_embedding_stale', NULL),
  ('ad88a301-087c-bb30-4cb6-20de993b8e2f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'companies_enqueue_embedding', NULL),
  ('e86e3906-a148-6187-a738-8ccdc2b730da', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'companies_enqueue_chunking', NULL),
  ('d9d52fc8-d280-3719-39ad-f460122f88ef', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'deals_embedding_stale', NULL),
  ('e7e815b4-23b1-567f-2e28-a1580e5c1fb2', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'deals_enqueue_embedding', NULL),
  ('e60d8c7e-5728-8c39-7a43-6e8a575ed231', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'deals_enqueue_chunking', NULL),
  ('302fd104-5138-e030-740e-f7c3d72bd037', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'events_search_tsv_tsv', NULL),
  ('65dd5332-82f9-23cf-7ff2-7a26c5cde595', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'events_embedding_stale', NULL),
  ('49c68197-7ca3-543d-ff3f-0462d95a367d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'events_enqueue_embedding', NULL),
  ('154ea7f8-6cae-4bd1-3cd6-3abd8dbb238c', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'events_enqueue_chunking', NULL),
  ('a239f31b-0ca7-54c0-e052-c0647b7c9114', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'venues_search_tsv_tsv', NULL),
  ('dc5348ca-2ce6-a5be-888b-b76ad0f12894', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'venues_embedding_stale', NULL),
  ('ed7f21d2-9765-408f-3040-dd435b92d125', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'venues_enqueue_embedding', NULL),
  ('9715297c-301e-7a90-519e-0bdc9d2ccb97', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'venues_enqueue_chunking', NULL),
  ('e3f7652d-edee-2da7-b975-af04fc310c7e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'notes_embedding_stale', NULL),
  ('34d0b59a-7c80-398c-39f8-8608826584a0', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'notes_enqueue_embedding', NULL),
  ('e812a562-d9c0-b702-9cd4-698e6e2a80bb', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'notes_enqueue_chunking', NULL),
  ('5f9b7b29-4bbb-c7b9-aad4-a9064e54bdda', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'interactions_embedding_stale', NULL),
  ('b692b662-5b3c-dd66-25fd-cb8113f028e5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'interactions_enqueue_embedding', NULL),
  ('36025a18-eea9-74ff-854c-b385396d2e7a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'interactions_enqueue_chunking', NULL),
  ('d98d4423-e56e-674a-eb6f-960d6f673fb3', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agents_embedding_stale', NULL),
  ('94d57594-aaba-cca5-291e-93b17f95d2d5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agents_enqueue_embedding', NULL),
  ('f990d856-62d6-f7b1-ac6f-9e35819ed9b8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agents_enqueue_chunking', NULL),
  ('36b0522c-c120-e64b-e5b2-bbe5437ed1a3', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agent_tasks_embedding_stale', NULL),
  ('df113666-4ae9-31f6-80b6-330e68ee3b39', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agent_tasks_enqueue_embedding', NULL),
  ('b11ed900-2d8a-db83-49b5-f933786c4e8c', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agent_tasks_enqueue_chunking', NULL),
  ('f312ac8a-33d7-0b77-c826-9de5ae6a5c4b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agent_logs_embedding_stale', NULL),
  ('85bc1703-af34-c118-e569-714ad7f57a4a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agent_logs_enqueue_embedding', NULL),
  ('16d3467f-db86-37cb-df1e-2029a01a20b3', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'agent_logs_enqueue_chunking', NULL),
  ('502c8041-5e72-a5b0-995d-31e85be740c9', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'rules_embedding_stale', NULL),
  ('0c4ddb6d-8947-b812-ef0a-e5aef7447633', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'rules_enqueue_embedding', NULL),
  ('ef86202f-8dff-cc36-8fb4-d1bc6a7ddf98', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'rules_enqueue_chunking', NULL),
  ('5c4f467f-cea2-df2f-bcdc-5321448be95a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'skills_embedding_stale', NULL),
  ('78f16dd4-e33c-138d-5f9b-87e6aa5c8c6e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'skills_enqueue_embedding', NULL),
  ('2d7b402f-1f03-5053-94e5-9d1283d420e2', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'skills_enqueue_chunking', NULL),
  ('73205e48-ee56-4382-f00c-b252ec29ca40', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'runtime_states_embedding_stale', NULL),
  ('02c32ffc-6ac8-cf02-d20a-21da5518b635', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'runtime_states_enqueue_embedding', NULL),
  ('fb17928d-e2bc-4e12-e58f-9789cf0038b9', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'runtime_states_enqueue_chunking', NULL),
  ('378c0aab-0224-9dca-7747-c766720d21fa', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'runtime_logs_embedding_stale', NULL),
  ('6ea7f00c-b8b3-0104-a1a9-befcd329acdf', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'runtime_logs_enqueue_embedding', NULL),
  ('d8510568-d6ae-e90a-01d0-c880c46aaaa6', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'runtime_logs_enqueue_chunking', NULL),
  ('2ea61923-9760-5b5b-70a4-4adb943d0517', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'conversations_embedding_stale', NULL),
  ('6be1efdf-c957-7275-abdb-917889013ae6', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'conversations_enqueue_embedding', NULL),
  ('1249677c-df43-6c92-d9bc-a54f2a02546d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'conversations_enqueue_chunking', NULL),
  ('1f1060e5-7553-d4cf-2e15-04019ca30317', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'messages_embedding_stale', NULL),
  ('9f826d13-6c05-ca1e-5599-da203d7006a1', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'messages_enqueue_embedding', NULL),
  ('174d68a4-2118-a9b9-e5b8-a493ccfaf586', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'messages_enqueue_chunking', NULL),
  ('2dca1c25-f93d-2aa5-fb01-c540caf4c283', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'projects_embedding_stale', NULL),
  ('7968322e-ce51-9152-3244-edaea708e4c1', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'projects_enqueue_embedding', NULL),
  ('ec420b3a-7225-6d39-3d20-5a7ed3a85dba', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'projects_enqueue_chunking', NULL),
  ('324019fd-5b43-201c-9084-de71db5bfa48', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'codebases_embedding_stale', NULL),
  ('d8acd84c-6c32-7040-8cc4-3f9b931c24c0', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'codebases_enqueue_embedding', NULL),
  ('31f143fc-a871-f837-c0a9-d83dcadb651d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'codebases_enqueue_chunking', NULL),
  ('0c8168e4-e045-3309-ce1d-dc5e664e5e9b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'code_chunks_embedding_stale', NULL),
  ('eeeb4ce8-4595-608b-0f48-e3642ccbe717', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'code_chunks_enqueue_embedding', NULL),
  ('dc02a4b2-6685-2daa-d52b-83249cf160bc', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'trips_embedding_stale', NULL),
  ('12a8b938-569c-e106-aba1-9fa6a28ab4ba', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'trips_enqueue_embedding', NULL),
  ('24fab384-2d83-5b31-6ae2-cf0f6bc9456a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'trips_enqueue_chunking', NULL),
  ('bf99ccd9-32e7-d74e-b69d-43a853432abc', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'places_embedding_stale', NULL),
  ('c7641f45-1298-769a-d2f7-ac4ebeec794f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'places_enqueue_embedding', NULL),
  ('cc7bc663-65c3-2e0b-bdb5-eebba1920e7c', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'places_enqueue_chunking', NULL),
  ('44b2d5f8-b8f6-d57c-a434-306efe227f5e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'itinerary_items_embedding_stale', NULL),
  ('bb26bed0-8189-00f0-1389-15b85eef68fd', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'itinerary_items_enqueue_embedding', NULL),
  ('17e8c01e-7cc0-b610-6a82-734b8b3a0dd0', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'itinerary_items_enqueue_chunking', NULL),
  ('ce1bfab4-aa9a-94e6-1d3e-cc542f44b686', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'hiking_trails_embedding_stale', NULL),
  ('82aa6418-5698-057a-5ce8-8eae02be81ad', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'hiking_trails_enqueue_embedding', NULL),
  ('37ed8742-a5e5-0e6e-e91f-7c055f9fabc1', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'hiking_trails_enqueue_chunking', NULL),
  ('2fea4bc3-49c3-2ddc-8474-635a0f6f0279', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'memories_embedding_stale', NULL),
  ('9a1e3b72-2b2f-217d-fc0e-acade49927fd', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'memories_enqueue_embedding', NULL),
  ('18761127-549a-5da5-3b84-1ee74650610d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'memories_enqueue_chunking', NULL),
  ('1e6d98ff-9343-11a1-2d16-ec0cd8d26dad', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'goals_embedding_stale', NULL),
  ('d4866575-3bac-3e4f-afc0-624becdf675b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'goals_enqueue_embedding', NULL),
  ('eb17a22e-a6d2-634f-b44e-f41cd6ded570', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'goals_enqueue_chunking', NULL),
  ('d0f855b7-ba9f-ec85-0d5a-dcd596ff6a0f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'habits_embedding_stale', NULL),
  ('32be3dad-2486-f4a7-6cb6-358fb0e40979', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'habits_enqueue_embedding', NULL),
  ('652b52a5-4ec4-f478-29fd-f01a5eb878b3', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'habits_enqueue_chunking', NULL),
  ('d1a64f5e-398a-8bf2-d8b7-61a8e39a77b8', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'autonomy_records_embedding_stale', NULL),
  ('ff036c09-06d1-e094-ac32-e35c7eea70b3', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'autonomy_records_enqueue_embedding', NULL),
  ('0ef2e62f-677a-301d-0515-877f8a4ade6b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'autonomy_records_enqueue_chunking', NULL);


SET session_replication_role TO DEFAULT;


