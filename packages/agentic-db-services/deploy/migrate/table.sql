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
  ('015f1d38-537a-0db0-c873-6ba35ba7d099', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_events', NULL),
  ('03a0d4bb-7a69-f222-26ff-f6b03489c1d2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'skills', NULL),
  ('05ef40f1-2b58-3086-947f-fff7d4ee587e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_artifacts', NULL),
  ('09334155-5f2c-adb6-63e3-d8e4ad3e95db', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'tags', NULL),
  ('095f0777-42f5-aad5-142e-6d1fab105cba', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'agent_prompts', NULL),
  ('0c20fb48-79d6-cf41-a6fc-75edae48b2a5', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'project_contacts', NULL),
  ('11faacaa-a07c-3db8-b522-4cf035a1a500', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'provider_sync_states', NULL),
  ('1471cfca-a6c3-ec55-ddce-b3fddba3fc61', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'tool_executions', NULL),
  ('18647467-92e8-46df-a4e2-8719a4f7f2e1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'company_images', NULL),
  ('1865c844-b477-cb7c-8556-90446c0b50b4', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'venue_links', NULL),
  ('1b5a3da0-1590-f2d5-387a-7fe22dd23118', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'notes_chunks', NULL),
  ('1d5ad073-f57d-a00a-8c47-6d76d2914768', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_addresses', NULL),
  ('2026c27d-a93a-2150-e194-c70d81e8ccef', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'deal_contacts', NULL),
  ('22a1dbf3-0b40-5da6-8a5d-388137286223', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'email_attachments', NULL),
  ('252aec4e-403a-528b-f367-2147fb508518', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'raw_contact_emails', NULL),
  ('262245ce-6c2c-1e9e-3f0b-c8385437c862', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'venue_images', NULL),
  ('28637f06-139d-c7e5-ca63-b221325f82e9', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'task_notes', NULL),
  ('295fbf17-030c-cec6-55a6-b8d53e3c818b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'autonomy_record_links', NULL),
  ('2990fdf0-0a78-e57a-51bc-c37ff081494e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'deal_companies', NULL),
  ('36efad7c-f5fe-356d-e5c6-e70d6ffcee16', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_config', NULL),
  ('397b94a3-2f7a-bb38-1961-b72a75613cab', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_events', NULL),
  ('3bd8c806-c363-5090-c848-a6e59644df5f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'tool_definitions', NULL),
  ('453966d5-e1dd-ba13-b4e4-e603f23bdefc', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'calendar_event_notes', NULL),
  ('456b876b-d0c5-7d6e-dd84-e28ccd4c9046', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'thread_participants', NULL),
  ('483be9fb-4008-0b81-85b8-177e586381c8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'projects', NULL),
  ('4947c869-b5cd-ff91-d96e-c29c3155a024', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'company_documents', NULL),
  ('4af8ca2c-29d4-58d7-8e31-c4d43489b021', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'company_events', NULL),
  ('4c0bb51f-d86e-1aa4-fcb3-d2dedb4a0698', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'notes', NULL),
  ('4cb0d509-cb00-3102-441c-af85dae9f97d', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'calendars', NULL),
  ('4fa4add1-165c-a2b3-893e-f5023ab55202', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'activity_logs', NULL),
  ('512dd8e5-c5f3-f9dc-bc07-d48d2b9931a2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'goal_projects', NULL),
  ('53c4c9cd-f59c-4948-0907-4bd82c21883a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_state_dependencies', NULL),
  ('54ed30ca-fe0a-cd46-a8a4-0a28e155ea8e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'email_notes', NULL),
  ('578d9e0b-1277-d7f9-e6cb-b725b4fb92d4', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_relationships', NULL),
  ('5793f4c6-340b-81a1-b11a-da7029e61a9c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_links', NULL),
  ('5d126d35-67c4-1cb5-76ee-ef2f0930d468', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'calendar_attendees', NULL),
  ('5f694f51-bb4b-c471-8d85-89a67e760ba0', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'company_memories', NULL),
  ('6128828e-d354-61cc-8c73-45a7704772c8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_schedules', NULL),
  ('61f0d185-a9d0-7bb4-5378-24e993ded122', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'company_links', NULL),
  ('6751fe42-730d-040a-c1e9-01d9a7333540', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'raw_contact_phones', NULL),
  ('68138ff1-ff3b-177a-851a-726e39f2d8af', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'event_notes', NULL),
  ('6a0f489b-8da4-6f90-a2fa-e403778a798a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'agent_collaborators', NULL),
  ('722fb388-2e7b-8870-ba8c-836c0f9cafb1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_companies', NULL),
  ('7327299c-dfe6-28a1-1a7c-3dec46eef3e0', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contacts_chunks', NULL),
  ('73579f98-0e11-d296-f78f-4ee5f2554e77', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'conversations', NULL),
  ('76c39feb-9e81-2673-b1cb-e990035c1e77', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'memories', NULL),
  ('7b6c1b64-6a19-8c83-61a9-bf61c325604e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'task_contacts', NULL),
  ('8443d10a-0d51-73ee-e7fb-367441dab606', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'calendar_event_tasks', NULL),
  ('88e17908-bc9d-d9c6-65c6-9f22589b9193', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'email_recipients', NULL),
  ('8ba72cf8-8e97-ae4a-c993-4a1ba811dbb5', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contacts', NULL),
  ('8c824b1d-f359-52c1-3f71-da31f5d33aff', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'rules', NULL),
  ('8d3b75c5-bf80-1c05-3113-62ee9a450f78', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'expense_contacts', NULL),
  ('8d563863-9737-f185-51e9-277e9c38c542', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_memories', NULL),
  ('912ebcf0-670e-d837-42ce-9833df58fd28', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'companies', NULL),
  ('9206d2c4-609f-cb16-51bd-4790182800ba', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'calendar_event_contacts', NULL),
  ('948e26bc-2d30-9d53-7ead-4ed6df438b0c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'agents', NULL),
  ('94e965d6-5195-8ff4-2858-08a6385c8090', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'skill_tools', NULL),
  ('957baac3-1a13-f87a-a028-c534bd3634a1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'event_images', NULL),
  ('95d42485-86f7-e971-0066-b6bb82b999c5', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_metrics', NULL),
  ('a1b16562-e5a3-1112-1c87-f6053bdc0688', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'prompts', NULL),
  ('a7749d04-25b1-b5e5-626b-e45c50d18bb3', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'trips', NULL),
  ('aa16abb5-725b-fa65-4ccf-2e2039a5dd1c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'calendar_events', NULL),
  ('ac07d7a7-0ed8-b9d0-46cd-78849d93f815', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'images', NULL),
  ('addc9fd2-ac11-2535-c7df-45a766b3b741', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'documents_chunks', NULL),
  ('af46d962-e068-50ba-c973-da080feb82e1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'messages', NULL),
  ('b39ec844-6105-155c-a75a-edb306288e12', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_logs', NULL),
  ('b3bbc36c-bc2a-049a-55b0-bee328843a3e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'raw_contacts', NULL),
  ('b5b589a0-7229-3fe3-d964-bec7a58797e1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'events', NULL),
  ('b5c5ea9b-e6d6-8d37-47f3-e49d07c2dd71', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'interactions', NULL),
  ('b5e1abd5-17cf-20ce-e71c-3e6a03474220', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'email_threads', NULL),
  ('bb127d9d-029c-e21b-909d-8d9ba5f6586c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'company_notes', NULL),
  ('bf7ad2c0-d3e0-26a8-7d07-4ad9efbc0e02', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'autonomy_records', NULL),
  ('c07b96d7-0c9b-2ff9-0787-c6479f29c1c8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'event_links', NULL),
  ('c0b230cc-c50c-e059-6e19-d03c23d4bdb6', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_notes', NULL),
  ('c7fe2ee0-3570-d4ce-0055-d2b78ab5305e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'agent_logs', NULL),
  ('ce7e633c-92a1-5641-873b-cb1abd421747', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'deal_notes', NULL),
  ('d06186dd-6af8-41a8-2a10-cde423ed7349', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'task_projects', NULL),
  ('d46fc5da-017f-913d-9e3d-608fa4a4cb4b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'tasks', NULL),
  ('d4ccff1b-6558-f06f-9e64-ece7bd99d7e9', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'runtime_states', NULL),
  ('d51f8d64-1d65-9ea8-eb1d-02ecb57f3bd1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'project_documents', NULL),
  ('d830176c-6a4f-1033-3b2f-ec99c7ba5899', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'places', NULL),
  ('d92a5d1a-ad56-faac-b5b9-11a27136758b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'expenses', NULL),
  ('d96090cc-4ff6-3b1d-c5a4-c4dee37943ce', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'goals', NULL),
  ('d9d742ef-dfdd-4808-7573-4aa5ea09e497', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_images', NULL),
  ('db77c12c-72be-d626-4d36-bf0a9972060e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'goal_habits', NULL),
  ('e9647772-04ff-0c06-5f38-ffa333580442', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'venues', NULL),
  ('e9ec7021-687f-02a0-f9a7-2a2bca71932f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'habits', NULL),
  ('ed50ebc2-b92b-2250-e3b7-d360898817fe', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'raw_contact_urls', NULL),
  ('f0f7a120-bf69-610c-c4b5-e5630a74490e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_phones', NULL),
  ('f87525a2-ab8d-a7bb-10a6-5899c57fbacb', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'contact_emails', NULL),
  ('fa536204-280a-0e03-28f4-e224adace770', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'documents', NULL),
  ('fc19a73f-d900-e2a6-f91f-4af27bb91631', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'deals', NULL),
  ('fc5a6875-508b-5f55-6b2c-fb8091c8162a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'touchpoints', NULL),
  ('fd42a95b-1b13-c0f5-37a9-a146ac9a9daf', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'emails', NULL),
  ('fe553412-c6ff-6d5e-c5fa-5f2d43f53d5f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '364f03f7-f190-337f-6de0-cf918a6a3e67', 'event_venues', NULL);


SET session_replication_role TO DEFAULT;


