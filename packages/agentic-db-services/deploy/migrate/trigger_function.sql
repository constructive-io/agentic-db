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
  ('06445637-b7a1-dec6-af91-a1327828bb7e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'goals_enqueue_embedding', NULL),
  ('0997aca8-ac0c-b9a8-3036-dc40fc902a9d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'contacts_embedding_stale', NULL),
  ('0ec5ecda-2831-8b9c-7241-b6bfd8860dfb', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'agents_embedding_stale', NULL),
  ('18091cf4-9b2b-b031-1bfd-9682179f079e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'email_threads_enqueue_embedding', NULL),
  ('1ae29e2e-6dcb-893d-e590-4d3ead1de198', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'calendar_events_enqueue_embedding', NULL),
  ('1f1cbea2-0e85-7bce-59fe-003179b5e946', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'touchpoints_enqueue_embedding', NULL),
  ('224ae9a7-3354-7cd3-d667-f7bbfbdb70cd', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'agent_logs_embedding_stale', NULL),
  ('2b8c26d7-9ae2-e15b-21b4-b80caa24f47e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'runtime_logs_enqueue_embedding', NULL),
  ('3a566c2d-5a15-bcb5-302d-1197eaec9c4d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'interactions_enqueue_embedding', NULL),
  ('3b68a084-bf4a-2eec-b9ac-af1e45aa196a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'companies_enqueue_embedding', NULL),
  ('3cbdf3c2-b3a2-5c5a-adcb-1df508ff03cf', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'activity_logs_embedding_stale', NULL),
  ('42504210-8860-8c58-3921-302fb1f5f687', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'projects_enqueue_embedding', NULL),
  ('42e71553-8eda-bbe2-0bc8-5c0c4f4760d5', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'memories_embedding_stale', NULL),
  ('4316e632-564f-1d07-1a2f-bff82728cc18', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'deals_enqueue_embedding', NULL),
  ('4551160f-7ce4-6a0a-d908-9ff86302f1d4', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'agent_logs_enqueue_embedding', NULL),
  ('45f91787-7c8a-42f7-3e4a-9578ad6d5bb0', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'projects_embedding_stale', NULL),
  ('469e0c29-f6f9-587e-6672-048ed1ffc0e3', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'events_embedding_stale', NULL),
  ('4a585e69-8af3-f04b-f1b9-39a213c8bae9', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'runtime_states_embedding_stale', NULL),
  ('4a8af6b8-6dd3-aadc-1e2c-12d4a7569b92', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'events_search_tsv_tsv', NULL),
  ('4d602de9-5ad0-d411-5e11-11fff8b417ee', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'autonomy_records_enqueue_embedding', NULL),
  ('518e3531-cb9d-f1ab-791f-85fe7dc1b0b8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'conversations_enqueue_embedding', NULL),
  ('5359b589-5418-beb1-5e83-c32aaafcafc1', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'autonomy_records_embedding_stale', NULL),
  ('53de4285-bbd4-dc5a-bc3d-7fc0ba2b71b5', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'rules_embedding_stale', NULL),
  ('544dfdbd-047f-cccb-4067-d2e99f304361', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'rules_enqueue_embedding', NULL),
  ('5697133c-863b-1c2f-7fef-8c77525987f2', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'messages_enqueue_embedding', NULL),
  ('575b7f82-1966-bcf7-2470-7b73bd4e8c1f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'contacts_enqueue_embedding', NULL),
  ('58b5815f-bd53-eea5-b7ed-a98448ec8df1', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'conversations_embedding_stale', NULL),
  ('59148281-121f-6c5b-47e1-cc0ae580a6fe', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'email_threads_embedding_stale', NULL),
  ('59581ce8-6fe0-1181-7f9a-c0e8758eec9a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'deals_embedding_stale', NULL),
  ('5d0144e4-6dd8-140b-ade4-e23c3195ae86', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'skills_enqueue_embedding', NULL),
  ('5dd2f9c4-4727-6c6f-730b-9f8c17778a32', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'venues_embedding_stale', NULL),
  ('66c278df-50d5-770f-fa32-28ceb7a22ed3', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'emails_search_tsv_tsv', NULL),
  ('6a42547d-b2a3-39f6-bd1c-e17f1297248e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'venues_enqueue_embedding', NULL),
  ('73f7411f-c77c-cb4b-75d8-a169748173ad', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'notes_enqueue_embedding', NULL),
  ('75685ab7-820a-93e6-2c22-eb7cfa05115f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'skills_embedding_stale', NULL),
  ('7721cea6-3fed-ed2b-0cc4-9609eac99d83', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'places_embedding_stale', NULL),
  ('8597a845-32ad-384e-a9e7-a6ab1ee57553', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'emails_enqueue_embedding', NULL),
  ('863e6049-a11b-df13-e9ba-f99ecefa1237', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'tasks_embedding_stale', NULL),
  ('88d9eb95-7be2-2a2f-de45-504b6da9b996', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'runtime_logs_embedding_stale', NULL),
  ('8aa29015-6040-5284-67fb-a5511689d9d3', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'prompts_enqueue_embedding', NULL),
  ('8ff51791-901a-1ecb-49c3-f34cb65267ea', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'expenses_embedding_stale', NULL),
  ('91c18f11-0a90-d36c-d94a-cef4f417efba', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'emails_embedding_stale', NULL),
  ('926fd9d6-0452-bf10-74e5-34b8e27427b3', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'activity_logs_enqueue_embedding', NULL),
  ('941e042f-e3bc-99c3-e3e9-91a3cbf520b8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'calendar_events_embedding_stale', NULL),
  ('95560ca2-0a0f-6db4-a05a-60f898377a28', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'places_enqueue_embedding', NULL),
  ('95f1288a-bac0-eb10-45cc-f3d28497c6d2', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'interactions_embedding_stale', NULL),
  ('9c383645-2199-c3b9-1128-0c630c30c4d7', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'tasks_enqueue_embedding', NULL),
  ('a0075cae-68e8-0c4a-0612-13d5046b5f56', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'messages_embedding_stale', NULL),
  ('a029115c-7e60-49d1-386d-cb0856f2efbc', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'tool_definitions_enqueue_embedding', NULL),
  ('a0d0e9af-451b-a3ff-9aa6-152950f8a15e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'memories_enqueue_embedding', NULL),
  ('a166c7bb-a2fc-8390-f5cd-d396a4f34486', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'goals_embedding_stale', NULL),
  ('a4ab0d12-f894-7371-b5c5-30567ed508bc', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'venues_search_tsv_tsv', NULL),
  ('a7845f72-008c-1279-6f7e-8718acecfc61', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'contacts_search_tsv_tsv', NULL),
  ('a9a08d80-a5bd-dcf3-4aa3-0b2e1f5d03cc', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'prompts_embedding_stale', NULL),
  ('a9ee7f3b-a1ae-4ff2-0a05-9d33d17a991e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'expenses_enqueue_embedding', NULL),
  ('ab62378d-304d-51eb-4728-9fb13d528b8d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'agents_enqueue_embedding', NULL),
  ('ab92e7ec-75be-d6d3-5222-5155ae4650e4', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'touchpoints_embedding_stale', NULL),
  ('bf2a52fa-bf1c-dafa-ef4b-994f9e3a1b66', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'companies_search_tsv_tsv', NULL),
  ('c0105a51-e2e6-6adb-6312-c10091da9e26', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'tool_definitions_embedding_stale', NULL),
  ('c2f65dd9-cb10-b4d0-c985-8bb4d26e6bf9', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'contacts_enqueue_chunking', NULL),
  ('c56974f6-9a95-cad6-28c1-3a5edfbb8131', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'runtime_states_enqueue_embedding', NULL),
  ('cf204328-59ea-30e5-55cf-c95229cf2ba1', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'events_enqueue_embedding', NULL),
  ('cf70f9e4-ae03-c077-8416-42e9870eefd6', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'notes_enqueue_chunking', NULL),
  ('d3463565-6928-4b9a-1444-dde49d482f78', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'calendar_events_search_tsv_tsv', NULL),
  ('e8ded98b-1a5e-c860-2d3d-6a2f73c86213', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'notes_embedding_stale', NULL),
  ('e916cfaf-1630-eded-43e8-fb8131a3f0e4', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'trips_enqueue_embedding', NULL),
  ('f0e09b53-1ed0-c7b0-b1b4-78b7e6177d09', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'email_threads_search_tsv_tsv', NULL),
  ('f63fd210-b1f4-2d77-4a1f-00084ec846ca', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'companies_embedding_stale', NULL),
  ('f8a17880-bd99-1996-928f-3f4edfd3f05e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'trips_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


