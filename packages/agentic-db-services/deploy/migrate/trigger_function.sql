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
  ('019d13bc-22d8-76a0-88e8-35454cdf80ff', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'users_search_tsv_tsv', NULL),
  ('019d13bc-b176-79aa-8a52-016e3bba32d9', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'encrypted_secrets_hash', NULL),
  ('e3ea70d0-5bd1-8838-42fe-f5f57d6ee4d5', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'contacts_search_tsv_tsv', NULL),
  ('48fdc1f5-dda3-cc77-7c38-bf486f60fad9', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'contacts_embedding_stale', NULL),
  ('b34c0f1f-d137-3c9b-f893-d8a4a03ace36', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'contacts_enqueue_embedding', NULL),
  ('0e00294f-a401-fe53-d33b-368ea60ccb2c', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'companies_search_tsv_tsv', NULL),
  ('69b2e58d-5b5b-f490-c664-4f6b3fdd87d6', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'companies_embedding_stale', NULL),
  ('ed6a784e-f16f-4983-a948-ff8a5833b6f7', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'companies_enqueue_embedding', NULL),
  ('33c2065a-84fa-ce27-dfa8-8b0d6bf3f1d4', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'deals_embedding_stale', NULL),
  ('f7e6390b-5a85-3156-7c63-16f652976942', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'deals_enqueue_embedding', NULL),
  ('315ecc4a-7011-57b8-2b0a-3953c5ae856a', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'events_search_tsv_tsv', NULL),
  ('2b4126a9-8044-cbfe-a115-5c4a6c967854', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'events_embedding_stale', NULL),
  ('e9411b8a-a163-ff59-6a52-4c17cc03a7bb', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'events_enqueue_embedding', NULL),
  ('913337d4-9754-1d06-273d-dddc1fb5470b', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'venues_search_tsv_tsv', NULL),
  ('11f80881-1015-3d30-1090-0744ec526a47', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'venues_embedding_stale', NULL),
  ('63b32136-889b-c0b6-dc8b-29a65b341489', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'venues_enqueue_embedding', NULL),
  ('29cc5698-d34e-7368-9f1a-b214a2baea6d', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'notes_embedding_stale', NULL),
  ('b6411bb4-404c-5b77-04e3-0b9cebb902cb', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'notes_enqueue_embedding', NULL),
  ('e91d1c5a-d5b7-acc6-93f0-18dcf339be67', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'interactions_embedding_stale', NULL),
  ('a042c488-b75d-ab51-4994-c896c5d59ce1', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'interactions_enqueue_embedding', NULL),
  ('e640d129-a692-4a1b-6789-5ccd06d5f548', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'contact_chunks_enqueue_embedding', NULL),
  ('5095562d-d314-e7a9-9274-e10620e4a899', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'company_chunks_enqueue_embedding', NULL),
  ('9520354e-eaeb-c8b0-b8a6-6faf9e2cecd8', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'deal_chunks_enqueue_embedding', NULL),
  ('3c853695-3d17-3f08-26b8-2e81adae27be', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'event_chunks_enqueue_embedding', NULL),
  ('27b428d2-5f7b-54b0-2cc3-1ae21580fc8d', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'venue_chunks_enqueue_embedding', NULL),
  ('6b5bd949-bbeb-ea66-17ba-cb8227d8fec4', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'note_chunks_enqueue_embedding', NULL),
  ('49ea0b41-b96f-d63c-306a-216eaa8191ee', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'interaction_chunks_enqueue_embedding', NULL),
  ('bf149293-6c43-c644-1699-7e8d313e3809', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agents_embedding_stale', NULL),
  ('15986634-d9f9-a568-d250-e5ff5d576777', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agents_enqueue_embedding', NULL),
  ('c455b619-65f7-dc90-7d0a-395725c1aba0', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agent_tasks_embedding_stale', NULL),
  ('dff73582-9df1-5f5c-d8ce-2dae6c9524ed', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agent_tasks_enqueue_embedding', NULL),
  ('b6ff1847-eb07-381b-8c8a-dca0f77760f4', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agent_logs_embedding_stale', NULL),
  ('26a378d4-1895-272b-8b51-097aa738be20', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agent_logs_enqueue_embedding', NULL),
  ('f896795d-0840-9725-4088-5d87eb7dd04a', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'rules_embedding_stale', NULL),
  ('5985e315-cad1-7a3a-d75d-a0e60dca2946', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'rules_enqueue_embedding', NULL),
  ('fbc2ac8f-27da-5701-d5ad-a39308d9dd2b', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'skills_embedding_stale', NULL),
  ('fa9a59a1-8e4b-7e63-429d-32b00f6373f6', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'skills_enqueue_embedding', NULL),
  ('9827be07-ecab-0682-7a72-c91c56cd9bb2', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agent_chunks_enqueue_embedding', NULL),
  ('4dd600a2-07d7-57bd-2985-da35d8ab0cc6', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agent_task_chunks_enqueue_embedding', NULL),
  ('2f961e9e-712f-ee8f-2738-6b94133621ef', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'agent_log_chunks_enqueue_embedding', NULL),
  ('efb196ac-ab2b-4ef7-5b06-88f8cb5ee969', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'rule_chunks_enqueue_embedding', NULL),
  ('7136e40b-420a-525b-219b-62fa2401d6e6', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'skill_chunks_enqueue_embedding', NULL),
  ('07b676d7-1aed-f520-ba0d-a0db62a4e986', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'runtime_states_embedding_stale', NULL),
  ('22fbc9c6-2ad8-a1a6-ca51-f968f1b9f24e', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'runtime_states_enqueue_embedding', NULL),
  ('b8ff8453-bab8-925f-fa9b-bc18774c4533', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'runtime_logs_embedding_stale', NULL),
  ('c79a4ba4-e5c7-61b4-3841-9f7aa6f8a8e5', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'runtime_logs_enqueue_embedding', NULL),
  ('cf327693-6e68-fc06-94f9-e176b3920420', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'runtime_state_chunks_enqueue_embedding', NULL),
  ('74303b75-2f82-fb2d-69ab-f676a1eb4e48', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'runtime_log_chunks_enqueue_embedding', NULL),
  ('0bd95657-80a3-c356-d43f-b2a66b7e240c', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'conversations_embedding_stale', NULL),
  ('3343a6e2-93be-e2d6-2498-afaa443ebffe', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'conversations_enqueue_embedding', NULL),
  ('9211b6f2-913f-3ced-26d9-e1ca6bc00bfc', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'messages_embedding_stale', NULL),
  ('84cd0542-e237-024d-15c4-a9ec18962ad9', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'messages_enqueue_embedding', NULL),
  ('bd80564d-2099-6d34-61ba-c2ed097b57db', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'conversation_chunks_enqueue_embedding', NULL),
  ('b63cdfa2-60bc-fb3b-4e0e-c7a462072240', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'message_chunks_enqueue_embedding', NULL),
  ('a2384d89-0869-078d-5099-a1713c9278f2', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'projects_embedding_stale', NULL),
  ('f1311c4f-e6f6-fcc7-a5c6-e882bb97eaa0', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'projects_enqueue_embedding', NULL),
  ('d2c3134b-356a-0dd4-b71f-6cf1cf2fc881', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'project_chunks_enqueue_embedding', NULL),
  ('17e91dd2-653e-a880-f410-d1ae55b6d4f3', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'codebases_embedding_stale', NULL),
  ('294da57e-ae29-476a-c586-7d99e2fddfdc', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'codebases_enqueue_embedding', NULL),
  ('3ea5ef74-ca2f-5b8a-df95-96a3939a8668', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'code_chunks_embedding_stale', NULL),
  ('cae89b6d-aff1-1f16-8a98-54f32cab1df1', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'code_chunks_enqueue_embedding', NULL),
  ('d0a56ab4-0f93-0e54-7c8d-caa8a4825f9c', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'codebas_chunks_enqueue_embedding', NULL),
  ('9ac3880f-7eaf-25ef-8b4c-8aea325b2053', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'trips_embedding_stale', NULL),
  ('f9eb869b-a4c4-39d5-04a9-9e76960a4805', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'trips_enqueue_embedding', NULL),
  ('2d2b4c40-9369-e5e5-5bfe-8001721e5860', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'places_embedding_stale', NULL),
  ('3507876a-73b8-73ba-c407-af16f7381f8b', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'places_enqueue_embedding', NULL),
  ('f725d561-7258-e219-2df3-ca777b5da027', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'itinerary_items_embedding_stale', NULL),
  ('0baca646-59b0-1e6e-392e-ce2f7158b29f', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'itinerary_items_enqueue_embedding', NULL),
  ('d9d64379-37f0-cc95-949c-5441754d9884', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'hiking_trails_embedding_stale', NULL),
  ('384b624b-de3f-a2cb-8c2b-72a91093adcf', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'hiking_trails_enqueue_embedding', NULL),
  ('80656f46-a09d-80ca-0bf0-d1b819091813', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'memories_embedding_stale', NULL),
  ('1fad00cf-a319-f55f-f6f8-67ba34fccd62', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'memories_enqueue_embedding', NULL),
  ('4b85eb9e-516f-a9fe-c70c-3178f27ab157', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'goals_embedding_stale', NULL),
  ('e38e1c96-246e-ffef-1313-bbcbf3600872', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'goals_enqueue_embedding', NULL),
  ('2258d3de-b6ef-5dec-22e8-81dfe25586e1', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'habits_embedding_stale', NULL),
  ('e64fd015-63c1-4259-476d-310bfeac5ff7', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'habits_enqueue_embedding', NULL),
  ('1f18f79d-1d9a-ae61-0c10-328b2341f1a2', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'trip_chunks_enqueue_embedding', NULL),
  ('64b3c5b6-9b41-a9df-0b4a-850bb6402df0', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'hiking_trail_chunks_enqueue_embedding', NULL),
  ('7650dbb7-7344-61c2-2d08-f542f61d9020', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'memory_chunks_enqueue_embedding', NULL),
  ('e9258c4d-2ce4-e504-2390-d85c91e7f775', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'goal_chunks_enqueue_embedding', NULL),
  ('68078699-7cbe-8750-dcf1-5ebc2e1c0d1c', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'autonomy_records_embedding_stale', NULL),
  ('4cbb5132-fea4-46cc-5f1f-6de6bc38b8d5', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'autonomy_records_enqueue_embedding', NULL),
  ('0f905267-6064-64fc-0ba0-dc21d0d8dea2', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'place_chunks_enqueue_embedding', NULL),
  ('ba3492a9-844d-9d2e-9cf0-2ca8dded8fe9', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'itinerary_item_chunks_enqueue_embedding', NULL),
  ('0f3715c3-5501-40f0-be43-5f70522aee58', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'habit_chunks_enqueue_embedding', NULL),
  ('8e87de3e-ac75-660d-5583-fed6240ed7c3', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'autonomy_record_chunks_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


