-- Deploy: migrate/table
-- made with <3 @ constructive.io

-- requires: migrate/schema


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

INSERT INTO metaschema_public.table (
  id,
  database_id,
  schema_id,
  name,
  description
) VALUES
  ('07101e82-3404-8ef0-9dc5-8c037f4eccfa', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'tasks', NULL),
  ('0fbfe815-316c-2f28-4de2-8ee2192fcd2c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'calendar_attendees', NULL),
  ('11bebace-6b69-1b5a-9963-6eed2f55e569', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'venues', NULL),
  ('11e474a5-58c4-6685-5189-ad687f66e08f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'email_attachments', NULL),
  ('1996eaad-6b3d-0f1d-4326-7c203e884e30', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_emails', NULL),
  ('1ce16c69-0dbb-8aab-4f78-37eb1f56e343', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_artifacts', NULL),
  ('2066d304-6c7b-6693-2fe7-741d0570199a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contacts', NULL),
  ('22386a01-4b31-6acc-7dfb-61fb6b5b8aac', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'provider_sync_states', NULL),
  ('24d90273-c1af-60c3-7454-06cb72820de2', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'tool_definitions', NULL),
  ('25e18cfa-d402-2b26-55ff-40ab8968d738', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_events', NULL),
  ('2d52b3c5-ed75-f6f5-6640-807d2c976d39', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'deal_notes', NULL),
  ('2ea1004e-c612-b66e-1a37-ecd301eba4b0', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'agent_logs', NULL),
  ('2f5cfbc4-18d9-92cb-bc8d-217f7117b7e4', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'agent_collaborators', NULL),
  ('31fd73fc-6f24-9981-f06a-5c52c35810ab', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contacts_chunks', NULL),
  ('37ffad0b-f4cc-d467-6aec-775376843b6f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'venue_links', NULL),
  ('3b1bfd78-c47f-0f23-305c-5d4382fea955', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'goals', NULL),
  ('4093d6f0-60ea-96b2-26b5-111944fb97be', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'agent_prompts', NULL),
  ('423d2ebc-aa26-88aa-7e9e-7f16cfd1501e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'rules', NULL),
  ('46c92499-1ee0-b8fd-ac6d-a0194ecdef54', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'calendar_event_tasks', NULL),
  ('4833c44a-c880-b1b7-5efa-87f70c746987', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'company_events', NULL),
  ('48454719-e7a9-98d8-ce32-3b8be7651ddc', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'autonomy_record_links', NULL),
  ('49cee005-1f2c-26b6-7dc7-b15236877e7f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_metrics', NULL),
  ('4a11e84e-2945-732c-9ad7-2a44cd08cc50', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'conversations', NULL),
  ('4b8318ae-e4f3-2445-f4e7-bf5dfa0566a0', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_images', NULL),
  ('4bf7bc54-7249-cdd1-bdb5-3ddde2932825', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'tags', NULL),
  ('4d21dfd6-b71e-7512-4e8b-dea3bc3aec10', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'task_projects', NULL),
  ('4d8f3dae-e281-d04b-c6b6-0542a3b366dc', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'deal_contacts', NULL),
  ('4ef853da-023a-6e6d-d69f-2ee0bcf2542f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'raw_contact_emails', NULL),
  ('4faa72a8-e8dd-5d82-08f3-644598135bf0', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'autonomy_records', NULL),
  ('513a59f1-02aa-0533-a8fd-028a9346c5e1', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'thread_participants', NULL),
  ('56cd755b-c694-e87e-4a74-f02200162a16', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'calendars', NULL),
  ('5b91d7fb-ff1b-59f2-6f77-b3e478ca834c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_schedules', NULL),
  ('5ce13fba-b33b-83e9-20c5-5848f0c57303', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'interactions', NULL),
  ('64563f8d-3548-03fa-19f7-0d914f89259b', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'company_notes', NULL),
  ('68786a1d-d541-b6d1-46ab-420481018a63', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_phones', NULL),
  ('6c19f9d0-35b6-a961-30d5-09417c750248', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'calendar_event_contacts', NULL),
  ('6e00a634-ea64-28ed-d646-05e2f8dfab54', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'prompts', NULL),
  ('6e6b84bf-6fc5-576e-46bc-968a06d7b3f8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'tool_executions', NULL),
  ('701c33e1-3c56-0f88-e576-b2cae743ccbb', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'trips', NULL),
  ('70bfccb4-5f32-e259-d7d1-0e548baa3d93', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'notes_chunks', NULL),
  ('71e16058-c9a7-3a7f-ba80-a9c67f583500', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'habits', NULL),
  ('75c010df-e4de-cfea-0588-0513e184fc45', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'event_images', NULL),
  ('8335f2b9-255e-13d8-65b4-b7afc200ef12', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'calendar_event_notes', NULL),
  ('8572e755-a1b9-1398-ec8c-a787d9f82daa', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_states', NULL),
  ('87e05f27-0277-d3a3-7101-16730da22569', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'calendar_events', NULL),
  ('90f5deb5-906f-a127-1733-dd267cfe639f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'company_memories', NULL),
  ('96149963-03bb-ffb9-adf6-86cdcb1a32cf', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'companies', NULL),
  ('9729845a-18eb-8413-d669-c07652df14cb', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_companies', NULL),
  ('978bdb82-aa8f-d768-3cb9-c28d5453645e', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'places', NULL),
  ('99a29a7b-6303-4e55-a7b0-4ecdf0a7c7ae', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'deals', NULL),
  ('9c2bc501-02db-8499-02bd-3a7ca8832438', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_logs', NULL),
  ('9f67cb03-3e05-4bc2-8414-3905c447527d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_relationships', NULL),
  ('a1490d4f-9a82-9379-1ff5-ae19039a24ab', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'raw_contact_urls', NULL),
  ('a3f0a2e8-b049-f21f-9f2c-4c0f55a1ed23', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'agents', NULL),
  ('a5581cfa-93cc-de63-e82f-b4c3a78c8a35', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_addresses', NULL),
  ('a96be45b-3b4b-6697-00f6-bbc702d777eb', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'expenses', NULL),
  ('aa53d519-7f98-cbe2-0585-242051fc7acd', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'event_venues', NULL),
  ('aaba56a8-ba2c-312a-8d8e-b4b992ee107d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'messages', NULL),
  ('af53955a-de7b-cb69-6dda-58f8128cc6d7', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_links', NULL),
  ('b010f0a0-2f96-91b7-17c8-b35cd778bc64', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'company_links', NULL),
  ('b04afcfa-ee21-8895-11ed-a4841c2b3d01', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'venue_images', NULL),
  ('bc5b1771-05ce-05ce-372e-b407e7b36e61', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'raw_contact_phones', NULL),
  ('bdba0d78-2731-0129-62fd-4268bc5fe5de', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'task_contacts', NULL),
  ('c0cd0979-3ee5-df09-daf6-452db065327f', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'goal_projects', NULL),
  ('c3f8c22e-75c3-f095-8a9f-1cba98d47f37', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'projects', NULL),
  ('c4321ceb-929c-4259-d725-9af3836827e2', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'event_notes', NULL),
  ('c4932fef-a372-0bb8-709a-fd547e6b1b22', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'skills', NULL),
  ('c49d2640-9ec0-902d-f17e-732b87474efd', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'email_notes', NULL),
  ('c7176920-96eb-d5a8-5090-dfd5948262ee', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_events', NULL),
  ('c9b7af36-8b25-c418-b0fd-4934843560b8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'images', NULL),
  ('c9f6438b-f1a0-2047-795a-848d26bb1b28', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'email_threads', NULL),
  ('cc1ea9c6-e65d-061a-985e-eec62031a6e7', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'deal_companies', NULL),
  ('cc2c7898-053f-e98a-e15f-cac70b2b1db3', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'activity_logs', NULL),
  ('cecb1ced-5675-c29c-d5c1-be53ce282009', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'project_contacts', NULL),
  ('cf91e4d2-b4fe-fd2b-9350-39339e40e8c5', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'raw_contacts', NULL),
  ('d0a2c671-7453-7cc8-21da-6f9670880fe1', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_state_dependencies', NULL),
  ('d2a4405a-eded-618b-1a23-0b28e080c4d8', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'company_images', NULL),
  ('d40f937d-2bff-1ec3-1c52-e00d4c216a98', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'skill_tools', NULL),
  ('d44b3849-f54c-d4c9-7062-2e9c12972c9c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'notes', NULL),
  ('d86d037a-606a-6a92-6017-f2144dfb8df2', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'task_notes', NULL),
  ('d9b73f62-338f-6012-421c-adcab4646001', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'touchpoints', NULL),
  ('dc0cb19c-2aae-b074-d232-307943a4053d', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_notes', NULL),
  ('dd642c55-182e-3897-a75e-6ea73d269e74', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'expense_contacts', NULL),
  ('df4cdc5e-6592-cf8b-1100-f7410fc1cae1', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'memories', NULL),
  ('e0aa95fe-5ee6-f27e-1a91-f41597be8677', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'event_links', NULL),
  ('e1e8883f-00b0-fd40-0fbf-8f9be21109e4', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'events', NULL),
  ('ea4dee2d-d75d-164c-d1a9-5327710cbc54', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'email_recipients', NULL),
  ('ec517d11-ed9c-d137-e205-a2acf06ffd7c', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'runtime_config', NULL),
  ('ee5b3ec3-6f92-3a4b-c7a9-49258d42e4ec', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'goal_habits', NULL),
  ('f1d3985b-3cb2-68e2-9c9a-d9afff08791b', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'emails', NULL),
  ('f5c0495b-1cfd-ba1d-3c23-e835f411f70a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'contact_memories', NULL);


SET session_replication_role TO DEFAULT;


