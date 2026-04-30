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
  ('02713893-8c50-4e33-70d1-04b779bd59f9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'rules', NULL),
  ('03f0a1fa-a52b-3256-1d0a-b71dfcab77b5', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'tags', NULL),
  ('05308e86-c15c-552e-a2de-cf11d659b5dc', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'companies', NULL),
  ('05d570ef-6f19-1b39-f6e6-6678a8245f6e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'venues', NULL),
  ('085c6aac-65b6-7a11-6d6f-12176330d20f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'memories', NULL),
  ('0aac13f7-eb8b-0df6-78d4-c634e3eb1fbc', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'documents_chunks', NULL),
  ('0c2ef50d-b067-6cc6-0b8d-79d2b3469983', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'deal_contacts', NULL),
  ('0da4d367-2c00-6657-fcaa-41d953d65747', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'venue_images', NULL),
  ('0faf23e9-1520-7073-33a8-bc3ca2d44c89', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'task_notes', NULL),
  ('12c5a03d-0cc3-c523-da85-bf5d3f676bec', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'deals', NULL),
  ('1321f1cd-4eb2-82fa-4e1b-ed80de6ba630', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_artifacts', NULL),
  ('16015198-6182-dd00-fcf2-b1a195897c86', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'emails', NULL),
  ('1914cc43-a2e2-31fb-6a2f-601abf85f3c4', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_events', NULL),
  ('1c4ab37d-1b2c-a7df-b120-e3f78ed2b32b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'agent_prompts', NULL),
  ('1f6814f7-baab-e619-1607-0df81208fedc', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'raw_contact_phones', NULL),
  ('205b9fbb-809b-aeda-eab0-2f38dee69456', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'autonomy_records', NULL),
  ('206cc56f-9237-e409-5360-79d0efb65c0d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'activity_logs', NULL),
  ('26408cf8-7688-b20a-28f9-f8c4eed66d8f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'project_documents', NULL),
  ('2b9f5166-99ed-5352-ae0e-077ae7a5976e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'email_notes', NULL),
  ('2d20f948-23ce-1fa4-6f83-3d6f1ef00d10', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'raw_contact_emails', NULL),
  ('30e232a8-acc5-fe44-1332-31db87f92ab6', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'goals', NULL),
  ('34a7008e-11dd-3533-427f-5e11d3a9506e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'event_notes', NULL),
  ('3bab8c28-5273-781d-3c4a-3b83bcb7c816', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_addresses', NULL),
  ('3d22df1f-3ff6-0218-687b-33f8e853c4df', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'task_contacts', NULL),
  ('3e8761cd-38a3-b8ea-840c-c13a9994010a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'events', NULL),
  ('403fc5e2-50e2-1620-3f6b-0e40e555ca71', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'skills', NULL),
  ('43399cca-4c0c-f160-321b-b067ee105777', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'calendar_event_contacts', NULL),
  ('4c06453a-6990-a266-0cf1-fa65cad9b018', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'email_attachments', NULL),
  ('4f09400d-5184-0522-2443-dcf3b9dfe820', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'raw_contact_urls', NULL),
  ('4f17aaf9-c8ee-9a81-8220-c8020dcfb694', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_metrics', NULL),
  ('4fee2b87-7b89-75e6-ed27-9bec9a10d48d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'tool_executions', NULL),
  ('534aa42e-c741-8175-ce8c-a547d0c154f1', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'calendar_events', NULL),
  ('59a9b2bd-7b99-0876-5f40-d56aae308f5f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_images', NULL),
  ('6147a9a3-46b1-3cae-4270-0e93d2d7ea74', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'email_recipients', NULL),
  ('662d9ded-e225-c51c-9845-4fc4ac5c2201', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'touchpoints', NULL),
  ('6914e2b6-72dd-3f6a-4cb9-98b2f0e992b9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_events', NULL),
  ('69cab15d-af50-de5b-3368-3232167995a6', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'places', NULL),
  ('6ccfebf6-150e-d88a-4750-f619678201da', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'company_documents', NULL),
  ('718882cc-a3dd-9ad7-d5bd-6016a11c92b6', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_schedules', NULL),
  ('73931c1e-c34a-b992-a58b-1b079ef64adf', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_logs', NULL),
  ('761a8c8b-4efc-ea95-bcca-fdb612bc94ee', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'raw_contacts', NULL),
  ('792b3cff-2538-b368-9ad7-7c4c2ad86a60', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'task_projects', NULL),
  ('79e3f4a0-052a-844f-4556-1ec0c1b29234', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'provider_sync_states', NULL),
  ('7b2984de-bd1f-74df-3f4e-bb60a6179c69', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'projects', NULL),
  ('7c0c09c6-8107-7d0e-1450-c4fadba84f1f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_emails', NULL),
  ('7dcc90f1-14ee-ac44-4e98-8dbbf96ab46c', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'expenses', NULL),
  ('855888a0-d132-bce3-2e40-baeeff4e3c14', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'tool_definitions', NULL),
  ('87198cb7-c40f-fcec-7765-a01a561166ba', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'autonomy_record_links', NULL),
  ('8abb7d20-d268-8cbc-fa5f-34eb27bb5440', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'skill_tools', NULL),
  ('8bd82af3-38af-c1f5-779c-3eea898c2493', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'calendar_event_notes', NULL),
  ('8ff6ed2f-5e66-665e-c631-ae81940d7942', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'goal_habits', NULL),
  ('927192d1-2a48-c4f4-5c37-a36feee1ccc8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'agents', NULL),
  ('9567adf7-6d49-3fa5-c49c-98c0db6ec5e0', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'agent_collaborators', NULL),
  ('98bb80c5-4185-5d45-d87c-39351c421646', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'calendars', NULL),
  ('9ca90b6a-3109-7f65-d81f-a75ed3068fda', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'event_links', NULL),
  ('9f1dcd58-f725-f6ec-e1e7-71bb852aabf9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'messages', NULL),
  ('a09538f1-f883-c7a5-759a-518462d1f3b3', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'habits', NULL),
  ('a1cd7061-8ce5-bdf1-e0e7-d61c2b46d527', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'calendar_attendees', NULL),
  ('a306e1a1-47d2-e39d-0d66-1cfb91f9440f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'agent_logs', NULL),
  ('a6eba12a-dc70-dfc0-54c0-d4bb26bc42df', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'trips', NULL),
  ('abd67fb5-5f6e-5c18-c87d-f19a958be61b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_memories', NULL),
  ('ac48e393-eb89-8217-723f-35c6ec3b50ad', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contacts_chunks', NULL),
  ('acd77bde-7ab3-a1c1-f1f1-af29ad6beb2c', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_state_dependencies', NULL),
  ('af08aa73-13e9-573f-9a4c-c505bd55e463', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'prompts', NULL),
  ('af48e82a-d51a-61be-9af4-0b1210323802', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'images', NULL),
  ('b045c1eb-51ab-c944-688f-1f331ef474fa', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'notes_chunks', NULL),
  ('b167b913-3c89-26a8-d16b-fe2569417186', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'company_links', NULL),
  ('b21a5dba-dc47-2fa7-e17b-4da865e34e8a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'company_notes', NULL),
  ('b37e3ae4-c569-c87c-82c9-a7cbe0e65d6a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contacts', NULL),
  ('b8b7db98-4503-435e-a4b7-8120b30ff05f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'interactions', NULL),
  ('ba6c92f4-e26c-e924-8b2a-8b3383518e2b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'venue_links', NULL),
  ('bbe957b0-c371-3585-8300-9af7ed40e2a8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_notes', NULL),
  ('bda9fb99-4d43-9e6b-c406-3fd3a933c67f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'thread_participants', NULL),
  ('be36ecdd-9010-7ed8-fb0a-31dda3af6ae2', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_companies', NULL),
  ('beeebac1-cf03-ad1f-536d-e11b69efdee5', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'deal_notes', NULL),
  ('c4ecf0fc-1a51-f08a-c1ef-4d3b01498c4a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'documents', NULL),
  ('c56bbda2-dff1-3af9-1b50-2b7e26214baa', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'expense_contacts', NULL),
  ('c6b427fc-e856-a627-09ea-818112ec38ce', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_links', NULL),
  ('c6d29f19-e102-9551-ea9f-fd68ae0f4b77', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'tasks', NULL),
  ('cace65dc-d3c4-1bfd-f8a9-f38ba98640a8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'notes', NULL),
  ('cfe35067-8719-96df-0509-cf4998ba9002', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'company_events', NULL),
  ('d41cc0e8-34ef-a441-d97c-064968bf4886', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'company_images', NULL),
  ('d57d2ee6-7b28-5c02-128e-c625e2c509e7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'email_threads', NULL),
  ('d72a8fc7-33f0-b08d-3dbe-a301c5333b12', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'project_contacts', NULL),
  ('db5cbafd-488a-2af0-3322-0a05cba1a2a7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_phones', NULL),
  ('e2181478-1f0a-b1fa-32f6-31fc65f451f9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'conversations', NULL),
  ('e3bad2e4-e609-78d4-cdd9-deb815cde5a7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_states', NULL),
  ('e8f762cf-04d7-27f9-85e3-75b7d3be0aec', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'calendar_event_tasks', NULL),
  ('ed745619-cd32-499b-4233-349d2a1c1bef', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'deal_companies', NULL),
  ('edea9228-0d63-39fd-8485-1d903244a702', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'event_images', NULL),
  ('ef033c48-88f4-b9d1-3033-a3db406afb30', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'goal_projects', NULL),
  ('f9e551e5-49a7-4224-f1dd-02687d64cab3', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'runtime_config', NULL),
  ('fbdc38be-eb85-6c13-dce8-f667631ceb23', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'contact_relationships', NULL),
  ('fe5762f3-f776-a8f2-3dd3-e561c184005d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'company_memories', NULL),
  ('ff379b97-84e0-a557-d027-c81f120130e7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b9366791-5079-4ba2-60c6-59e7b1ca4313', 'event_venues', NULL);


SET session_replication_role TO DEFAULT;


