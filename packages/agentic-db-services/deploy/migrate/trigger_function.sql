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
  ('019d1736-5c3b-7a88-a9f0-0dea64b0312d', '019d1736-587a-73df-addd-59801f8d68ca', 'users_search_tsv_tsv', NULL),
  ('019d1736-e43b-7fb1-9e29-5e1e49b0e101', '019d1736-587a-73df-addd-59801f8d68ca', 'encrypted_secrets_hash', NULL),
  ('019d1738-f1c6-7ab5-925d-1b5a7fef7af4', '019d1736-587a-73df-addd-59801f8d68ca', 'contacts_search_tsv_tsv', NULL),
  ('019d1738-f245-79b3-9e89-9c5011cfad4a', '019d1736-587a-73df-addd-59801f8d68ca', 'contacts_embedding_stale', NULL),
  ('019d1738-f276-719a-8ef5-402db225e910', '019d1736-587a-73df-addd-59801f8d68ca', 'contacts_enqueue_embedding', NULL),
  ('019d1738-f569-7740-8b8a-68cc391db1d9', '019d1736-587a-73df-addd-59801f8d68ca', 'companies_search_tsv_tsv', NULL),
  ('019d1738-f5da-7b99-a075-1a9e74750514', '019d1736-587a-73df-addd-59801f8d68ca', 'companies_embedding_stale', NULL),
  ('019d1738-f604-7570-b657-ba22e44abf24', '019d1736-587a-73df-addd-59801f8d68ca', 'companies_enqueue_embedding', NULL),
  ('019d1738-f8eb-77aa-bdf7-cd8f607a62e4', '019d1736-587a-73df-addd-59801f8d68ca', 'deals_embedding_stale', NULL),
  ('019d1738-f916-77e2-bbce-219ef7a0fd6e', '019d1736-587a-73df-addd-59801f8d68ca', 'deals_enqueue_embedding', NULL),
  ('019d1738-fc38-7162-aad2-8b8ad1b4a0b2', '019d1736-587a-73df-addd-59801f8d68ca', 'events_search_tsv_tsv', NULL),
  ('019d1738-fcb5-76b7-ab4e-80e5bf20827f', '019d1736-587a-73df-addd-59801f8d68ca', 'events_embedding_stale', NULL),
  ('019d1738-fce4-7266-aa09-662e1b46161c', '019d1736-587a-73df-addd-59801f8d68ca', 'events_enqueue_embedding', NULL),
  ('019d1739-0047-7477-90f7-80de51c39687', '019d1736-587a-73df-addd-59801f8d68ca', 'venues_search_tsv_tsv', NULL),
  ('019d1739-00c1-7576-98b7-9b1a3479d216', '019d1736-587a-73df-addd-59801f8d68ca', 'venues_embedding_stale', NULL),
  ('019d1739-00ee-717b-9ca7-600fad2ce5f5', '019d1736-587a-73df-addd-59801f8d68ca', 'venues_enqueue_embedding', NULL),
  ('019d1739-0409-7d94-93e6-ff8f40b3bb7c', '019d1736-587a-73df-addd-59801f8d68ca', 'notes_embedding_stale', NULL),
  ('019d1739-0435-75ab-99b3-60765d18bcad', '019d1736-587a-73df-addd-59801f8d68ca', 'notes_enqueue_embedding', NULL),
  ('019d1739-075a-779e-ad8e-5abc0bf6e0ea', '019d1736-587a-73df-addd-59801f8d68ca', 'interactions_embedding_stale', NULL),
  ('019d1739-0785-78f0-be06-9cc53dc231bd', '019d1736-587a-73df-addd-59801f8d68ca', 'interactions_enqueue_embedding', NULL),
  ('019d1739-0ca3-7dd7-b958-996ecfe14119', '019d1736-587a-73df-addd-59801f8d68ca', 'contact_chunks_embedding_stale', NULL),
  ('019d1739-0cd9-7d34-8d7b-a38b2221b257', '019d1736-587a-73df-addd-59801f8d68ca', 'contact_chunks_enqueue_embedding', NULL),
  ('019d1739-1002-7f8e-b6cc-bed17c92708f', '019d1736-587a-73df-addd-59801f8d68ca', 'company_chunks_embedding_stale', NULL),
  ('019d1739-1035-7c50-8bcb-b5be27d56dc8', '019d1736-587a-73df-addd-59801f8d68ca', 'company_chunks_enqueue_embedding', NULL),
  ('019d1739-1304-741b-91a3-73d809125e65', '019d1736-587a-73df-addd-59801f8d68ca', 'deal_chunks_embedding_stale', NULL),
  ('019d1739-1330-76ac-8288-a9df4a10726e', '019d1736-587a-73df-addd-59801f8d68ca', 'deal_chunks_enqueue_embedding', NULL),
  ('019d1739-1608-7a9d-965b-82834c5a80c4', '019d1736-587a-73df-addd-59801f8d68ca', 'event_chunks_embedding_stale', NULL),
  ('019d1739-1636-7d23-b9ca-479483a8c0a0', '019d1736-587a-73df-addd-59801f8d68ca', 'event_chunks_enqueue_embedding', NULL),
  ('019d1739-1962-7287-ac64-596871f9470b', '019d1736-587a-73df-addd-59801f8d68ca', 'venue_chunks_embedding_stale', NULL),
  ('019d1739-199a-7e7a-96e9-8806501e4076', '019d1736-587a-73df-addd-59801f8d68ca', 'venue_chunks_enqueue_embedding', NULL),
  ('019d1739-1c9e-7b54-bb69-b34bc461ae2e', '019d1736-587a-73df-addd-59801f8d68ca', 'note_chunks_embedding_stale', NULL),
  ('019d1739-1cce-70d9-9e47-954221057c52', '019d1736-587a-73df-addd-59801f8d68ca', 'note_chunks_enqueue_embedding', NULL),
  ('019d1739-1fe7-71ab-b19b-f8b7b6e9ec12', '019d1736-587a-73df-addd-59801f8d68ca', 'interaction_chunks_embedding_stale', NULL),
  ('019d1739-2017-729a-b3e4-f23facdb6e85', '019d1736-587a-73df-addd-59801f8d68ca', 'interaction_chunks_enqueue_embedding', NULL),
  ('019d1739-4edd-7879-abe8-997f50ce5f11', '019d1736-587a-73df-addd-59801f8d68ca', 'agents_embedding_stale', NULL),
  ('019d1739-4f16-7c12-855b-bea0ea079df5', '019d1736-587a-73df-addd-59801f8d68ca', 'agents_enqueue_embedding', NULL),
  ('019d1739-5282-7b32-94c4-8d883768e9c6', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_tasks_embedding_stale', NULL),
  ('019d1739-52b2-7f58-af72-53867722e41f', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_tasks_enqueue_embedding', NULL),
  ('019d1739-55f8-74c4-845d-07191efe00d1', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_logs_embedding_stale', NULL),
  ('019d1739-562a-738a-8025-f153e92b2b7e', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_logs_enqueue_embedding', NULL),
  ('019d1739-597b-76ff-a96f-09208c0a2bda', '019d1736-587a-73df-addd-59801f8d68ca', 'rules_embedding_stale', NULL),
  ('019d1739-59a8-78f9-a67a-a3a4a25ff4c7', '019d1736-587a-73df-addd-59801f8d68ca', 'rules_enqueue_embedding', NULL),
  ('019d1739-5d11-750c-9b49-d15dfba5bc82', '019d1736-587a-73df-addd-59801f8d68ca', 'skills_embedding_stale', NULL),
  ('019d1739-5d41-7b1c-bfcd-d616d7171789', '019d1736-587a-73df-addd-59801f8d68ca', 'skills_enqueue_embedding', NULL),
  ('019d1739-6094-715c-95a2-6f37354df117', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_chunks_embedding_stale', NULL),
  ('019d1739-60c2-7f40-b4f8-9725400bf3bd', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_chunks_enqueue_embedding', NULL),
  ('019d1739-63c4-761a-9627-29c957f8388f', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_task_chunks_embedding_stale', NULL),
  ('019d1739-63f6-723d-a2e5-fd3ea4b7af69', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_task_chunks_enqueue_embedding', NULL),
  ('019d1739-66fc-7ccd-9087-ba79c7380bde', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_log_chunks_embedding_stale', NULL),
  ('019d1739-672a-7f76-9aaf-8b50e1f123d4', '019d1736-587a-73df-addd-59801f8d68ca', 'agent_log_chunks_enqueue_embedding', NULL),
  ('019d1739-6a10-770d-ab64-15fb47216e57', '019d1736-587a-73df-addd-59801f8d68ca', 'rule_chunks_embedding_stale', NULL),
  ('019d1739-6a40-723a-95bb-0771b21f1ec1', '019d1736-587a-73df-addd-59801f8d68ca', 'rule_chunks_enqueue_embedding', NULL),
  ('019d1739-6d2d-7262-8898-a725fc8067eb', '019d1736-587a-73df-addd-59801f8d68ca', 'skill_chunks_embedding_stale', NULL),
  ('019d1739-6d5c-7266-ad05-4e3c1d375fba', '019d1736-587a-73df-addd-59801f8d68ca', 'skill_chunks_enqueue_embedding', NULL),
  ('019d1739-7da6-7d48-a3da-02dbea0f616f', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_states_embedding_stale', NULL),
  ('019d1739-7de2-77f7-a350-48907f3cd260', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_states_enqueue_embedding', NULL),
  ('019d1739-8129-7174-8fbd-1d053a27df99', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_logs_embedding_stale', NULL),
  ('019d1739-8159-7f66-9948-8d4831217de8', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_logs_enqueue_embedding', NULL),
  ('019d1739-9112-7c7d-a3af-2b2cd734bd4a', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_state_chunks_embedding_stale', NULL),
  ('019d1739-9146-78f7-8a02-bea849553d25', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_state_chunks_enqueue_embedding', NULL),
  ('019d1739-947f-7b79-a62c-fc8d30e26ef0', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_log_chunks_embedding_stale', NULL),
  ('019d1739-94b1-75b3-ad3e-0298b4e784da', '019d1736-587a-73df-addd-59801f8d68ca', 'runtime_log_chunks_enqueue_embedding', NULL),
  ('019d1739-980b-70e6-9aca-fd31a9d3b645', '019d1736-587a-73df-addd-59801f8d68ca', 'conversations_embedding_stale', NULL),
  ('019d1739-9840-7791-8bf8-6a1f8bf30039', '019d1736-587a-73df-addd-59801f8d68ca', 'conversations_enqueue_embedding', NULL),
  ('019d1739-9be6-7fa9-8a76-1e2c072897ab', '019d1736-587a-73df-addd-59801f8d68ca', 'messages_embedding_stale', NULL),
  ('019d1739-9c1b-7505-b7a8-5118607ec50c', '019d1736-587a-73df-addd-59801f8d68ca', 'messages_enqueue_embedding', NULL),
  ('019d1739-9f44-7cde-8aa0-d7d2d23bcb56', '019d1736-587a-73df-addd-59801f8d68ca', 'conversation_chunks_embedding_stale', NULL),
  ('019d1739-9f77-721a-b5f1-a9e246862334', '019d1736-587a-73df-addd-59801f8d68ca', 'conversation_chunks_enqueue_embedding', NULL),
  ('019d1739-a2a5-74fa-ae4c-fc3ae5d07941', '019d1736-587a-73df-addd-59801f8d68ca', 'message_chunks_embedding_stale', NULL),
  ('019d1739-a2d9-77cf-b78b-9b538c089b0e', '019d1736-587a-73df-addd-59801f8d68ca', 'message_chunks_enqueue_embedding', NULL),
  ('019d1739-ba5a-7e5c-9afa-6e1d8653efc4', '019d1736-587a-73df-addd-59801f8d68ca', 'projects_embedding_stale', NULL),
  ('019d1739-ba99-79ee-b898-e296a6fe1e1d', '019d1736-587a-73df-addd-59801f8d68ca', 'projects_enqueue_embedding', NULL),
  ('019d1739-bdc0-7dac-8c31-c67ed0f04023', '019d1736-587a-73df-addd-59801f8d68ca', 'project_chunks_embedding_stale', NULL),
  ('019d1739-bdf6-7207-981b-d062ee743137', '019d1736-587a-73df-addd-59801f8d68ca', 'project_chunks_enqueue_embedding', NULL),
  ('019d1739-c93d-7c2f-bd1a-89947ad02fd6', '019d1736-587a-73df-addd-59801f8d68ca', 'codebases_embedding_stale', NULL),
  ('019d1739-c976-73d8-ba28-427aa246c120', '019d1736-587a-73df-addd-59801f8d68ca', 'codebases_enqueue_embedding', NULL),
  ('019d1739-cd70-7715-b32d-b45d502ac144', '019d1736-587a-73df-addd-59801f8d68ca', 'code_chunks_embedding_stale', NULL),
  ('019d1739-cda2-7656-abc5-8b606423f2f3', '019d1736-587a-73df-addd-59801f8d68ca', 'code_chunks_enqueue_embedding', NULL),
  ('019d1739-d0c6-743f-be47-3cc6904dd6aa', '019d1736-587a-73df-addd-59801f8d68ca', 'codebas_chunks_embedding_stale', NULL),
  ('019d1739-d0f8-7f01-b867-a9eabdc56fee', '019d1736-587a-73df-addd-59801f8d68ca', 'codebas_chunks_enqueue_embedding', NULL),
  ('019d1739-de59-7eee-b2a5-bc4708669f1b', '019d1736-587a-73df-addd-59801f8d68ca', 'trips_embedding_stale', NULL),
  ('019d1739-de8d-7a92-95c9-469013328624', '019d1736-587a-73df-addd-59801f8d68ca', 'trips_enqueue_embedding', NULL),
  ('019d1739-e265-77ed-bfb9-b6751db79546', '019d1736-587a-73df-addd-59801f8d68ca', 'places_embedding_stale', NULL),
  ('019d1739-e298-7016-b6d3-332542a45c10', '019d1736-587a-73df-addd-59801f8d68ca', 'places_enqueue_embedding', NULL),
  ('019d1739-e6b5-7723-b958-a3fbc96221d1', '019d1736-587a-73df-addd-59801f8d68ca', 'itinerary_items_embedding_stale', NULL),
  ('019d1739-e720-7672-953e-cbb240b65b01', '019d1736-587a-73df-addd-59801f8d68ca', 'itinerary_items_enqueue_embedding', NULL),
  ('019d1739-eb04-70ce-9eca-42026599bcf4', '019d1736-587a-73df-addd-59801f8d68ca', 'hiking_trails_embedding_stale', NULL),
  ('019d1739-eb3a-79d1-b784-c37fe9fb41a2', '019d1736-587a-73df-addd-59801f8d68ca', 'hiking_trails_enqueue_embedding', NULL),
  ('019d1739-eef2-76d7-ae5e-2adc583ea12b', '019d1736-587a-73df-addd-59801f8d68ca', 'memories_embedding_stale', NULL),
  ('019d1739-ef27-713c-9055-c788f245a836', '019d1736-587a-73df-addd-59801f8d68ca', 'memories_enqueue_embedding', NULL),
  ('019d1739-f2fc-7a4e-a9cc-5ad219763472', '019d1736-587a-73df-addd-59801f8d68ca', 'goals_embedding_stale', NULL),
  ('019d1739-f332-74aa-94fc-d8df3f4aeeb6', '019d1736-587a-73df-addd-59801f8d68ca', 'goals_enqueue_embedding', NULL),
  ('019d1739-f6e1-7a32-9959-74458a75c219', '019d1736-587a-73df-addd-59801f8d68ca', 'habits_embedding_stale', NULL),
  ('019d1739-f717-7cd6-930c-59297dd96528', '019d1736-587a-73df-addd-59801f8d68ca', 'habits_enqueue_embedding', NULL),
  ('019d1739-fa7b-7c35-a3ed-07d7b5c40d85', '019d1736-587a-73df-addd-59801f8d68ca', 'trip_chunks_embedding_stale', NULL),
  ('019d1739-fae1-724a-a2a4-d7a634e44266', '019d1736-587a-73df-addd-59801f8d68ca', 'trip_chunks_enqueue_embedding', NULL),
  ('019d1739-fe66-7d3f-80eb-9269f4c654b1', '019d1736-587a-73df-addd-59801f8d68ca', 'place_chunks_embedding_stale', NULL),
  ('019d1739-fea2-73d8-959f-14dc4f3d4eca', '019d1736-587a-73df-addd-59801f8d68ca', 'place_chunks_enqueue_embedding', NULL),
  ('019d173a-01fe-756a-b9a3-43f715062ab9', '019d1736-587a-73df-addd-59801f8d68ca', 'itinerary_item_chunks_embedding_stale', NULL),
  ('019d173a-0238-7a20-92eb-28ac97213d45', '019d1736-587a-73df-addd-59801f8d68ca', 'itinerary_item_chunks_enqueue_embedding', NULL),
  ('019d173a-059d-7c94-9e80-0e7e42dd5a20', '019d1736-587a-73df-addd-59801f8d68ca', 'hiking_trail_chunks_embedding_stale', NULL),
  ('019d173a-05d7-77f3-a320-4b9483449ec2', '019d1736-587a-73df-addd-59801f8d68ca', 'hiking_trail_chunks_enqueue_embedding', NULL),
  ('019d173a-0942-722a-9d77-908811229e22', '019d1736-587a-73df-addd-59801f8d68ca', 'memory_chunks_embedding_stale', NULL),
  ('019d173a-097c-70e3-9ef1-92d4a953d858', '019d1736-587a-73df-addd-59801f8d68ca', 'memory_chunks_enqueue_embedding', NULL),
  ('019d173a-0ced-7a02-a4c0-b94d3821e030', '019d1736-587a-73df-addd-59801f8d68ca', 'goal_chunks_embedding_stale', NULL),
  ('019d173a-0d26-7832-a347-c9051fd59a57', '019d1736-587a-73df-addd-59801f8d68ca', 'goal_chunks_enqueue_embedding', NULL),
  ('019d173a-10b9-710f-bb72-b3739afee26e', '019d1736-587a-73df-addd-59801f8d68ca', 'habit_chunks_embedding_stale', NULL),
  ('019d173a-10f6-70d5-bfdb-689481e043da', '019d1736-587a-73df-addd-59801f8d68ca', 'habit_chunks_enqueue_embedding', NULL),
  ('019d173a-27ed-75c6-a4de-7f9e8f808bbc', '019d1736-587a-73df-addd-59801f8d68ca', 'autonomy_records_embedding_stale', NULL),
  ('019d173a-2828-7b57-8bcf-9d9cd087c5e2', '019d1736-587a-73df-addd-59801f8d68ca', 'autonomy_records_enqueue_embedding', NULL),
  ('019d173a-2b6e-77a2-9fed-0fc18b886822', '019d1736-587a-73df-addd-59801f8d68ca', 'autonomy_record_chunks_embedding_stale', NULL),
  ('019d173a-2ba6-7640-a927-f49627107f2d', '019d1736-587a-73df-addd-59801f8d68ca', 'autonomy_record_chunks_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


