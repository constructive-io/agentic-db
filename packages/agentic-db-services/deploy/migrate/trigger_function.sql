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
  ('b1cc97d0-ac81-f4e4-e50c-e550449ce3ea', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'users_search_tsv_tsv', NULL),
  ('eb018b15-014f-5d4b-4f1c-843334aa70a6', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'encrypted_secrets_hash', NULL),
  ('8c9700c9-a41f-b7e7-e69d-8ce8e5f15668', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'contacts_search_tsv_tsv', NULL),
  ('6fc99841-a962-edf5-b03a-0ca0e0e176e5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'contacts_embedding_stale', NULL),
  ('6c07299c-326e-acaa-537f-6cbc0e58103f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'contacts_enqueue_embedding', NULL),
  ('2cd5be2b-ce3a-0b46-cfa2-4b3886f11fdf', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'companies_search_tsv_tsv', NULL),
  ('0a992606-07f9-a0bb-2dd7-d33420c6fc28', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'companies_embedding_stale', NULL),
  ('35ef7389-e4e1-7678-02f2-2a84e12453b5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'companies_enqueue_embedding', NULL),
  ('e7cc94b6-cc9c-325e-5065-36e78307bbe9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'deals_embedding_stale', NULL),
  ('c247e362-74f6-2d15-d3fe-068c2beae42e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'deals_enqueue_embedding', NULL),
  ('28f4bf91-0545-97ad-7388-28456bc5f5fd', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'events_search_tsv_tsv', NULL),
  ('f5f120ca-4e0e-c2c0-c7e2-cc6b063ae064', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'events_embedding_stale', NULL),
  ('9e5a4899-cce4-809b-b674-9401f3e71ba6', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'events_enqueue_embedding', NULL),
  ('ff64a11b-5d90-f001-2005-e1d9fb27ec04', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'venues_search_tsv_tsv', NULL),
  ('42483311-d1b7-f75c-a8f0-181c9dd90449', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'venues_embedding_stale', NULL),
  ('eb890524-962a-0555-2447-208a7f144bbb', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'venues_enqueue_embedding', NULL),
  ('76909786-68f0-9a77-52b2-346cd15b4b1c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'notes_embedding_stale', NULL),
  ('f9baefba-7aa1-16a2-f7f9-47162d8e1121', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'notes_enqueue_embedding', NULL),
  ('de685e4e-617c-4c86-87db-060289f89ef4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'interactions_embedding_stale', NULL),
  ('15f69e7a-0ad8-8a48-cff1-26120ad85f69', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'interactions_enqueue_embedding', NULL),
  ('0ae173e9-22ad-76b4-ff0b-5a11471351a6', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'contact_chunks_enqueue_embedding', NULL),
  ('f5c74fee-6f57-72e8-06c4-6ce2b7b29804', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'company_chunks_enqueue_embedding', NULL),
  ('0ded5a7f-4b91-74c7-0e3d-409872ee2537', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'deal_chunks_enqueue_embedding', NULL),
  ('1cc75a7d-d8de-4948-8b34-9d296c8cd1c5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'event_chunks_enqueue_embedding', NULL),
  ('3e7c8e9a-9fbb-6ef1-395c-1efa8731ff75', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'venue_chunks_enqueue_embedding', NULL),
  ('09584e91-87c8-148d-eb0d-f277c9dba5d1', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'note_chunks_enqueue_embedding', NULL),
  ('5f4b4e49-57aa-87a1-07e4-6b070c73165a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'interaction_chunks_enqueue_embedding', NULL),
  ('0670e9c8-d603-80df-a6cd-bbd757a24d87', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agents_embedding_stale', NULL),
  ('cea4da79-fbcc-e4d0-2fd0-71b4a572816b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agents_enqueue_embedding', NULL),
  ('9113a452-eeda-3e08-4c82-1f73f9adf20b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agent_tasks_embedding_stale', NULL),
  ('a3084409-63c3-c531-8c2a-f0139557ea84', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agent_tasks_enqueue_embedding', NULL),
  ('4f0fcb31-ee25-7cf1-e5df-e537518968ab', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agent_logs_embedding_stale', NULL),
  ('53ce12e8-5457-748f-721c-22967f928d22', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agent_logs_enqueue_embedding', NULL),
  ('9246b031-71d5-4ede-caa7-6e9067dda1ae', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'rules_embedding_stale', NULL),
  ('79aad440-a7ab-6c66-646a-b04c35463ec3', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'rules_enqueue_embedding', NULL),
  ('42bd930d-73f8-5b7c-5e01-2fb8f9e9b6af', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'skills_embedding_stale', NULL),
  ('6f1b3f89-a51e-aeb5-68e1-98c4846664df', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'skills_enqueue_embedding', NULL),
  ('169496f7-0e47-89a0-2ec7-532ce7889476', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agent_chunks_enqueue_embedding', NULL),
  ('502a56ba-0a5e-2ce9-7831-b43a6734cacd', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agent_task_chunks_enqueue_embedding', NULL),
  ('493c3f5e-42be-4e4d-38cf-43f486f97987', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'agent_log_chunks_enqueue_embedding', NULL),
  ('0348c6a7-6e58-6654-a985-27db57016f36', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'rule_chunks_enqueue_embedding', NULL),
  ('f0ffbd82-2ac9-2b78-e5b5-cdf1eb332d35', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'skill_chunks_enqueue_embedding', NULL),
  ('afc0c61f-1915-c4e9-6428-537a0d88d462', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'runtime_states_embedding_stale', NULL),
  ('32f03bbc-aaa5-8e98-b47f-44ec53156152', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'runtime_states_enqueue_embedding', NULL),
  ('d89200ee-4633-9044-5b4c-2818b6cdeb8f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'runtime_logs_embedding_stale', NULL),
  ('248bb68a-7cc1-fcf9-0e91-e3d7695d98d4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'runtime_logs_enqueue_embedding', NULL),
  ('e28d9e5f-7628-214c-44a6-7138b3c856b8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'runtime_state_chunks_enqueue_embedding', NULL),
  ('2eb4095a-6149-4ea9-9600-1753cf295682', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'runtime_log_chunks_enqueue_embedding', NULL),
  ('58491a9c-69b1-ee7d-8077-8d15e36bf237', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'conversations_embedding_stale', NULL),
  ('b7899fc8-1606-47b5-f7d5-3a972b8f08aa', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'conversations_enqueue_embedding', NULL),
  ('5a00f8af-7a11-f473-ac17-587a37e1c91c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'messages_embedding_stale', NULL),
  ('00bb7df6-170d-f0d1-4fc7-7688c2bc02d5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'messages_enqueue_embedding', NULL),
  ('8c44a734-e922-da19-9d8d-d5faa5624948', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'conversation_chunks_enqueue_embedding', NULL),
  ('9a53033f-c851-269a-c136-7947ab8230da', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'message_chunks_enqueue_embedding', NULL),
  ('b0b86daf-c29b-0e28-2268-d055f2093e65', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'projects_embedding_stale', NULL),
  ('4dd80559-3e7b-2c95-0cc7-665dc4c74113', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'projects_enqueue_embedding', NULL),
  ('83cd4852-fe0b-1969-4cf9-26626f0c9e86', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'project_chunks_enqueue_embedding', NULL),
  ('2a70f84c-8ae3-63af-d0d1-2e93b0acdd1c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'codebases_embedding_stale', NULL),
  ('31d9db95-ce2f-5fbc-3ed6-70b1c3f9473f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'codebases_enqueue_embedding', NULL),
  ('97574f13-9b6c-3321-19f1-f8bd24d4b521', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'code_chunks_embedding_stale', NULL),
  ('3a13a17f-d054-6e0d-8fc3-0f3962b9d65d', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'code_chunks_enqueue_embedding', NULL),
  ('96908600-a297-febe-ec5f-c4f77a86f7c3', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'codebas_chunks_enqueue_embedding', NULL),
  ('30f58067-f3cf-0c1c-9ac5-0ba7ce681259', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'trips_embedding_stale', NULL),
  ('9ed3b310-e826-40dc-f6f9-9608a47e8fba', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'trips_enqueue_embedding', NULL),
  ('1a8e6620-4657-8aae-b609-29af4c3186c0', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'places_embedding_stale', NULL),
  ('9588d86b-2c52-3de5-ef09-dc9fb08ae2ff', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'places_enqueue_embedding', NULL),
  ('53e368a5-5a47-a6f7-5599-ebe9c7eb9086', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'itinerary_items_embedding_stale', NULL),
  ('452ae8b6-8b76-ce5f-42db-baeb90bc44b7', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'itinerary_items_enqueue_embedding', NULL),
  ('1218394e-aeba-02fb-cd87-e457e7d5f83a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'hiking_trails_embedding_stale', NULL),
  ('783c8622-5993-c318-4737-d9f8b24528f3', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'hiking_trails_enqueue_embedding', NULL),
  ('c7dc8a53-2c11-e4b6-b417-4d3c28ab001a', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'memories_embedding_stale', NULL),
  ('80999bae-b047-8cbf-a876-2f7b944693df', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'memories_enqueue_embedding', NULL),
  ('3914ceef-65bd-5567-dd95-64e9870db908', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'goals_embedding_stale', NULL),
  ('9d77429d-c656-9dbe-05f3-7fbd63e5475f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'goals_enqueue_embedding', NULL),
  ('0dc31e50-74e7-7372-e9c5-cda945333fe9', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'habits_embedding_stale', NULL),
  ('c51a743f-f408-03d6-2562-270327e6f1b3', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'habits_enqueue_embedding', NULL),
  ('7579de28-9813-2af9-8800-f2891535bbcc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'trip_chunks_enqueue_embedding', NULL),
  ('76dd16dd-4c7c-ab2f-c2f0-c3c86ee946d4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'place_chunks_enqueue_embedding', NULL),
  ('0dda9e5d-a3aa-0ef6-7e92-86a97fc999c4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'itinerary_item_chunks_enqueue_embedding', NULL),
  ('1a826bb6-e43a-8341-2285-b496c7dba1cc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'hiking_trail_chunks_enqueue_embedding', NULL),
  ('098804a6-5ca0-2bc1-d9e8-1c13a919d2c3', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'memory_chunks_enqueue_embedding', NULL),
  ('0d2e2bcf-196d-3f23-4471-6d99f07eb23f', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'goal_chunks_enqueue_embedding', NULL),
  ('8d0d7cf6-ebcd-d178-445a-855fd5f25daa', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'habit_chunks_enqueue_embedding', NULL),
  ('c5f43905-783d-bddd-9a76-6f49c9d5a3fc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'autonomy_records_embedding_stale', NULL),
  ('47a5e3b9-16fb-99f2-8ce0-becb15bab4f4', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'autonomy_records_enqueue_embedding', NULL),
  ('81c13b3f-6280-8e1f-a6d2-cec7cfd2817c', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'autonomy_record_chunks_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


