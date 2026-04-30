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
  ('03944feb-9299-53dc-a79f-f8d0b4238d12', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'calendar_events_embedding_stale', NULL),
  ('039b9b8e-349d-3105-1117-fb0eddb889bb', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'touchpoints_embedding_stale', NULL),
  ('0ae17cc3-239a-fe7a-3c62-0f6ecb3fb134', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'rules_enqueue_embedding', NULL),
  ('0cb9e33f-bf4d-351c-0ce6-10c3902318bf', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'agents_enqueue_embedding', NULL),
  ('0d836b5f-610a-98b1-ea6f-e398f66349a7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'deals_enqueue_embedding', NULL),
  ('0efb6538-402a-b9e2-ac3c-bbbc51b8945a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'expenses_enqueue_embedding', NULL),
  ('108460cf-eee5-ebb7-6c5a-165cf6e5268e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'venues_enqueue_embedding', NULL),
  ('15104f4b-e12d-962a-cdd2-457e235b34cf', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'contacts_enqueue_chunking', NULL),
  ('1fa531a3-2a42-0afe-2b10-873678d96572', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'memories_embedding_stale', NULL),
  ('23cd3ec9-572d-2106-4ef5-96e98046311b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'goals_embedding_stale', NULL),
  ('2497a12e-59d0-5fec-1c93-d6871c70930c', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'rules_embedding_stale', NULL),
  ('2ba767ac-6e61-fcce-3e1a-9bf7abf47af6', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'activity_logs_enqueue_embedding', NULL),
  ('2dbcfb6c-5d39-6b2d-aea4-c439e0a58c60', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'events_embedding_stale', NULL),
  ('2e3baa4e-6717-2b5f-c742-d77f9fb9b7dc', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'email_threads_embedding_stale', NULL),
  ('301b1d52-d64d-a8c2-f345-0059f7f43af9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'venues_embedding_stale', NULL),
  ('316c5119-15a5-dc2c-97a2-dc9bb129e2ec', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'prompts_enqueue_embedding', NULL),
  ('31eae83b-8c08-80ea-61d1-cd073823b02b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'touchpoints_enqueue_embedding', NULL),
  ('342f8e3f-f1ea-0626-96de-425490804bb2', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'companies_enqueue_embedding', NULL),
  ('38a8e25d-42b7-ddd6-e454-0d9f0da625dd', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'calendar_events_search_tsv_tsv', NULL),
  ('3b6c6bf8-3d38-1a44-f71f-85968bafd2e3', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'messages_enqueue_embedding', NULL),
  ('46596814-8e47-430f-61d6-33ce12c64409', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'conversations_embedding_stale', NULL),
  ('46e5b40f-5f07-17ae-fda8-83f2c825225d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'documents_enqueue_embedding', NULL),
  ('50221936-0c60-b679-ec2c-edb415a25e9e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'notes_embedding_stale', NULL),
  ('5026e959-af90-c941-44ee-36c98fa6f730', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'deals_embedding_stale', NULL),
  ('50624248-08fa-0198-74d2-b303acb40ebc', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'contacts_search_tsv_tsv', NULL),
  ('516525c3-ef57-a212-bbbb-68f0658ff7d3', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'interactions_enqueue_embedding', NULL),
  ('5542a119-43e8-3e9b-9488-567ca06d1701', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'companies_search_tsv_tsv', NULL),
  ('5ec4c08d-66fa-412a-5315-629b233c485a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'emails_embedding_stale', NULL),
  ('5fc204ce-f121-3847-daed-b7dc6104e388', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'emails_enqueue_embedding', NULL),
  ('605cecc8-d9e9-97c3-e91a-97e1654da6c2', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'expenses_embedding_stale', NULL),
  ('63886a8a-d5a3-54fe-0b86-b762ccca2f50', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'places_enqueue_embedding', NULL),
  ('6a3f3548-bdea-6c55-5962-5d390f36e7d2', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'calendar_events_enqueue_embedding', NULL),
  ('72946f2d-473e-23c5-ebdb-d9290eb638e8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'runtime_logs_enqueue_embedding', NULL),
  ('791e642d-2b18-6f8a-0e89-9eed2f632174', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'prompts_embedding_stale', NULL),
  ('7bdae558-03cd-9b80-c2dc-67eee6a1073b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'skills_embedding_stale', NULL),
  ('7d323aaf-9c64-3799-b9d2-c4453a438060', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'interactions_embedding_stale', NULL),
  ('7f5230ff-4421-f017-fcca-936b7025419d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'autonomy_records_embedding_stale', NULL),
  ('8cdf020d-dd99-aac5-c1b8-faa85288992e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'autonomy_records_enqueue_embedding', NULL),
  ('8f4a2def-fa41-bbfa-9fbc-158dce225c4e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'trips_enqueue_embedding', NULL),
  ('93b20d26-3089-75b1-8884-3729f1d84e98', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'notes_enqueue_chunking', NULL),
  ('99bc1bde-bdaa-75f9-0d74-2f0f263c6f50', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'conversations_enqueue_embedding', NULL),
  ('9e3285d6-63be-d2cd-d72d-8a50f97a91ba', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'contacts_enqueue_embedding', NULL),
  ('a055d852-8d6a-02ed-bb25-ae02ac57a6ce', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'projects_enqueue_embedding', NULL),
  ('a20048be-ecb0-708e-1a5f-6d4010f6cd46', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'runtime_states_enqueue_embedding', NULL),
  ('ab99f868-7eef-9d5f-7a40-a088806a5b46', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'agent_logs_embedding_stale', NULL),
  ('ad20ea19-c0df-85d1-a6ae-42658e1335ca', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'emails_search_tsv_tsv', NULL),
  ('adb56162-57ce-9593-6b2f-eae2ab279fb2', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'goals_enqueue_embedding', NULL),
  ('b149be69-bf36-57bd-cab4-3f61036d1aa1', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'runtime_states_embedding_stale', NULL),
  ('b16374b2-f93e-1103-49e6-9945fe68a040', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'notes_enqueue_embedding', NULL),
  ('b4d4ee48-16c8-d464-6c84-49b3053cf2fa', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'activity_logs_embedding_stale', NULL),
  ('bb8fb993-6898-f4b5-b713-36eef73fbb77', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'agents_embedding_stale', NULL),
  ('be7597ee-d64e-f20d-7d41-8884e5ba0be9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'venues_search_tsv_tsv', NULL),
  ('c3d4e8c1-cae2-717e-c1cd-7f71f5e36ff6', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'places_embedding_stale', NULL),
  ('c547ee53-f198-04d8-fbb3-975f5fc49f4a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'documents_embedding_stale', NULL),
  ('c8db451b-0abe-38e4-58fa-26cc4301a64d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'trips_embedding_stale', NULL),
  ('cac690ae-96b9-3e83-425e-c27a8e24fdbb', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'contacts_embedding_stale', NULL),
  ('cae44d45-65d6-7ace-965b-bddca33ddfd8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'tool_definitions_enqueue_embedding', NULL),
  ('ccaf9cc1-bc02-5fd4-0dfe-a1aa61e6b7d1', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'runtime_logs_embedding_stale', NULL),
  ('d0d06fc0-bae4-0d8d-dca0-6a1a292ac7ae', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'events_enqueue_embedding', NULL),
  ('d26c8c2a-bbfb-8c46-28d9-a0d09296af29', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'companies_embedding_stale', NULL),
  ('d46f996e-742a-5319-f968-ef91b13b59ec', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'tasks_embedding_stale', NULL),
  ('da6297cd-ef67-5c17-4495-5d665aa7db98', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'email_threads_enqueue_embedding', NULL),
  ('dc98ff84-db2f-b9ff-2921-9fd525d6430a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'events_search_tsv_tsv', NULL),
  ('dd32f9d5-b232-7176-9cdb-0928697c179a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'skills_enqueue_embedding', NULL),
  ('de8f36d8-9ac3-41f1-31b0-f2f8de507b0e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'memories_enqueue_embedding', NULL),
  ('e08e7e8d-fc5b-a089-16c4-758e4833934c', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'projects_embedding_stale', NULL),
  ('e3544302-944e-79ed-888d-75f4be26ff38', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'agent_logs_enqueue_embedding', NULL),
  ('e9011823-48e4-a0ab-b9a0-fa197f8a70c3', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'tool_definitions_embedding_stale', NULL),
  ('ec89e91b-557b-8cda-ab98-b33f8e8b5cea', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'tasks_enqueue_embedding', NULL),
  ('f5561e20-d44d-b839-d7fe-276b9571324e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'documents_enqueue_chunking', NULL),
  ('f9a7a330-0215-fe2c-625d-24330a62a184', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'email_threads_search_tsv_tsv', NULL),
  ('fb60b438-529c-54ae-b69c-9e12e686d9d9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'messages_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


