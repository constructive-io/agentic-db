-- Deploy: migrate/primary_key_constraint
-- made with <3 @ constructive.io

-- requires: migrate/foreign_key_constraint


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

INSERT INTO metaschema_public.primary_key_constraint (
  id,
  database_id,
  table_id,
  name,
  type,
  field_ids
) VALUES
  ('03a74525-683b-9996-3dfe-ee9bb0386a7a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '0fbfe815-316c-2f28-4de2-8ee2192fcd2c', 'calendar_attendees_pkey', 'p', '{ab7646fa-77ec-8e07-98c6-b8af50e43fe8}'),
  ('05aa9533-e504-007b-3240-ba08ecf34332', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'b010f0a0-2f96-91b7-17c8-b35cd778bc64', 'company_links_pkey', 'p', '{8580a27a-5663-163e-e8a5-1d2c5b410e75}'),
  ('0dad8683-3243-f8c3-9a0b-761e8b0521e6', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'c9b7af36-8b25-c418-b0fd-4934843560b8', 'images_pkey', 'p', '{a02de5f2-6836-969f-165c-ba8e28e60050}'),
  ('0f595e38-8fda-33ba-b951-a3200041294f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '22386a01-4b31-6acc-7dfb-61fb6b5b8aac', 'provider_sync_states_pkey', 'p', '{894561ae-674b-b21c-00be-7e512d1b385a}'),
  ('0fa9a274-ff16-394e-09f0-0459e52f5a68', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'e1e8883f-00b0-fd40-0fbf-8f9be21109e4', 'events_pkey', 'p', '{8a58a275-e74b-348c-ce5b-0e817a575006}'),
  ('115d0d7e-38c6-c750-820b-9d65f294ec7d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'aaba56a8-ba2c-312a-8d8e-b4b992ee107d', 'messages_pkey', 'p', '{49c65a7d-b94c-28ed-b723-eada9c8ca0dd}'),
  ('16f52022-53d0-03eb-3bae-d0db9cf0d45c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'c4932fef-a372-0bb8-709a-fd547e6b1b22', 'skills_pkey', 'p', '{de857913-ceba-b78a-e4b6-feb02063b021}'),
  ('1b0de989-33cd-2aa7-1797-ab923623861f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '701c33e1-3c56-0f88-e576-b2cae743ccbb', 'trips_pkey', 'p', '{ef922fb0-562b-cad1-49a0-b59f15c8f4f2}'),
  ('25eeb1f6-6261-2508-38e6-54aab77aa73c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'c3f8c22e-75c3-f095-8a9f-1cba98d47f37', 'projects_pkey', 'p', '{5a3bfea3-6be5-949f-fb79-7f1896eed793}'),
  ('274c4579-81b5-06d4-36cc-4828ee9e4255', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '96149963-03bb-ffb9-adf6-86cdcb1a32cf', 'companies_pkey', 'p', '{9674bd53-34e6-e52a-5fd4-91230714ffa1}'),
  ('2bd79c4f-5501-824c-a7c2-6d74d38de3a7', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '2ea1004e-c612-b66e-1a37-ecd301eba4b0', 'agent_logs_pkey', 'p', '{6a63492e-4e21-d114-6116-64f76405f42a}'),
  ('2c9384ce-8fd9-6ee7-fbb7-e221a31cc752', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'a5581cfa-93cc-de63-e82f-b4c3a78c8a35', 'contact_addresses_pkey', 'p', '{b0780cc4-d1b2-9cfe-b73a-16f0217855d4}'),
  ('31159aaa-60ca-6f03-6f07-5be5075352d9', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '5b91d7fb-ff1b-59f2-6f77-b3e478ca834c', 'runtime_schedules_pkey', 'p', '{b16ebb5e-bf05-38ce-034b-5fba6aa6272d}'),
  ('3873d62f-7028-4d8d-fbba-2720251acd05', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '4a11e84e-2945-732c-9ad7-2a44cd08cc50', 'conversations_pkey', 'p', '{4898a8aa-9a13-9c04-2aea-0144a0f287b4}'),
  ('46140e29-05cf-980b-0c88-1531dfebf418', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '1ce16c69-0dbb-8aab-4f78-37eb1f56e343', 'runtime_artifacts_pkey', 'p', '{3509071d-8a52-baee-3a6f-564bc4655d87}'),
  ('483bfe25-0c24-5c6d-8cdb-da091acda033', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '3b1bfd78-c47f-0f23-305c-5d4382fea955', 'goals_pkey', 'p', '{b5dc6cd4-1af6-f092-0387-99906b7e87e9}'),
  ('5001e79e-b5ac-31cf-2724-20d29bc9edfd', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'a3f0a2e8-b049-f21f-9f2c-4c0f55a1ed23', 'agents_pkey', 'p', '{c0abe9aa-38c3-06f0-5879-865233a01a37}'),
  ('537a1e78-f912-ddb1-19a3-e9ce3685cf2a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '07101e82-3404-8ef0-9dc5-8c037f4eccfa', 'tasks_pkey', 'p', '{1324cefe-426d-9f11-6c96-c4ab0a33ba27}'),
  ('543c8234-1d0d-e3d1-1f82-f331428122bf', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'a96be45b-3b4b-6697-00f6-bbc702d777eb', 'expenses_pkey', 'p', '{5c9ef3fb-7e17-0686-37ac-d2eedc330b67}'),
  ('5e7be95b-ab05-f4a3-0b25-87e9934fd5b5', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'cc2c7898-053f-e98a-e15f-cac70b2b1db3', 'activity_logs_pkey', 'p', '{db234d3f-b690-a462-ed20-3b86a9209867}'),
  ('6142326a-d56b-744e-438d-38d1531b605b', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bc5b1771-05ce-05ce-372e-b407e7b36e61', 'raw_contact_phones_pkey', 'p', '{bb8f7d4a-37d8-a868-86b0-52ed0dac38ca}'),
  ('666780f6-c2b9-3403-674e-dd5a93c46b24', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '31fd73fc-6f24-9981-f06a-5c52c35810ab', 'contacts_chunks_pkey', 'p', '{09cde4b1-d560-7b3e-8821-46845ffca625}'),
  ('677b1ae0-e53e-ec19-5068-dccf6c25e795', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '4bf7bc54-7249-cdd1-bdb5-3ddde2932825', 'tags_pkey', 'p', '{d6c8151e-5836-a2f2-3415-58190f598a85}'),
  ('6c9b2577-bc85-9855-10cf-0cfa1d8c1d46', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '37ffad0b-f4cc-d467-6aec-775376843b6f', 'venue_links_pkey', 'p', '{2a884524-7569-f067-a28f-654104faac6b}'),
  ('6d1f5d18-2521-e3e2-0044-61258c5cd0cb', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'c7176920-96eb-d5a8-5090-dfd5948262ee', 'runtime_events_pkey', 'p', '{b77cf42c-6c42-6597-0937-40bc948d3ed3}'),
  ('7f58eee9-e7ff-0bd2-1582-6112527aec6e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '1996eaad-6b3d-0f1d-4326-7c203e884e30', 'contact_emails_pkey', 'p', '{d3eaf1a9-3886-b432-b1f3-b4e11aeed69b}'),
  ('805c9a68-82fa-8244-4e65-8490b0f591b0', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '68786a1d-d541-b6d1-46ab-420481018a63', 'contact_phones_pkey', 'p', '{7a4a166b-b537-31d1-6b53-c8799feb3af6}'),
  ('82816a5a-7cf9-d363-df92-fb46debc2e1e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'af53955a-de7b-cb69-6dda-58f8128cc6d7', 'contact_links_pkey', 'p', '{04b65cd8-b87b-92fa-14b8-ba74f6b69105}'),
  ('82a9d387-1f27-028c-cd84-61e1a7826479', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'd9b73f62-338f-6012-421c-adcab4646001', 'touchpoints_pkey', 'p', '{34e2a6e5-16f7-a26b-1fda-7068e108e484}'),
  ('8b4c32b9-7f9a-0766-d049-77dee856696e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'ec517d11-ed9c-d137-e205-a2acf06ffd7c', 'runtime_configs_pkey', 'p', '{21139811-068d-99d6-8e15-074449cefabf}'),
  ('97ad1a62-630c-480a-4742-cc5d16af05d3', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'df4cdc5e-6592-cf8b-1100-f7410fc1cae1', 'memories_pkey', 'p', '{3e812525-da6a-2eb3-8e4b-4c0c3a9d0623}'),
  ('982add76-b774-c97d-ba94-9225f407fecc', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '4faa72a8-e8dd-5d82-08f3-644598135bf0', 'autonomy_records_pkey', 'p', '{37ab9561-d9ae-1ee8-2c25-7959d149c28e}'),
  ('9cbdb537-6b9e-34a5-496e-4a85423e3acd', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '8572e755-a1b9-1398-ec8c-a787d9f82daa', 'runtime_states_pkey', 'p', '{2648a8a6-6151-f63b-b259-80fb3f2defcd}'),
  ('a8460690-0fd5-eab8-2dd8-47e8dafac3ae', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '71e16058-c9a7-3a7f-ba80-a9c67f583500', 'habits_pkey', 'p', '{ff4c67d5-7137-e303-c38e-b22fd62a09f7}'),
  ('af2c139a-9904-00a3-140d-30181d3c079a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'c9f6438b-f1a0-2047-795a-848d26bb1b28', 'email_threads_pkey', 'p', '{a721fd95-55da-2d84-da9d-c0dc3de19d2e}'),
  ('b017abf4-8928-cb8a-09f4-f46fcf26e4e8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'e0aa95fe-5ee6-f27e-1a91-f41597be8677', 'event_links_pkey', 'p', '{e2b8148b-5a0f-ad19-8db9-320da393718d}'),
  ('b907a8a3-70af-fd4a-a1f7-2c9978b199f0', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'a1490d4f-9a82-9379-1ff5-ae19039a24ab', 'raw_contact_urls_pkey', 'p', '{1dfaf6ee-36aa-eaa6-7a30-ead0b6a68b13}'),
  ('b9b3d9f0-91d3-fc8f-15c1-02d1a1ee044f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '87e05f27-0277-d3a3-7101-16730da22569', 'calendar_events_pkey', 'p', '{43fed13c-466a-b25b-9841-9f682eea3e7a}'),
  ('bcb88878-940b-498a-7a8b-b6f1922cdea6', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'cf91e4d2-b4fe-fd2b-9350-39339e40e8c5', 'raw_contacts_pkey', 'p', '{245a404e-f65a-642c-9d15-d5a75a8092b9}'),
  ('c14aff17-1589-40f8-05e4-f45a1646fbd8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '4ef853da-023a-6e6d-d69f-2ee0bcf2542f', 'raw_contact_emails_pkey', 'p', '{fac6edf1-f410-7994-a3f0-30f3358bca09}'),
  ('c3271062-a0f6-a9b5-64f7-a3ba6e112add', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '70bfccb4-5f32-e259-d7d1-0e548baa3d93', 'notes_chunks_pkey', 'p', '{0085cf77-d439-570f-6bf9-37f8c05211c9}'),
  ('c41de08d-6d9b-4b0a-8726-92c9f781c9c7', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '978bdb82-aa8f-d768-3cb9-c28d5453645e', 'places_pkey', 'p', '{82eb5e88-3b3d-5e30-4387-76b01f4ff20a}'),
  ('c6a17e8b-5365-8ac4-3ec8-991766b8c732', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '6e00a634-ea64-28ed-d646-05e2f8dfab54', 'prompts_pkey', 'p', '{70c1e7b9-68cf-fcd3-5b39-1c65c43da754}'),
  ('c8133b2a-5e58-a387-6683-e8b2d3495369', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'f1d3985b-3cb2-68e2-9c9a-d9afff08791b', 'emails_pkey', 'p', '{795e9e7f-6899-c8e3-d01d-7dde0fa62f52}'),
  ('ce82ec26-6216-930b-c535-f968cea47f2d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '5ce13fba-b33b-83e9-20c5-5848f0c57303', 'interactions_pkey', 'p', '{bf2868ee-1f8b-acdb-1594-3028ebcf9255}'),
  ('cfe3ef91-5c2a-a0dd-434c-8d70f1637fec', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '56cd755b-c694-e87e-4a74-f02200162a16', 'calendars_pkey', 'p', '{91060ee9-c8d4-7d3c-732e-f3bc432b1289}'),
  ('d1b90cf7-8537-56c3-45d6-647d91430e04', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '9c2bc501-02db-8499-02bd-3a7ca8832438', 'runtime_logs_pkey', 'p', '{04ccec1e-6443-bed2-0930-25af2e41388e}'),
  ('d8af9747-a319-64eb-0597-67c6ecaeee82', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '11bebace-6b69-1b5a-9963-6eed2f55e569', 'venues_pkey', 'p', '{b16c5f1b-ea98-2993-c160-5c54035c1b91}'),
  ('db4d564a-9a26-ee53-53c6-87adaecec763', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '423d2ebc-aa26-88aa-7e9e-7f16cfd1501e', 'rules_pkey', 'p', '{2dd26181-b0c7-ccb1-ee70-7f9955a986bc}'),
  ('e5290db2-451b-6609-a2d0-df8bd37f78ec', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '11e474a5-58c4-6685-5189-ad687f66e08f', 'email_attachments_pkey', 'p', '{df6c0d0a-e577-605d-b0d1-1efdd5ceb6d7}'),
  ('f405df91-f44d-c3f0-3660-7cb50d2871f7', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '6e6b84bf-6fc5-576e-46bc-968a06d7b3f8', 'tool_executions_pkey', 'p', '{4517be4c-f535-c056-bca6-e82295eb8fd7}'),
  ('f59daa28-e679-bbe5-3311-ee7b1e2fcf54', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '2066d304-6c7b-6693-2fe7-741d0570199a', 'contacts_pkey', 'p', '{4ad897d7-dd6e-514f-f3f0-d98393d62aeb}'),
  ('f69a1064-6004-ea92-5a94-151c710edfcd', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '24d90273-c1af-60c3-7454-06cb72820de2', 'tool_definitions_pkey', 'p', '{5e56c3a3-68d4-2a06-bd63-0bac15e0dbc0}'),
  ('fc0e5084-2c23-e81d-80e5-d1d48fece20e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '99a29a7b-6303-4e55-a7b0-4ecdf0a7c7ae', 'deals_pkey', 'p', '{8012f5f7-3ea3-9968-879f-f2452df1f71b}'),
  ('fc70854b-fdc7-6cb6-134a-c19d639a870b', 'b46c93b1-cb18-9e9f-3288-850e3049f021', '49cee005-1f2c-26b6-7dc7-b15236877e7f', 'runtime_metrics_pkey', 'p', '{e2aa32da-2783-d966-1a55-adf25bda127b}'),
  ('ff640ac6-b484-3b98-811f-1bbed6a83e64', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'd44b3849-f54c-d4c9-7062-2e9c12972c9c', 'notes_pkey', 'p', '{f3158e90-3a4a-863d-18f6-79c99d9d64f4}');


SET session_replication_role TO DEFAULT;


