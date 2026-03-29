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
  ('019d37b9-b911-7384-a9e7-e6b8ac6691f3', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'users_search_tsv_tsv', NULL),
  ('019d37ba-5356-7234-880a-99cbc57e33f2', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'encrypted_secrets_hash', NULL),
  ('019d37bc-77e4-7a36-b52f-c839a8510e2c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'contacts_search_tsv_tsv', NULL),
  ('019d37bc-79e0-70f9-9717-3863119f0dee', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'contacts_embedding_stale', NULL),
  ('019d37bc-7a63-7bd0-a918-b76d97bb9280', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'contacts_enqueue_embedding', NULL),
  ('019d37bc-83ff-734e-85c6-74f1c32fd1f4', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'companies_search_tsv_tsv', NULL),
  ('019d37bc-85f5-7cf5-88a2-759b50c908b4', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'companies_embedding_stale', NULL),
  ('019d37bc-8688-7c0b-8f3b-7479b0f5612a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'companies_enqueue_embedding', NULL),
  ('019d37bc-92e6-7e9c-a3a8-0a5f556c2536', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'deals_embedding_stale', NULL),
  ('019d37bc-9386-7a9d-87a9-4be472515721', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'deals_enqueue_embedding', NULL),
  ('019d37bc-a0b9-7750-b667-a5e80fdb0307', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'events_search_tsv_tsv', NULL),
  ('019d37bc-a37f-7b4a-8411-f2e5c7c02951', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'events_embedding_stale', NULL),
  ('019d37bc-a449-7bb4-b32d-33b0549e0570', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'events_enqueue_embedding', NULL),
  ('019d37bc-b822-7429-a6fa-7aca46b56dec', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'venues_search_tsv_tsv', NULL),
  ('019d37bc-bbb5-7821-a37f-a591d9c4fd73', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'venues_embedding_stale', NULL),
  ('019d37bc-bcb2-7967-8148-2fa037b73409', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'venues_enqueue_embedding', NULL),
  ('019d37bc-d0c9-7c5c-9261-9d3022207599', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'notes_embedding_stale', NULL),
  ('019d37bc-d1c9-72d5-9b92-70c9dced9b87', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'notes_enqueue_embedding', NULL),
  ('019d37bc-e76d-776d-b290-01aa7ecb37af', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'interactions_embedding_stale', NULL),
  ('019d37bc-e87e-7cd4-9633-d399b29ef264', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'interactions_enqueue_embedding', NULL),
  ('019d37bd-03a8-7e73-8554-03fee3a2cbda', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'touchpoints_embedding_stale', NULL),
  ('019d37bd-04d0-7e1a-a766-9c2dda46c30f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'touchpoints_enqueue_embedding', NULL),
  ('019d37be-02cf-7845-9985-5a2c9c4bacd8', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'agents_embedding_stale', NULL),
  ('019d37be-0357-71a7-bff2-10aa9dafa7f1', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'agents_enqueue_embedding', NULL),
  ('019d37be-0cae-732a-bec0-007d0e8d18a8', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'tasks_embedding_stale', NULL),
  ('019d37be-0d23-732a-8d77-ce327767db38', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'tasks_enqueue_embedding', NULL),
  ('019d37be-167c-7273-b2bc-65c1d31ac55a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'agent_logs_embedding_stale', NULL),
  ('019d37be-1702-7580-9d71-8b1d43ed82ea', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'agent_logs_enqueue_embedding', NULL),
  ('019d37be-2206-786f-813d-5d676e9663ba', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'rules_embedding_stale', NULL),
  ('019d37be-229e-7411-9790-666e34eca3ce', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'rules_enqueue_embedding', NULL),
  ('019d37be-2f91-7748-9f3c-f434f5d270cd', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'skills_embedding_stale', NULL),
  ('019d37be-3041-712f-a27d-ec22c6ff3a35', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'skills_enqueue_embedding', NULL),
  ('019d37be-3fcc-7a1a-b34b-202289b499da', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'tool_definitions_embedding_stale', NULL),
  ('019d37be-409f-785d-afe4-ce8c9cdec3f7', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'tool_definitions_enqueue_embedding', NULL),
  ('019d37be-5279-7575-940c-254538984a04', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'prompts_embedding_stale', NULL),
  ('019d37be-536b-7a1a-acc1-dd6d6d75302c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'prompts_enqueue_embedding', NULL),
  ('019d37be-66ca-75a8-ac63-3a4efe8a84bd', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'expenses_embedding_stale', NULL),
  ('019d37be-67be-734a-8d31-77c510d35c25', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'expenses_enqueue_embedding', NULL),
  ('019d37be-8a8b-727f-a283-77a26e81b83d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'runtime_states_embedding_stale', NULL),
  ('019d37be-8b81-72b2-b007-cc60b569677d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'runtime_states_enqueue_embedding', NULL),
  ('019d37be-9da6-7b56-ae9b-4e2f80a04052', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'runtime_logs_embedding_stale', NULL),
  ('019d37be-9e98-782a-907c-950f624b194b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'runtime_logs_enqueue_embedding', NULL),
  ('019d37bf-0405-7134-bfe8-1f83456006e5', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'conversations_embedding_stale', NULL),
  ('019d37bf-0546-7223-ad0f-e9e2daa5f346', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'conversations_enqueue_embedding', NULL),
  ('019d37bf-1f52-7736-98d2-b4dd21f578f1', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'messages_embedding_stale', NULL),
  ('019d37bf-2099-7020-9c54-b11e0431ed0d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'messages_enqueue_embedding', NULL),
  ('019d37bf-56ef-7247-98cb-46194fda26d2', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'projects_embedding_stale', NULL),
  ('019d37bf-57dd-7809-9da5-95904f20f5ae', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'projects_enqueue_embedding', NULL),
  ('019d37bf-6b24-785f-bceb-bb8d862c9b9e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'codebases_embedding_stale', NULL),
  ('019d37bf-6c0e-720d-b127-30f6dff8d6c9', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'codebases_enqueue_embedding', NULL),
  ('019d37bf-7f5e-7d86-8783-4c7a8aeaf008', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'code_chunks_embedding_stale', NULL),
  ('019d37bf-8047-759e-b325-38fe4505206a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'code_chunks_enqueue_embedding', NULL),
  ('019d37bf-97d5-7851-980b-146b1bfc4fdb', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'goals_embedding_stale', NULL),
  ('019d37bf-98aa-7058-ba07-d7f0a954616f', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'goals_enqueue_embedding', NULL),
  ('019d37bf-b892-78cf-8663-0feef5af9a11', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'activity_logs_embedding_stale', NULL),
  ('019d37bf-b982-7a1a-93a4-af73d7d89d4c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'activity_logs_enqueue_embedding', NULL),
  ('019d37bf-cc58-761c-9002-4e1b39702303', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'memories_embedding_stale', NULL),
  ('019d37bf-cd5c-710f-81f7-58d91bb7b82e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'memories_enqueue_embedding', NULL),
  ('019d37bf-e343-7358-8595-81ee71085e7b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'trips_embedding_stale', NULL),
  ('019d37bf-e456-7826-901e-da289aef1901', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'trips_enqueue_embedding', NULL),
  ('019d37bf-fd08-7ea7-92d7-4ff1201d141b', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'hiking_trails_embedding_stale', NULL),
  ('019d37bf-fe45-729b-9ece-169bf5fddf73', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'hiking_trails_enqueue_embedding', NULL),
  ('019d37c0-17f4-7618-b769-ad3f976ffb08', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'places_embedding_stale', NULL),
  ('019d37c0-1945-7489-88a8-7ffa77e76089', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'places_enqueue_embedding', NULL),
  ('019d37c0-2d10-7126-80c6-f96f95914a63', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'email_threads_search_tsv_tsv', NULL),
  ('019d37c0-2edd-7dea-857c-4baa2ad49e8d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'email_threads_embedding_stale', NULL),
  ('019d37c0-2f62-7b9d-8e2d-125b461b0819', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'email_threads_enqueue_embedding', NULL),
  ('019d37c0-3828-7dfe-8399-bdc9c7d9ba36', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'emails_search_tsv_tsv', NULL),
  ('019d37c0-39f1-7935-b970-2bcdfea30e01', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'emails_embedding_stale', NULL),
  ('019d37c0-3a70-7f3e-aca6-e8b05091951e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'emails_enqueue_embedding', NULL),
  ('019d37c0-55db-7a95-ad75-e1c559ee89a5', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'calendar_events_search_tsv_tsv', NULL),
  ('019d37c0-5899-792b-8240-27705415df6c', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'calendar_events_embedding_stale', NULL),
  ('019d37c0-595e-7366-a9d6-ca2b1ec46371', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'calendar_events_enqueue_embedding', NULL),
  ('019d37c0-a7df-7903-adb6-30a852b7e866', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'autonomy_records_embedding_stale', NULL),
  ('019d37c0-a84e-7311-bfb3-92242145a41d', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'autonomy_records_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


