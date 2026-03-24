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
  ('02cee576-45b0-b3e9-91b3-9cdd0684373f', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'events_search_tsv_tsv', NULL),
  ('02d8001d-792f-3514-4109-7b9379118b2c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'companies_enqueue_embedding', NULL),
  ('03725efe-a296-de72-5f06-85cd59584d0a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'skills_enqueue_embedding', NULL),
  ('0486f256-7dda-886c-b5be-d6b1b7f95814', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'notes_embedding_stale', NULL),
  ('0909950b-d070-0d4d-de5b-535412d9d258', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'deals_enqueue_chunking', NULL),
  ('09a533b8-2c82-8131-194b-d66ea16c7a8d', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'notes_enqueue_chunking', NULL),
  ('0a7aa607-dca9-a64c-e25c-92178e635174', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'rules_enqueue_chunking', NULL),
  ('179c1d7b-17ae-153b-27ae-0585adc3bc2b', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'habits_enqueue_embedding', NULL),
  ('182e91f7-bc92-da71-dfc9-92b1c7b44489', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'agents_enqueue_embedding', NULL),
  ('198b5e77-47e8-5d50-fc89-c4007d482578', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'code_chunks_enqueue_embedding', NULL),
  ('252a8587-47a8-85f5-e6e4-8d3436864075', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'goals_enqueue_chunking', NULL),
  ('25e5231e-5383-4cf8-404d-2eb0fa4361d2', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'code_chunks_embedding_stale', NULL),
  ('29f5404f-492c-3160-c653-f9a978c0f570', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'hiking_trails_enqueue_embedding', NULL),
  ('2e6e409f-37cd-32e4-704a-393218412980', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'runtime_logs_enqueue_chunking', NULL),
  ('2fd17b14-795c-8431-7e1d-f374ec187641', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'events_enqueue_embedding', NULL),
  ('316bc696-5a45-e646-7a1f-94a3e62010eb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'companies_enqueue_chunking', NULL),
  ('3281a180-c35b-cc82-0042-d7ef21fff134', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'trips_enqueue_chunking', NULL),
  ('33ecdcea-3ac5-edf8-50f6-91e340318d47', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'agent_logs_enqueue_chunking', NULL),
  ('359977b3-4e51-ff72-f6a9-a447f1c7983c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'contacts_search_tsv_tsv', NULL),
  ('39a68c47-7a08-bf69-bb6c-cf5f94843545', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'touchpoints_embedding_stale', NULL),
  ('39cf62c0-7153-eaf2-ece3-448e9e6d361a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'trips_enqueue_embedding', NULL),
  ('3b9bda55-5d83-ce41-b9e1-a48d82817784', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'hiking_trails_embedding_stale', NULL),
  ('3fcb03e5-9e1f-46a6-8366-c54beb497d71', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'projects_embedding_stale', NULL),
  ('488cf035-5599-8983-8199-6cbf41fa1c87', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'venues_embedding_stale', NULL),
  ('4ad6bb7c-127f-28ec-4c0f-aec04e698e35', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'messages_embedding_stale', NULL),
  ('4f920715-7173-60d5-1b1a-d25dfcb7d78a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'codebases_enqueue_embedding', NULL),
  ('50251a7d-e2f3-6cd9-f40a-63c6808fa356', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'memories_enqueue_embedding', NULL),
  ('514ba548-066a-2fdd-d18b-51e9f4c07bd8', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'agents_embedding_stale', NULL),
  ('526bcbcb-b90e-a00d-9b4f-4ea7ee8e6c77', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'hiking_trails_enqueue_chunking', NULL),
  ('52b307fa-7d2a-3586-8908-219512117d08', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'touchpoints_enqueue_embedding', NULL),
  ('548d1341-a9db-e84a-ee46-bf81ba15aebc', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'skills_embedding_stale', NULL),
  ('5aaedaef-78f0-e46b-aa67-ea681a6e5be7', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'places_embedding_stale', NULL),
  ('5b3e84fa-fdb5-77a3-8590-9dd40ffc924b', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'messages_enqueue_embedding', NULL),
  ('5b9085e3-e355-56c3-9f71-d5c4c3f8c988', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'rules_enqueue_embedding', NULL),
  ('5c116a69-48d9-4ee2-aa38-0687e28ad77c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'venues_enqueue_embedding', NULL),
  ('5eb86b97-bf3c-59d6-48fd-3f54ae912217', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'tasks_enqueue_chunking', NULL),
  ('6420f39d-bc36-38ad-8b12-aca72436281a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'habits_embedding_stale', NULL),
  ('6791e198-b36b-bc39-a3f6-4621a814d7aa', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'projects_enqueue_embedding', NULL),
  ('6b568a50-c695-e8d2-e293-2bfac286e0c7', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'autonomy_records_embedding_stale', NULL),
  ('6ef96681-2111-ecc5-3219-3551a35803db', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'runtime_logs_enqueue_embedding', NULL),
  ('6fe24edd-dcf5-58d1-2c25-ba2b840e25a1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'goals_embedding_stale', NULL),
  ('779dcdf4-e5b7-f2c6-1c80-da1c1c872a1a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'autonomy_records_enqueue_embedding', NULL),
  ('7b6bfe06-5069-9111-7c2f-8b2e59f2b041', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'touchpoints_enqueue_chunking', NULL),
  ('7d1ec68b-7d73-4aa5-3ee2-f02d263aeacc', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'interactions_embedding_stale', NULL),
  ('7f0c53a3-dc97-3239-6f10-99ead8b214cf', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'contacts_enqueue_chunking', NULL),
  ('7f83e392-0eba-3de9-3623-028846fd763e', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'tasks_enqueue_embedding', NULL),
  ('8058446f-8a7c-a721-c6b4-fbf55ce9772f', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'events_embedding_stale', NULL),
  ('80dc50e8-cdc8-76d2-7454-f27030a4c25c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'interactions_enqueue_embedding', NULL),
  ('85cec546-7410-0bf1-658a-3771ba23f302', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'events_enqueue_chunking', NULL),
  ('8655f8e0-fc14-d5dc-bcd5-20de11587b37', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'venues_search_tsv_tsv', NULL),
  ('9021f9d8-c685-18e5-1ccb-198fdb375dcb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'autonomy_records_enqueue_chunking', NULL),
  ('91f23a99-12d9-f12c-dd94-7ecb87bb7752', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'users_search_tsv_tsv', NULL),
  ('96c6d307-4fa5-2860-28c0-cb42ce878af0', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'messages_enqueue_chunking', NULL),
  ('990d733b-c216-9c68-61fb-3fa4538bfe61', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'codebases_embedding_stale', NULL),
  ('992a736a-2ac4-d95d-17c0-78273de73dea', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'itinerary_items_embedding_stale', NULL),
  ('9bbaefc0-57da-91db-6ebf-970e051c0812', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'places_enqueue_chunking', NULL),
  ('a30ee1fc-ab24-3719-3e0f-5e1dc46b2a22', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'contacts_embedding_stale', NULL),
  ('a6a8f249-66f1-dfd1-f176-bca0908c7cf3', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'companies_search_tsv_tsv', NULL),
  ('a6f9b2c3-2f2a-f0f9-bdbf-4ab7ac429607', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'notes_enqueue_embedding', NULL),
  ('a8c83814-a0fe-9ea3-27b1-1ba382c516ac', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'companies_embedding_stale', NULL),
  ('aace9952-9a6a-4625-4956-11640602e9b1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'contacts_enqueue_embedding', NULL),
  ('adaff1b0-ba3f-265c-8696-5b6e74366c6c', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'agent_logs_enqueue_embedding', NULL),
  ('af5c7dc5-3e06-fd0c-7a29-465ff73986eb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'deals_embedding_stale', NULL),
  ('b04f8d41-989a-4c6f-74fd-c8fd31e61aeb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'conversations_enqueue_chunking', NULL),
  ('b20c62e8-3615-89ce-c980-24dcd7aeb0e3', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'habits_enqueue_chunking', NULL),
  ('b3545d37-3961-fcb0-6021-eefbdfbc34e0', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'itinerary_items_enqueue_chunking', NULL),
  ('bbec38d2-e51c-e32a-ff6e-5f099b99bae1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'venues_enqueue_chunking', NULL),
  ('c2ccc5f8-ea29-e5f4-11b6-3769e2c57830', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'codebases_enqueue_chunking', NULL),
  ('c36cc267-5714-0c32-66d5-3ee52a20ed38', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'encrypted_secrets_hash', NULL),
  ('c70208b5-9012-5f41-ba63-b07630890b56', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'itinerary_items_enqueue_embedding', NULL),
  ('c7240834-35f8-3989-586a-fd295a21bd87', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'memories_enqueue_chunking', NULL),
  ('c762d06c-ce91-b224-7e49-eff407f41801', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'projects_enqueue_chunking', NULL),
  ('cc410532-7739-6708-711e-a1653d1db01d', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'memories_embedding_stale', NULL),
  ('cd126b87-b34e-f23e-e0cc-74853cfc6512', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'agent_logs_embedding_stale', NULL),
  ('cf985054-338a-efa9-e45f-494af8651e5a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'conversations_embedding_stale', NULL),
  ('d1d604fa-a566-21d0-a5f2-00c877cda6a1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'goals_enqueue_embedding', NULL),
  ('d35a7922-9c35-c793-3e43-81b89e1b28d8', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'deals_enqueue_embedding', NULL),
  ('e13f7394-34b2-afdc-2810-93917bf50294', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'places_enqueue_embedding', NULL),
  ('e4228729-e6e3-5b6a-df5b-a0f6441e90c1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'runtime_states_embedding_stale', NULL),
  ('e7cc5944-e19b-b688-b995-eb37e4fade55', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'runtime_states_enqueue_chunking', NULL),
  ('e9aed5cb-0dfd-8fb6-67bd-2425b289ab82', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'runtime_states_enqueue_embedding', NULL),
  ('ea961698-f564-605c-3831-cc71b1dcf268', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'runtime_logs_embedding_stale', NULL),
  ('f149e551-7cc4-f786-75ff-40141bea234b', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'tasks_embedding_stale', NULL),
  ('f21f286d-2b3e-b524-78db-3135b9f5e312', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'trips_embedding_stale', NULL),
  ('f24780cd-b93b-274c-ecc0-5708e1789bdd', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'rules_embedding_stale', NULL),
  ('f8d41ed1-b663-4199-5873-3d5dcd06e9f3', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'agents_enqueue_chunking', NULL),
  ('f9f5cddd-0ac0-6da6-9589-0afe7220e691', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'interactions_enqueue_chunking', NULL),
  ('fa57e7a9-1c62-0c0a-a327-e378acbd1e40', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'conversations_enqueue_embedding', NULL),
  ('fcef7f08-f4b9-eec1-ffae-ec58e178d768', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'skills_enqueue_chunking', NULL);


SET session_replication_role TO DEFAULT;


