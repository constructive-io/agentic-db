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
  ('019d1795-4a85-7347-925d-83b0878d7e55', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'users_search_tsv_tsv', NULL),
  ('019d1795-df2a-7813-829e-008972805eb5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'encrypted_secrets_hash', NULL),
  ('28b8593e-2650-fa24-0240-a4b94fead6fe', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'contacts_search_tsv_tsv', NULL),
  ('b39bbe69-13b5-98cf-0212-6b2b02ef2134', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'contacts_embedding_stale', NULL),
  ('9245615e-4177-b394-4e1d-9d3bf05662b2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'contacts_enqueue_embedding', NULL),
  ('2e7216f8-1a4f-bf6c-763a-504f74eb995f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'companies_search_tsv_tsv', NULL),
  ('a86f68aa-39b3-f4ae-2aaf-b970aab6b9f3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'companies_embedding_stale', NULL),
  ('1529fdcf-f2b1-9659-cd01-48445958a150', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'companies_enqueue_embedding', NULL),
  ('c66bf911-3718-1597-1169-ca7ff6415e44', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'deals_embedding_stale', NULL),
  ('81956752-6c00-f9b3-b95f-6c1e42debd40', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'deals_enqueue_embedding', NULL),
  ('99f02d79-8b32-3774-3386-7c5b0a614b26', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'events_search_tsv_tsv', NULL),
  ('5548ee80-4ac8-6b2f-a2d2-6703a5d40665', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'events_embedding_stale', NULL),
  ('eea87fc7-b513-17ab-faac-af608d704327', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'events_enqueue_embedding', NULL),
  ('bf1ae08b-fc10-dea2-3ea6-29eaa3be955c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'venues_search_tsv_tsv', NULL),
  ('ca82dc85-a39f-29e2-f4e8-e2101b917cb4', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'venues_embedding_stale', NULL),
  ('450cf09c-8de6-ed6f-7302-94916f44a18e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'venues_enqueue_embedding', NULL),
  ('ff7834f5-df0e-92c7-3d9a-158629b397a3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'notes_embedding_stale', NULL),
  ('ef840f00-8389-9277-1295-b5345ab190f7', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'notes_enqueue_embedding', NULL),
  ('b7f4baa8-c9ba-41fe-3d26-d9b9d347eb4d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'interactions_embedding_stale', NULL),
  ('9edbc899-2909-0e73-6535-395ef35a81ac', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'interactions_enqueue_embedding', NULL),
  ('4ba5355d-3773-987f-ff83-7a568fb6878a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'contact_chunks_embedding_stale', NULL),
  ('a5d13af2-9c98-e7f8-9551-a5d61e41ad46', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'contact_chunks_enqueue_embedding', NULL),
  ('0dc855ba-fb60-dbc8-3b65-3774ca269adf', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'company_chunks_embedding_stale', NULL),
  ('754fd6ae-97e4-7c0c-82eb-afcd63ce37fe', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'company_chunks_enqueue_embedding', NULL),
  ('fc242773-1ac9-df09-9d9c-668b2b4c7b1c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'deal_chunks_embedding_stale', NULL),
  ('0c6129da-6b93-1520-b27e-947f931bf084', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'deal_chunks_enqueue_embedding', NULL),
  ('5767850e-b7c0-2c91-f28d-d68107a3d6ff', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'event_chunks_embedding_stale', NULL),
  ('a51e0261-f654-5a3d-1d16-b5022d91f479', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'event_chunks_enqueue_embedding', NULL),
  ('d403ac82-d442-9114-7f81-f3de4686633f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'venue_chunks_embedding_stale', NULL),
  ('69266ba4-092e-ab8d-9fb0-3bb9c2ab8a3d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'venue_chunks_enqueue_embedding', NULL),
  ('14234c73-cf51-790a-1d04-863eb09fe900', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'note_chunks_embedding_stale', NULL),
  ('e928cf4a-175f-22fa-a10e-95b4a258974d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'note_chunks_enqueue_embedding', NULL),
  ('59adc383-93f8-80a9-7724-f6c3cd7eaddf', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'interaction_chunks_embedding_stale', NULL),
  ('4a6e457f-30ad-8116-2486-4a9cc7d02562', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'interaction_chunks_enqueue_embedding', NULL),
  ('bc3a976c-dc77-4383-d4a7-d48fb4d4e22b', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agents_embedding_stale', NULL),
  ('d476193e-9a24-ce1b-eaba-79500f8c9636', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agents_enqueue_embedding', NULL),
  ('6fbe4bfe-6228-a81c-92f9-4739679266e1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_tasks_embedding_stale', NULL),
  ('ab505465-5d19-cad7-1447-3c36fe718531', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_tasks_enqueue_embedding', NULL),
  ('33609a40-ef30-e528-4923-ee687c0e834d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_logs_embedding_stale', NULL),
  ('627be264-174d-6ef7-5cb9-67803d9050fd', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_logs_enqueue_embedding', NULL),
  ('dd63013b-b648-e2ad-8a7d-82660b76c0eb', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'rules_embedding_stale', NULL),
  ('24b80a43-bdb8-ceaf-7e5a-83a518cd3cb2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'rules_enqueue_embedding', NULL),
  ('bdb1f31c-36b9-8b44-36e1-7a40bb2e7f31', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'skills_embedding_stale', NULL),
  ('4783e477-1c8b-8f9b-2208-12badade0b48', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'skills_enqueue_embedding', NULL),
  ('1142b660-08b3-646d-8de9-fb6449d39a14', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_chunks_embedding_stale', NULL),
  ('9277ffea-b78c-ffa1-3ebf-77b59e955601', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_chunks_enqueue_embedding', NULL),
  ('dfe585ad-b920-f75c-3359-b234f2e34df3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_task_chunks_embedding_stale', NULL),
  ('092ae169-96b4-0a0e-30dc-5f0bd76239f3', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_task_chunks_enqueue_embedding', NULL),
  ('f49acf17-6eff-ca3e-6ca0-c784db2fb1ef', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_log_chunks_embedding_stale', NULL),
  ('e338bf9d-6ae0-a376-f1d0-58ea0c637d3c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'agent_log_chunks_enqueue_embedding', NULL),
  ('6f1aedbf-1635-6680-957d-af5d586b35d6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'rule_chunks_embedding_stale', NULL),
  ('cf8edbf3-bda0-2cc3-4cae-2ccea5e1b664', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'rule_chunks_enqueue_embedding', NULL),
  ('0e39f303-c5c0-9c56-be4c-d1b7c4990c83', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'skill_chunks_embedding_stale', NULL),
  ('ccd1fbbd-8d17-9900-20ee-2d887ee7d476', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'skill_chunks_enqueue_embedding', NULL),
  ('b9cfb971-bca8-55a7-dcd3-efa9c0531d7e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_states_embedding_stale', NULL),
  ('8ef2dbae-26da-1be5-8d4d-68f692f7acff', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_states_enqueue_embedding', NULL),
  ('4c377a92-b519-c7e8-08ad-e54c6600efef', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_logs_embedding_stale', NULL),
  ('4ce798c4-cb69-cbb2-bad7-8e0e0f65e42a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_logs_enqueue_embedding', NULL),
  ('7bd39810-4398-ab82-7ee0-843a2cf1bba1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_state_chunks_embedding_stale', NULL),
  ('1edffb3e-4342-3caf-ad74-6b1ee7d53f89', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_state_chunks_enqueue_embedding', NULL),
  ('c4f9f6ea-2587-d13e-c6dc-af0404d20d00', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_log_chunks_embedding_stale', NULL),
  ('48af88db-f94b-f527-b382-718f5e354388', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'runtime_log_chunks_enqueue_embedding', NULL),
  ('a7a54409-8604-571f-5f2a-f5a400519bfe', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'conversations_embedding_stale', NULL),
  ('a7b6bd96-93c6-0a79-1105-4de07c86022b', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'conversations_enqueue_embedding', NULL),
  ('c0f955cf-f3d3-9097-e003-6188fde792b1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'messages_embedding_stale', NULL),
  ('855e09a1-4b67-d583-5281-8551a9620b92', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'messages_enqueue_embedding', NULL),
  ('f6652c95-0ae3-249b-67cb-ffb75c3a296d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'conversation_chunks_embedding_stale', NULL),
  ('3eef86c2-1277-cf1b-928f-50b1d6069df5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'conversation_chunks_enqueue_embedding', NULL),
  ('d86c61aa-fe89-1c5c-2a6b-9f1d2a91e5ec', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'message_chunks_embedding_stale', NULL),
  ('dd89aa0f-efa1-ac99-05e0-f9af8b8f4fb6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'message_chunks_enqueue_embedding', NULL),
  ('061fc077-b509-3f14-55c3-c3eb81eab3e2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'projects_embedding_stale', NULL),
  ('349c7e9f-6d4c-5b0a-289b-22a007a686f8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'projects_enqueue_embedding', NULL),
  ('073d15a3-6de1-f10b-8252-66b2b09a1496', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'project_chunks_embedding_stale', NULL),
  ('dd0dc610-bdeb-e429-4592-ee91ac6afea9', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'project_chunks_enqueue_embedding', NULL),
  ('8b34d25a-baeb-c2a2-138e-c4612caaf92b', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'codebases_embedding_stale', NULL),
  ('01d9a9bd-47b9-49d4-d377-d18a84f8b439', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'codebases_enqueue_embedding', NULL),
  ('53b6dc02-df52-d26c-e52c-aff22d0ab7a7', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'code_chunks_embedding_stale', NULL),
  ('206afb02-7a2f-8034-c417-ad9441afc193', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'code_chunks_enqueue_embedding', NULL),
  ('15cb1e0e-928f-8773-3a49-062f60d9e2f1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'codebas_chunks_embedding_stale', NULL),
  ('b8876af6-c832-03d5-3b2d-9c378592d9a5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'codebas_chunks_enqueue_embedding', NULL),
  ('f5e769c2-d999-4f93-a104-2811fe447535', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'trips_embedding_stale', NULL),
  ('63ec24aa-809c-6a41-6f52-ecbfb60880a8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'trips_enqueue_embedding', NULL),
  ('b22e25f3-578a-612b-ba07-7046580afaea', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'places_embedding_stale', NULL),
  ('5aa990eb-a606-8fbf-4679-b58a4614f4be', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'places_enqueue_embedding', NULL),
  ('87410014-a44f-36e5-3d3d-32169a4063c1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'itinerary_items_embedding_stale', NULL),
  ('c84446fd-3191-3675-4036-994bc82589bf', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'itinerary_items_enqueue_embedding', NULL),
  ('90207ac5-d5f6-4d3c-17bd-b32675fc5437', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'hiking_trails_embedding_stale', NULL),
  ('c662ed46-f462-5e14-9b72-9080f6e500a6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'hiking_trails_enqueue_embedding', NULL),
  ('033f71ad-2b9e-0d47-51e4-befb8f96ecc9', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'memories_embedding_stale', NULL),
  ('26c97517-0269-222f-d47d-5c29ad74ee49', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'memories_enqueue_embedding', NULL),
  ('b442910e-4248-4aaf-aa1d-b3f6c17dd519', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'goals_embedding_stale', NULL),
  ('e35146d4-b6e4-68bc-07e3-3beb86f05af2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'goals_enqueue_embedding', NULL),
  ('15d849d4-1cee-4487-dfaa-8e546b4f880e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'habits_embedding_stale', NULL),
  ('0df340bc-bc14-6acc-e239-60f5ea5dbf8b', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'habits_enqueue_embedding', NULL),
  ('181a799a-bbf9-2690-e41b-c35c034cb260', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'trip_chunks_embedding_stale', NULL),
  ('98ecc071-29a2-1402-e72a-f61380ff29ff', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'trip_chunks_enqueue_embedding', NULL),
  ('13d1bc5b-934f-b080-4971-28c3fa52bd1c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'place_chunks_embedding_stale', NULL),
  ('fcc21c70-da81-37a1-767f-faae31e3169d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'place_chunks_enqueue_embedding', NULL),
  ('19e68fbd-ca35-bc04-4e89-7a4b3af140a8', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'itinerary_item_chunks_embedding_stale', NULL),
  ('6570134d-b889-f7c5-4fe3-86551a207d7e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'itinerary_item_chunks_enqueue_embedding', NULL),
  ('6cbab45e-e7d8-06f0-65e4-bf1d4355eeb9', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'hiking_trail_chunks_embedding_stale', NULL),
  ('f50d968a-7253-f82e-b578-17c9e999441a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'hiking_trail_chunks_enqueue_embedding', NULL),
  ('b2b4643e-d3ca-8a1e-0271-a0b10c4f09da', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'memory_chunks_embedding_stale', NULL),
  ('feee7945-2235-3783-9170-7ac1d2590f46', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'memory_chunks_enqueue_embedding', NULL),
  ('99a60617-4e52-61a7-e9ed-1b3e65c01b02', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'goal_chunks_embedding_stale', NULL),
  ('18dfa6bb-9085-1a58-2d23-f58baf00ef36', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'goal_chunks_enqueue_embedding', NULL),
  ('7b97d08c-0c15-2f28-77b2-f978307780ad', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'habit_chunks_embedding_stale', NULL),
  ('ec90c691-28ba-c4c0-e972-a0d7214fa2e1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'habit_chunks_enqueue_embedding', NULL),
  ('2d577a1d-2508-22aa-3331-afa052bec1b6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'autonomy_records_embedding_stale', NULL),
  ('05baac22-ea17-5987-9e59-7f49f591f2ff', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'autonomy_records_enqueue_embedding', NULL),
  ('94c3059d-a76d-3095-ad26-cba3b2adb2f4', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'autonomy_record_chunks_embedding_stale', NULL),
  ('9be3cef3-7ad1-a630-58dc-4995a47a7e43', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'autonomy_record_chunks_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


