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
  ('000b9a92-3f09-3adc-0a30-04e880d53470', '14b01c2d-072a-5594-645a-675751a83d86', 'runtime_logs_enqueue_embedding', NULL),
  ('01d89044-1639-dc30-6667-77bd54b9074c', '14b01c2d-072a-5594-645a-675751a83d86', 'calendar_events_enqueue_embedding', NULL),
  ('068763cb-9e6d-cbef-e764-0c7a242549c1', '14b01c2d-072a-5594-645a-675751a83d86', 'skills_embedding_stale', NULL),
  ('07e8ed7a-01c1-f6fb-27d8-906cbda62c0a', '14b01c2d-072a-5594-645a-675751a83d86', 'contacts_enqueue_embedding', NULL),
  ('0a4d5740-4cf2-7d77-3833-79103d96bc5f', '14b01c2d-072a-5594-645a-675751a83d86', 'companies_search_tsv_tsv', NULL),
  ('1426bc55-42a7-59f5-503b-9f41e2c4a348', '14b01c2d-072a-5594-645a-675751a83d86', 'runtime_states_embedding_stale', NULL),
  ('14ae0527-9c47-01ae-8c88-1f860954c395', '14b01c2d-072a-5594-645a-675751a83d86', 'tool_definitions_embedding_stale', NULL),
  ('163444f0-8c81-3a21-7d5e-095b7c3765f3', '14b01c2d-072a-5594-645a-675751a83d86', 'interactions_embedding_stale', NULL),
  ('1a67f224-6b57-6d6b-77a5-13dab9835b16', '14b01c2d-072a-5594-645a-675751a83d86', 'emails_enqueue_embedding', NULL),
  ('1d39f59b-c704-cfcf-264d-54484f3e6e7e', '14b01c2d-072a-5594-645a-675751a83d86', 'events_enqueue_embedding', NULL),
  ('22a95bea-6bd5-1573-1e9b-6eb948fb164a', '14b01c2d-072a-5594-645a-675751a83d86', 'activity_logs_embedding_stale', NULL),
  ('240999a3-196f-e24b-0f40-cd9d10032056', '14b01c2d-072a-5594-645a-675751a83d86', 'interactions_enqueue_embedding', NULL),
  ('24460d63-24b1-aae8-0282-8706f200f046', '14b01c2d-072a-5594-645a-675751a83d86', 'events_embedding_stale', NULL),
  ('2a0b6a7d-e054-2dfb-a844-ea58eeb75cb9', '14b01c2d-072a-5594-645a-675751a83d86', 'venues_enqueue_embedding', NULL),
  ('2dda2b44-2d38-af22-d65e-4cae4cbffc39', '14b01c2d-072a-5594-645a-675751a83d86', 'agents_enqueue_embedding', NULL),
  ('2e8c7bda-72b3-f31d-94fa-ff281b6bf078', '14b01c2d-072a-5594-645a-675751a83d86', 'deals_enqueue_embedding', NULL),
  ('315df179-a4b6-fd3f-191d-93db381a95b2', '14b01c2d-072a-5594-645a-675751a83d86', 'messages_enqueue_embedding', NULL),
  ('34f65a51-927d-3114-7a46-25014b5f356e', '14b01c2d-072a-5594-645a-675751a83d86', 'agent_logs_embedding_stale', NULL),
  ('36408d52-944c-bafe-7b75-4a5137f04fae', '14b01c2d-072a-5594-645a-675751a83d86', 'prompts_embedding_stale', NULL),
  ('36f0b098-b025-cd66-8267-0749e218e5d1', '14b01c2d-072a-5594-645a-675751a83d86', 'calendar_events_embedding_stale', NULL),
  ('3d36e875-eb73-80ef-5c45-ae036a5e2352', '14b01c2d-072a-5594-645a-675751a83d86', 'contacts_search_tsv_tsv', NULL),
  ('3dcedff4-0c51-2907-6593-9f701fc0c2bc', '14b01c2d-072a-5594-645a-675751a83d86', 'emails_embedding_stale', NULL),
  ('447e991e-97e9-ade7-4303-3e1244be6ac0', '14b01c2d-072a-5594-645a-675751a83d86', 'hiking_trails_embedding_stale', NULL),
  ('468ca874-8383-fc42-51e2-9bed1855286d', '14b01c2d-072a-5594-645a-675751a83d86', 'encrypted_secrets_hash', NULL),
  ('48531294-0db2-4e5d-e81d-ba3209b75c2d', '14b01c2d-072a-5594-645a-675751a83d86', 'code_chunks_embedding_stale', NULL),
  ('4d9fe84d-6fe3-9c98-1dd1-5be254213518', '14b01c2d-072a-5594-645a-675751a83d86', 'events_search_tsv_tsv', NULL),
  ('4e732734-934e-6689-eba0-f5ef99ea9c57', '14b01c2d-072a-5594-645a-675751a83d86', 'projects_embedding_stale', NULL),
  ('52f82b9e-8eff-f9f2-3b8d-e3c7854a2cea', '14b01c2d-072a-5594-645a-675751a83d86', 'autonomy_records_embedding_stale', NULL),
  ('593fd299-8914-bde0-6b93-2a95a45f3cfa', '14b01c2d-072a-5594-645a-675751a83d86', 'projects_enqueue_embedding', NULL),
  ('5d36a9e5-f9f1-6c94-3fae-458caba272fd', '14b01c2d-072a-5594-645a-675751a83d86', 'codebases_embedding_stale', NULL),
  ('5f1790d2-254f-458d-47fb-f995f28d159b', '14b01c2d-072a-5594-645a-675751a83d86', 'deals_embedding_stale', NULL),
  ('64a0e679-6691-a7e3-b65b-182941845d0c', '14b01c2d-072a-5594-645a-675751a83d86', 'venues_search_tsv_tsv', NULL),
  ('657e0fa1-cf17-cddf-70d6-20111f8896a5', '14b01c2d-072a-5594-645a-675751a83d86', 'agent_logs_enqueue_embedding', NULL),
  ('65ba522f-c88a-05ce-7584-dbf539163c70', '14b01c2d-072a-5594-645a-675751a83d86', 'notes_embedding_stale', NULL),
  ('6d21a42a-a6b9-faf0-82f6-3bed5c611358', '14b01c2d-072a-5594-645a-675751a83d86', 'code_chunks_enqueue_embedding', NULL),
  ('6e86145e-45fd-dde3-acc3-019e0f7e7fcd', '14b01c2d-072a-5594-645a-675751a83d86', 'trips_enqueue_embedding', NULL),
  ('70ef3c10-7c1c-9b56-fd44-1393a5dd094a', '14b01c2d-072a-5594-645a-675751a83d86', 'hiking_trails_enqueue_embedding', NULL),
  ('717142fd-d38c-2703-e485-37fa8bbd4bbf', '14b01c2d-072a-5594-645a-675751a83d86', 'email_threads_search_tsv_tsv', NULL),
  ('74c29888-be0d-1d44-a24c-30c701d47506', '14b01c2d-072a-5594-645a-675751a83d86', 'touchpoints_enqueue_embedding', NULL),
  ('7783b9ec-2628-0d4f-a706-0f6b1d00a98c', '14b01c2d-072a-5594-645a-675751a83d86', 'goals_enqueue_embedding', NULL),
  ('7b9355fb-ba67-97a8-647c-15a7c80dd53c', '14b01c2d-072a-5594-645a-675751a83d86', 'skills_enqueue_embedding', NULL),
  ('7bf24862-c211-e302-59f0-76d89ff5d591', '14b01c2d-072a-5594-645a-675751a83d86', 'memories_embedding_stale', NULL),
  ('7d82e845-50e7-dbce-75ba-3c5c175d56e0', '14b01c2d-072a-5594-645a-675751a83d86', 'places_embedding_stale', NULL),
  ('7e1d8f2f-174b-e839-b2bd-7eeb279fe0f4', '14b01c2d-072a-5594-645a-675751a83d86', 'goals_embedding_stale', NULL),
  ('81e5c316-7c22-ac7c-b2c4-ee24bc0bef6c', '14b01c2d-072a-5594-645a-675751a83d86', 'runtime_states_enqueue_embedding', NULL),
  ('82e7eb9f-e1dd-892a-dc67-f7ed098bf91f', '14b01c2d-072a-5594-645a-675751a83d86', 'email_threads_enqueue_embedding', NULL),
  ('8848ac25-b799-59f6-71a1-ab0d7dfa6b46', '14b01c2d-072a-5594-645a-675751a83d86', 'conversations_embedding_stale', NULL),
  ('8badbc99-b46e-560e-55fd-75702f40e034', '14b01c2d-072a-5594-645a-675751a83d86', 'venues_embedding_stale', NULL),
  ('8c655fe5-2701-724e-adec-73b27edfa50d', '14b01c2d-072a-5594-645a-675751a83d86', 'codebases_enqueue_embedding', NULL),
  ('9207131f-80cf-03ea-d9ae-15240ff28027', '14b01c2d-072a-5594-645a-675751a83d86', 'runtime_logs_embedding_stale', NULL),
  ('94013590-cd0d-d389-de98-06c31c604e8d', '14b01c2d-072a-5594-645a-675751a83d86', 'tasks_embedding_stale', NULL),
  ('96c09e73-f3f2-56c5-c829-3808c609b797', '14b01c2d-072a-5594-645a-675751a83d86', 'emails_search_tsv_tsv', NULL),
  ('a02399ba-c41a-a5ae-6f71-f2557bdfff3f', '14b01c2d-072a-5594-645a-675751a83d86', 'rules_enqueue_embedding', NULL),
  ('a1759234-b449-e9db-2fb6-b9432195f546', '14b01c2d-072a-5594-645a-675751a83d86', 'expenses_enqueue_embedding', NULL),
  ('a76fe67e-0864-61d6-8de2-4f6989659243', '14b01c2d-072a-5594-645a-675751a83d86', 'rules_embedding_stale', NULL),
  ('b2957379-c4ed-b062-e193-e86326374d99', '14b01c2d-072a-5594-645a-675751a83d86', 'prompts_enqueue_embedding', NULL),
  ('b348fead-4668-c853-49bc-61adb68f7252', '14b01c2d-072a-5594-645a-675751a83d86', 'calendar_events_search_tsv_tsv', NULL),
  ('b999e833-0232-2115-2418-98ff16500de9', '14b01c2d-072a-5594-645a-675751a83d86', 'companies_embedding_stale', NULL),
  ('bab6c60a-bdf8-dcc2-200e-d5a3828f77b9', '14b01c2d-072a-5594-645a-675751a83d86', 'touchpoints_embedding_stale', NULL),
  ('c92e85ce-4a28-cad5-ba87-502be962df8e', '14b01c2d-072a-5594-645a-675751a83d86', 'users_search_tsv_tsv', NULL),
  ('cd23bd84-05a5-d93b-ee3a-0617a1fd5013', '14b01c2d-072a-5594-645a-675751a83d86', 'notes_enqueue_embedding', NULL),
  ('d1456272-893d-82ec-97a7-a85bd9ccb500', '14b01c2d-072a-5594-645a-675751a83d86', 'trips_embedding_stale', NULL),
  ('d598cb07-a4f6-0d59-b75a-b3b98de42c04', '14b01c2d-072a-5594-645a-675751a83d86', 'companies_enqueue_embedding', NULL),
  ('d8fa1900-8c64-2beb-759f-dd0ba8919c58', '14b01c2d-072a-5594-645a-675751a83d86', 'tool_definitions_enqueue_embedding', NULL),
  ('da0138e6-4c84-8259-75a3-5c68d5afe04d', '14b01c2d-072a-5594-645a-675751a83d86', 'tasks_enqueue_embedding', NULL),
  ('dec3ccfe-239f-b610-b4e7-2a6957255427', '14b01c2d-072a-5594-645a-675751a83d86', 'places_enqueue_embedding', NULL),
  ('dff3f19d-24f0-9043-fe11-390ed1f2555e', '14b01c2d-072a-5594-645a-675751a83d86', 'autonomy_records_enqueue_embedding', NULL),
  ('e0cbd3d5-15eb-76d5-6d5e-e1aabab84fc3', '14b01c2d-072a-5594-645a-675751a83d86', 'memories_enqueue_embedding', NULL),
  ('e744b244-fe67-6b50-a5ac-a8d8629c76a4', '14b01c2d-072a-5594-645a-675751a83d86', 'messages_embedding_stale', NULL),
  ('e993a01b-5cb9-6e70-b329-d5ba011282a5', '14b01c2d-072a-5594-645a-675751a83d86', 'email_threads_embedding_stale', NULL),
  ('ee35bdb5-9b55-e6e4-25a6-198963ef4305', '14b01c2d-072a-5594-645a-675751a83d86', 'contacts_embedding_stale', NULL),
  ('eed1b66d-9e30-a347-a159-b3aeb72eba1d', '14b01c2d-072a-5594-645a-675751a83d86', 'expenses_embedding_stale', NULL),
  ('ef06ceb8-a082-f2e7-a819-e6616c3304dd', '14b01c2d-072a-5594-645a-675751a83d86', 'conversations_enqueue_embedding', NULL),
  ('f09a5fb5-a728-a2d4-aa80-235c86b5990b', '14b01c2d-072a-5594-645a-675751a83d86', 'agents_embedding_stale', NULL),
  ('fc1fb566-2948-6599-b368-ff45b98bcede', '14b01c2d-072a-5594-645a-675751a83d86', 'activity_logs_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


