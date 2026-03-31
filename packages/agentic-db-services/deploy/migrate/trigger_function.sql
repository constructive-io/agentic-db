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
  ('00bd4747-21ad-99f1-b414-7cd9a44dd442', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'skills_enqueue_chunking', NULL),
  ('00d88e56-c69d-2ae9-6dd1-5e0c09b4ac1b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'expenses_enqueue_chunking', NULL),
  ('019d42ff-cbe6-74ad-81e0-254c2cb9b919', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'users_search_tsv_tsv', NULL),
  ('019d4300-6abd-74fb-9e61-dcadf373ee12', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'encrypted_secrets_hash', NULL),
  ('03333862-b33c-953a-8d94-4345437b9293', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'calendar_events_embedding_stale', NULL),
  ('053bd9a9-5c1e-3e88-54db-dca515c92ddf', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'conversations_embedding_stale', NULL),
  ('0762b62f-69d6-03f1-9e86-376e2ffd1042', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'memories_embedding_stale', NULL),
  ('0dd899a6-7930-a1e8-3054-70e6c62868e6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'events_search_tsv_tsv', NULL),
  ('1093de32-be93-fb27-fbe7-0504f9df05bc', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'agent_logs_embedding_stale', NULL),
  ('153d4a1d-77ec-fb70-b778-e15f8eeeac45', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'skills_enqueue_embedding', NULL),
  ('186caf6b-de79-07c5-a5d3-12acbd526f47', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'hiking_trails_enqueue_chunking', NULL),
  ('1a8723d9-29bc-5770-891d-1d75e26e8033', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'conversations_enqueue_embedding', NULL),
  ('2310660b-e911-3e00-4902-6eea881d43fa', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'code_chunks_enqueue_embedding', NULL),
  ('2433b12b-7c03-4b4c-cd31-7727528bf0d8', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'notes_embedding_stale', NULL),
  ('263f7da1-259c-a1fa-3d45-d03f335e1767', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'runtime_states_enqueue_embedding', NULL),
  ('279a558c-ec70-4459-112b-ae5c42a644cc', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'goals_enqueue_chunking', NULL),
  ('285baa78-fafb-1a1a-2ad0-1f27643be00f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'projects_enqueue_embedding', NULL),
  ('28fdb4bc-2d87-9aba-96d4-4835ce459679', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'companies_embedding_stale', NULL),
  ('2d8208a5-bcfc-a9fe-2515-1eeb5fa8aa3a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'agent_logs_enqueue_chunking', NULL),
  ('31ecde4e-9707-0e31-b72e-718e797a00ef', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'contacts_embedding_stale', NULL),
  ('365f7981-cee0-1583-8256-4a7463f02023', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'companies_enqueue_embedding', NULL),
  ('382de388-8d07-0e84-337f-a403dea4ca22', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'expenses_enqueue_embedding', NULL),
  ('387e0251-4851-911e-378f-a82ddf3df3dc', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'runtime_states_embedding_stale', NULL),
  ('395ef090-d0fd-862f-db84-31213ff4d6be', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'deals_enqueue_embedding', NULL),
  ('39e6bc36-6710-ec91-089f-2a1a370fdcea', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'places_enqueue_chunking', NULL),
  ('421df99a-d5ce-6b53-0ccd-1d742c9be68d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'events_enqueue_chunking', NULL),
  ('428059da-4ac8-e0b6-3db1-c1c38a0501cd', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'trips_enqueue_embedding', NULL),
  ('42c1a0ed-b1df-d0a3-9567-9f91e75e03d8', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'rules_enqueue_chunking', NULL),
  ('4518f0f0-a221-147e-7f82-284fe0881f6f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'runtime_logs_embedding_stale', NULL),
  ('46bc32a6-39ea-b849-ed20-e7f9650fd744', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'tasks_embedding_stale', NULL),
  ('4a87363c-fb96-3169-c263-8ca8a0bffaeb', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'memories_enqueue_chunking', NULL),
  ('4cf22acc-51f9-ec10-1106-f4df2aa61f6f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'notes_enqueue_chunking', NULL),
  ('4ed3e117-3ffb-c75e-62af-f7754ff54bd6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'rules_enqueue_embedding', NULL),
  ('52c10dff-e8c2-96fa-c058-b8b44e0ae41f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'email_threads_enqueue_chunking', NULL),
  ('532bcfaf-8f00-74f4-ecad-046119b90dee', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'interactions_enqueue_embedding', NULL),
  ('5556587a-62f7-df69-3f96-0a2a6d52da0e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'trips_enqueue_chunking', NULL),
  ('5a5ceb3a-86bf-4ac3-fa6c-126811f2be63', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'venues_enqueue_embedding', NULL),
  ('5b30fdd0-2fcf-29c0-c778-c2424333f065', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'calendar_events_enqueue_embedding', NULL),
  ('6826848e-ecc4-2eca-796b-08c6bfb4c0b7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'email_threads_search_tsv_tsv', NULL),
  ('6ee242f9-3544-e81f-b00b-feaa5f2dd6bd', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'events_enqueue_embedding', NULL),
  ('6f024af3-c3d8-ad76-380e-78d5720c2907', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'expenses_embedding_stale', NULL),
  ('70537083-69ee-2235-ec90-867a6e2284f1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'agent_logs_enqueue_embedding', NULL),
  ('731d8b10-dff9-3d8f-3788-43ae924045d4', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'contacts_search_tsv_tsv', NULL),
  ('73342603-8105-1965-02f8-253549436b93', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'goals_enqueue_embedding', NULL),
  ('74719308-4687-af87-94ef-976cff321000', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'emails_enqueue_embedding', NULL),
  ('78b4795d-2c7a-1e22-80b3-5f9b21860aa2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'emails_enqueue_chunking', NULL),
  ('78f16775-9025-a391-7ea8-6f39f12b7f9e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'calendar_events_search_tsv_tsv', NULL),
  ('7a8894c9-63eb-b0fa-0119-595e3f69423f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'touchpoints_enqueue_chunking', NULL),
  ('814106ef-b9df-3751-7168-a82d79e464f3', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'memories_enqueue_embedding', NULL),
  ('85d86337-7504-83da-fc88-cf6edb4267b9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'codebases_enqueue_chunking', NULL),
  ('87fd9651-eeab-7d46-d083-08716c24f314', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'contacts_enqueue_embedding', NULL),
  ('8a1520a6-f6f5-562f-b684-c5b1bcedf5f6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'places_embedding_stale', NULL),
  ('8eb6ac6a-d84f-2b08-b33e-f5accae28224', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'venues_embedding_stale', NULL),
  ('8ed96d0c-1c90-af9f-2d3d-b7fd055f569c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'email_threads_enqueue_embedding', NULL),
  ('917b4c32-6e68-febe-e61d-4d54f6b92dba', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'activity_logs_enqueue_chunking', NULL),
  ('918306e5-3e8e-7406-a2a7-660b7d511815', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'venues_search_tsv_tsv', NULL),
  ('949c3e67-537a-e699-35ad-984ea48f32fb', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'interactions_enqueue_chunking', NULL),
  ('94b1b941-af8d-8511-8e2a-1b358d61ba78', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'emails_search_tsv_tsv', NULL),
  ('951e527d-1e7d-0c7c-14d2-87fc68706ef1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'code_chunks_embedding_stale', NULL),
  ('96ee527f-9681-ccad-874e-4c4cc5a883a9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'companies_search_tsv_tsv', NULL),
  ('97125044-1402-01db-32de-c064a0c4a110', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'tasks_enqueue_chunking', NULL),
  ('9a23c413-7149-4a90-39b5-6cf99ae282eb', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'trips_embedding_stale', NULL),
  ('9b5c1a46-2d83-b3be-45a6-42d6ae7ca197', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'agents_embedding_stale', NULL),
  ('9fdcfef3-cbe2-94c3-7a0f-b62e33750c5c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'touchpoints_enqueue_embedding', NULL),
  ('a1ad1cd0-e494-8fab-d6e7-4d1b3359ac54', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'places_enqueue_embedding', NULL),
  ('a264a076-4476-9d6b-deca-864cd4954df0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'codebases_enqueue_embedding', NULL),
  ('a3dc66db-aa11-dcbf-c7e5-7d5608c246d1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'deals_enqueue_chunking', NULL),
  ('a9793b65-c763-24ab-5ec7-a30b4e44942b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'prompts_enqueue_embedding', NULL),
  ('ac8be9d5-c04d-f426-3305-3bedb49b2e1f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'notes_enqueue_embedding', NULL),
  ('ace2d2b2-e560-7af7-9cf9-4ee303a8e9fe', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'agents_enqueue_embedding', NULL),
  ('b2107f96-d678-60b3-2743-ebf9f3dc74ea', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'runtime_logs_enqueue_chunking', NULL),
  ('b4db91ca-886c-815b-d063-a642ffb471b2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'messages_enqueue_chunking', NULL),
  ('b4f0aba2-0097-9dbc-297a-e7792c695f6d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'projects_embedding_stale', NULL),
  ('b6087414-55b2-23d0-fd61-42566c3093bc', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'projects_enqueue_chunking', NULL),
  ('b61c19e5-0903-66cd-1b97-faebc45f2f4c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'messages_embedding_stale', NULL),
  ('bd870e30-7170-790d-12f8-5a13ccaf17d8', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'autonomy_records_enqueue_embedding', NULL),
  ('bfc89170-dfdd-129a-5725-f92c4f612ca6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'calendar_events_enqueue_chunking', NULL),
  ('c19c8e1c-62e3-dba8-e69c-c1ac66b5e6bd', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'prompts_enqueue_chunking', NULL),
  ('c1cac724-3558-85a0-3735-fadeb1ec26b3', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'emails_embedding_stale', NULL),
  ('c3853391-de6f-4838-7baa-79cfb93766d9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'tool_definitions_enqueue_chunking', NULL),
  ('c4b8ac0d-72f5-c419-d98d-cd4439d19831', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'deals_embedding_stale', NULL),
  ('c85c3dca-3d41-3167-30aa-cf7803b812ef', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'goals_embedding_stale', NULL),
  ('c8ffe8e6-95ee-95dd-8e54-cc61c9d97853', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'prompts_embedding_stale', NULL),
  ('c9cfd672-2971-36c6-b468-fc32ddbf58ac', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'messages_enqueue_embedding', NULL),
  ('ca821a16-0f0f-5984-baf6-a444a7325d00', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'codebases_embedding_stale', NULL),
  ('cb0c28a3-ae33-4dcb-13f0-ed09a8aa586e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'hiking_trails_embedding_stale', NULL),
  ('d017cda8-1cd0-290c-2a7e-b110739ca9f0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'tool_definitions_embedding_stale', NULL),
  ('d30eb1eb-8f34-a7d0-7412-eba574f351f2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'tasks_enqueue_embedding', NULL),
  ('d3bbfe12-6f36-2af4-2344-cdb6245696e0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'companies_enqueue_chunking', NULL),
  ('d7f1d175-e1ef-dcd4-26f0-33543b791db2', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'skills_embedding_stale', NULL),
  ('dad9c37e-ee2e-df71-d899-688ea4005cb6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'activity_logs_enqueue_embedding', NULL),
  ('dc12bc27-1444-e062-b4c4-84de7bfa3bc8', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'contacts_enqueue_chunking', NULL),
  ('e7adb44c-1d13-272e-3614-89e3b2b486f7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'interactions_embedding_stale', NULL),
  ('e853d6ee-9b31-faae-a72e-117f2252fb99', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'touchpoints_embedding_stale', NULL),
  ('e881b826-7188-178b-a440-4c5015e79a4e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'autonomy_records_enqueue_chunking', NULL),
  ('e9804971-1a00-900c-2427-47d1aa1632b8', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'conversations_enqueue_chunking', NULL),
  ('ec19361c-976d-52dc-c6a6-662d7913f90e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'runtime_logs_enqueue_embedding', NULL),
  ('ec94e67e-4532-211a-42e9-b6fabbb4c3ac', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'autonomy_records_embedding_stale', NULL),
  ('ed87637a-5bc0-ee78-f230-7773f4ec2fb7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'email_threads_embedding_stale', NULL),
  ('ee440d97-4936-163d-3b31-df45af290f2a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'events_embedding_stale', NULL),
  ('ef4d344a-8fef-e3b1-77de-e6b334854107', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'activity_logs_embedding_stale', NULL),
  ('f06c55d7-3a31-4b21-c746-a89cfd33e053', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'hiking_trails_enqueue_embedding', NULL),
  ('f1f47650-a00a-e695-e7f5-b2c47722aa4d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'runtime_states_enqueue_chunking', NULL),
  ('f266b63d-b8bc-6a2c-d4f6-8ca4ede5815b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'agents_enqueue_chunking', NULL),
  ('f5066fca-9d90-22d7-c4a8-cb6763560ad4', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'venues_enqueue_chunking', NULL),
  ('f82392fd-b3d8-aae8-55c7-315aed0d33ca', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'tool_definitions_enqueue_embedding', NULL),
  ('fb6446b9-5446-d628-33f2-93501b1dc2e7', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'rules_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


