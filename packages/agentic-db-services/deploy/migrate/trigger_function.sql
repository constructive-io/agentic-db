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
  ('019d130c-f2fb-73e8-a2ba-277bc86e7343', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'users_search_tsv_tsv', NULL),
  ('019d130d-a632-7790-b18d-283db73678ef', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'encrypted_secrets_hash', NULL),
  ('902c25a2-59a5-869f-797b-8c37bbdfaf03', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'contacts_search_tsv_tsv', NULL),
  ('6fb6e753-fa9c-eebc-d68f-b40f4de45add', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'contacts_embedding_stale', NULL),
  ('e250e683-f04f-9d91-5f4d-728eef7bd734', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'contacts_enqueue_embedding', NULL),
  ('6b6bbcf9-b271-c046-8339-2c924becad4c', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'companies_search_tsv_tsv', NULL),
  ('75b8fccb-fca1-15e1-e3c5-d64a410642d3', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'companies_embedding_stale', NULL),
  ('212f4254-3277-c2b0-b945-1a9c7c5cc441', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'companies_enqueue_embedding', NULL),
  ('e447b5b8-5e55-99f7-ef37-31740873ac24', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'deals_embedding_stale', NULL),
  ('d4128d99-9196-06db-e62b-dbb50ae44e68', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'deals_enqueue_embedding', NULL),
  ('7a82cf6f-124c-51d5-5861-280598d11fad', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'events_search_tsv_tsv', NULL),
  ('d68f3a96-7471-8f7a-7801-a9fe2e39605b', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'events_embedding_stale', NULL),
  ('377c5ed7-0b06-0b79-8832-0eb4e144e94c', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'events_enqueue_embedding', NULL),
  ('c14d784f-25c4-9778-6b92-328f6cdb477b', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'venues_search_tsv_tsv', NULL),
  ('a0ae9ffe-fe14-eae0-4a0f-bdb5d4a27ca4', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'venues_embedding_stale', NULL),
  ('05b70a12-ee7a-20bd-c9a0-049a149086d7', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'venues_enqueue_embedding', NULL),
  ('fb85585a-18ec-10b0-6975-79d929359f40', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'notes_embedding_stale', NULL),
  ('fb2fdeeb-0d83-8bd6-98a1-f42e9fdda604', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'notes_enqueue_embedding', NULL),
  ('6301e67c-1c9a-a637-2368-2ccc20388892', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'interactions_embedding_stale', NULL),
  ('483c58e7-f1bf-b943-dda0-a5e56a791b6f', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'interactions_enqueue_embedding', NULL),
  ('56d9e20f-add8-0ca8-9deb-24504a6c8200', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'contact_chunks_enqueue_embedding', NULL),
  ('36395308-89e2-7776-f6b3-a2061624c36f', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'company_chunks_enqueue_embedding', NULL),
  ('9226499e-f353-9015-3cec-39c19f8ead28', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'deal_chunks_enqueue_embedding', NULL),
  ('30029438-ba09-e372-276a-1e8738baf09f', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'event_chunks_enqueue_embedding', NULL),
  ('8fa44b6c-ec76-d1e1-2a0d-2d45c2d9d468', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'venue_chunks_enqueue_embedding', NULL),
  ('96ed15bc-6ea6-2760-612b-fa4e85569e80', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'note_chunks_enqueue_embedding', NULL),
  ('61ca1d45-f9d8-82b1-b916-679479906594', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'interaction_chunks_enqueue_embedding', NULL),
  ('4d4e39d0-b846-c270-a76e-42d3bb2807ad', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agents_embedding_stale', NULL),
  ('fda37a9e-6333-4e2d-0f75-cc8d43c46685', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agents_enqueue_embedding', NULL),
  ('bf48506a-177d-9d4d-4d29-69c50c61ed56', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agent_tasks_embedding_stale', NULL),
  ('b5a1125e-a934-340b-b356-37af099852a5', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agent_tasks_enqueue_embedding', NULL),
  ('c68fcf71-740b-c8c9-4810-d0900e30e713', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agent_logs_embedding_stale', NULL),
  ('5ab8dd7d-491b-61ad-f9f3-2fab432c8a5f', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agent_logs_enqueue_embedding', NULL),
  ('dc994641-43f6-cb2c-074b-ec1a1c9ec628', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'rules_embedding_stale', NULL),
  ('bc536cfb-fede-b28c-1caa-7e85c221b9e8', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'skills_embedding_stale', NULL),
  ('c835950a-88d3-25c2-e114-d4ac22e20318', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agent_chunks_enqueue_embedding', NULL),
  ('e1c9fadd-6d52-414d-eb21-05c3ecd7a49a', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agent_task_chunks_enqueue_embedding', NULL),
  ('44a198cd-c800-aeca-c48f-39fe37573f25', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'agent_log_chunks_enqueue_embedding', NULL),
  ('acb27ec5-2128-6677-bdde-a20c7cd4ff53', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'runtime_states_embedding_stale', NULL),
  ('d4f6f676-5445-20a3-2481-db5a12e4801b', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'runtime_states_enqueue_embedding', NULL),
  ('00e5efbe-cf60-a670-62b5-c29fcaaab981', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'runtime_logs_embedding_stale', NULL),
  ('08f4ca60-a648-abb5-482d-382075629907', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'runtime_logs_enqueue_embedding', NULL),
  ('e6c2186d-98c3-56a3-5a14-d41e584ff182', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'runtime_state_chunks_enqueue_embedding', NULL),
  ('9e0f94b0-967d-2b9d-7a8f-f82bd11b8721', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'runtime_log_chunks_enqueue_embedding', NULL),
  ('88bd52a7-6b0b-2623-4f47-a7b594d2819c', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'projects_embedding_stale', NULL),
  ('5bf77aaf-42cb-64dd-d1aa-6ea568792787', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'projects_enqueue_embedding', NULL),
  ('ddd70b02-116b-a3ed-02b0-f86830ed55da', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'project_chunks_enqueue_embedding', NULL),
  ('4b298d8d-7b2c-58ab-9b3a-a8f71579aade', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'codebases_embedding_stale', NULL),
  ('6fdcaaa2-a289-e51d-406b-f894b4fc6759', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'codebases_enqueue_embedding', NULL),
  ('6b0c8350-f315-5792-3dc5-357da0d10c02', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'code_chunks_embedding_stale', NULL),
  ('a18ed8dc-63f9-983d-6c4a-bc06b64ac616', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'code_chunks_enqueue_embedding', NULL),
  ('ab66cafc-be02-08a0-5838-a8e8883c5204', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'codebas_chunks_enqueue_embedding', NULL),
  ('ea7e3877-0c59-ed25-e44c-e410dc4592a6', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'trips_embedding_stale', NULL),
  ('66fa44be-736a-b4a6-8105-1c8e707fc483', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'trips_enqueue_embedding', NULL),
  ('7df2a959-daa1-11bb-7708-1ef5c303330a', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'places_embedding_stale', NULL),
  ('5ee8114f-e516-47ba-404f-d49837628875', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'places_enqueue_embedding', NULL),
  ('26ad632e-e8a8-3703-bb7c-88d08f933bb8', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'itinerary_items_embedding_stale', NULL),
  ('c217c593-a649-a215-4ce6-0fe3202870a7', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'itinerary_items_enqueue_embedding', NULL),
  ('20ba6dc6-8e4d-2ae1-d077-d8e78e1a4983', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'hiking_trails_embedding_stale', NULL),
  ('8378583a-f895-86ef-d6d0-a9b68cdf9ecc', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'hiking_trails_enqueue_embedding', NULL),
  ('63548c6e-24bf-e152-9701-cbe2477595ab', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'memories_embedding_stale', NULL),
  ('0d8dd5c9-eb3d-f016-b49c-49aff0227c16', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'memories_enqueue_embedding', NULL),
  ('d458782d-172f-8d5f-93d3-a27a7c66fc34', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'goals_embedding_stale', NULL),
  ('816295a4-3a3c-26ae-abbf-c681e46f88e9', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'goals_enqueue_embedding', NULL),
  ('09507be0-0f06-c54f-d2e7-040ee1f6ccd3', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'habits_embedding_stale', NULL),
  ('200f76c1-7182-6922-daca-34902cb59da9', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'habits_enqueue_embedding', NULL),
  ('14ac0a7c-93b7-26f6-4b83-4715905e0259', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'trip_chunks_enqueue_embedding', NULL),
  ('646fb04e-2ae7-a074-7921-bb44941087b2', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'place_chunks_enqueue_embedding', NULL),
  ('1cfc8cba-3c5c-2a47-bcc0-135952ac9540', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'itinerary_item_chunks_enqueue_embedding', NULL),
  ('1c6af09b-92fc-7884-b651-86d3e1b1538e', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'hiking_trail_chunks_enqueue_embedding', NULL),
  ('6a15fc54-f401-e234-0327-f5b0dff9d6eb', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'memory_chunks_enqueue_embedding', NULL),
  ('b31c8bb0-9291-a1bd-23e6-0f02a5953add', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'goal_chunks_enqueue_embedding', NULL),
  ('10c29079-00e3-23a8-b226-2646e2eea551', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'habit_chunks_enqueue_embedding', NULL),
  ('01c0518a-e40a-5419-eaa3-59302de8f38e', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'autonomy_records_embedding_stale', NULL),
  ('729e0836-d89d-d519-3352-816c7495ba40', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'autonomy_records_enqueue_embedding', NULL),
  ('f7e6faf5-3f14-6c05-884d-ae634e3fafb9', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'autonomy_record_chunks_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


