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
  ('003946ba-14da-63bb-ac2a-b6bbe15292a9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'provider_sync_states', NULL),
  ('019f102b-7cf3-bb75-8d43-3d06759022c7', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'rules', NULL),
  ('0adab6c7-5acb-ca12-c30c-c1f1b6f0d9b6', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'tool_definitions', NULL),
  ('0f4941f8-07b4-e1d2-5c9a-f58d374f3cdd', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_schedules', NULL),
  ('1134b7cb-b051-b67f-a735-1e48cafccff7', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'autonomy_record_links', NULL),
  ('11870742-1ace-54f2-5517-d3e86beec1b4', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'messages', NULL),
  ('12a6c966-2c8f-53de-c122-59bc502a01e8', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'agent_logs', NULL),
  ('135653a7-4c2b-9e78-c008-8baf1cc6b0c9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'deal_notes', NULL),
  ('168dabc1-5458-254d-e4f3-afca7e636651', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'deal_contacts', NULL),
  ('17837375-7d09-2453-7e4e-7307f29deb76', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'habits', NULL),
  ('1e6444a8-d137-49ff-9f83-02b51ee27ae2', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_relationships', NULL),
  ('209cf0c6-3d2f-d628-d7ab-4ad16c09aa9d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'prompts', NULL),
  ('23837768-c868-f377-5497-d0054d8bba62', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_states', NULL),
  ('27d8989e-6e53-53d5-79b9-85cd4ab2317a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'event_images', NULL),
  ('2bbe75a1-cfea-cdb4-679f-f02cc365e194', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'company_notes', NULL),
  ('3041ad49-ee58-2eb2-c07a-e45ee896c4a1', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'task_notes', NULL),
  ('340aa907-a680-5e76-c5a9-9ecae2eddd2c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'tags', NULL),
  ('34be9bbb-2800-9c29-f60e-ef9e6f4075b0', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'skills', NULL),
  ('3fa68648-c145-8422-fb2c-56ee9909a6c3', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_phones', NULL),
  ('40691438-2adc-5708-48d6-d20b83ff73b9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'venue_links', NULL),
  ('41c8e522-f298-9ece-201b-c88c298755d8', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'raw_contact_phones', NULL),
  ('43eb525b-2540-b165-8ff7-1db5a7d5efce', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'calendar_event_notes', NULL),
  ('479a273b-3c12-13c7-56b0-2b2006d00f6f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'expense_contacts', NULL),
  ('4ffeda5e-73b4-3901-e431-9b5a94276f9c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_links', NULL),
  ('53adf442-b0e7-e41c-3878-d7f53ffc66ae', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'task_projects', NULL),
  ('53c4f4a6-dba5-7054-9750-3f8281fd4067', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'images', NULL),
  ('550c7957-cce0-523b-302d-1a24405e659b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'projects', NULL),
  ('57faa3aa-148b-40cd-e9fb-ed6fd91cd549', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'task_contacts', NULL),
  ('5cc21cc1-c32b-6239-a856-40d20b1a1dab', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'calendars', NULL),
  ('6159c5c0-dd17-4617-789c-5c785db8c11c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_emails', NULL),
  ('63def6a7-b3ae-92d6-699d-76e7f548cd47', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'agents', NULL),
  ('669cba1e-ae26-5a51-d1cb-5e11e2f8d8fe', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'event_links', NULL),
  ('6b6411d5-7067-4179-a977-402575973cbc', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'interactions', NULL),
  ('6b6555da-717e-1bd8-8222-e3d6735dfb52', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'goal_projects', NULL),
  ('765302ab-b7b9-7dd0-0c28-11b81d84485d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'email_notes', NULL),
  ('7e5e5eb4-11ab-fdb3-b4a8-50729dbbabcf', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'raw_contact_emails', NULL),
  ('808445ee-f423-48d5-4544-a9e40bdb7cf9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_addresses', NULL),
  ('834fbe29-bbfb-35e1-3849-0a50027f430f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_metrics', NULL),
  ('85c5aca5-2e65-ac40-8bf9-0b44a7c686ef', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'skill_tools', NULL),
  ('8885bab8-9292-9bff-4a2f-346162f82591', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'goals', NULL),
  ('89ae1452-3bb4-4bdb-4eef-2a8bf235cf27', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contacts', NULL),
  ('8c792de0-30ea-0feb-a2b9-fedc20884a99', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'memories', NULL),
  ('90a104fa-4522-2503-aa75-069ad2491df8', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_events', NULL),
  ('93235950-5592-6af6-166a-ba19be96b46a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'company_images', NULL),
  ('98e27110-144d-2919-e664-d196b9d353be', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'goal_habits', NULL),
  ('9968cec6-466e-885f-e5f1-bfb97e083049', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'notes_chunks', NULL),
  ('9c66b5ae-ab54-68dc-e5aa-1867276e574b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'calendar_events', NULL),
  ('9c9d0c7c-993f-35ed-f928-b914f78e2729', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'events', NULL),
  ('9ed97187-001d-866d-9e07-cb1d57e42b00', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_config', NULL),
  ('a0551cc9-affc-9b39-2567-7b1132b1b44f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'email_attachments', NULL),
  ('a3af29df-271b-1911-032f-4daf813d5293', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'project_contacts', NULL),
  ('a62a1812-617d-1279-e2e1-fe74082e57e1', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'event_notes', NULL),
  ('a6efa487-6d99-47f2-ddd6-a6c24e1cee30', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'agent_collaborators', NULL),
  ('abeb2ed5-6547-9497-5c1a-2ddbc85f72c2', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'venues', NULL),
  ('ad641a8c-070c-4b00-f555-d19d858c9c28', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'company_memories', NULL),
  ('afe5ecb8-04f3-f557-957f-c30f2dae02d3', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'venue_images', NULL),
  ('b190c12f-afaa-a268-d8de-1cacd55a0c6e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_artifacts', NULL),
  ('b3f38027-5b27-b94f-a515-824500402c04', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_companies', NULL),
  ('b4c1c2c7-f905-f881-d147-b9ccbde515af', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_state_dependencies', NULL),
  ('b844f217-4202-63ab-a36d-b33728d0ff6e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'tool_executions', NULL),
  ('b8c1ebf8-8476-da74-b798-11b0037ca098', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'notes', NULL),
  ('b912913f-4e69-557a-9dfb-650fafdb9b61', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'emails', NULL),
  ('b9bcb903-553e-365f-f54e-e485d623609e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'deals', NULL),
  ('c2947c85-4ad4-4e7d-52fb-d83a6086f721', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'places', NULL),
  ('c6028383-072c-367a-d6ba-34a8fc7d9151', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'conversations', NULL),
  ('c95e41ff-1b35-20b0-6c84-b9eeae1888e1', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'email_recipients', NULL),
  ('c9e77602-e416-7d1e-2d25-28ddca1d6e1b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_images', NULL),
  ('cb7a9c13-ccfd-64c2-6b11-22286fe87e18', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'raw_contact_urls', NULL),
  ('cd3a62b0-a5c5-6d3d-8a57-394c3c6e6803', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'raw_contacts', NULL),
  ('ce810fbd-f4a9-2249-c5f2-e8663ba0a3b3', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'event_venues', NULL),
  ('cf434a49-d4ae-b4ab-e5d9-8382f3ccc977', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'email_threads', NULL),
  ('d3799750-890b-4729-23d0-156477f60869', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'deal_companies', NULL),
  ('d83d91fb-044a-76d6-8f33-82491609be9a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_events', NULL),
  ('ddee539e-acd1-d964-d5ca-6690d4b3fc0e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'company_links', NULL),
  ('e0e009b8-78e4-7e32-94ee-19aae5b9f68d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'trips', NULL),
  ('e0fae475-5a2f-7c96-e98b-ad21568f9103', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_memories', NULL),
  ('e1637785-ec36-e17c-72aa-1a33997fac7d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'calendar_event_contacts', NULL),
  ('e1a141f4-ff0f-68b3-527f-068ee095ff68', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'activity_logs', NULL),
  ('e51e00e2-5ade-5983-da8b-039c43209de7', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'thread_participants', NULL),
  ('e94ff7b1-5845-2c6c-7aa6-9cb0aeeb716e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'agent_prompts', NULL),
  ('ea8b22ae-a96f-ba32-87f6-54834d04d68f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'tasks', NULL),
  ('ebb7e1a3-f290-f4c1-9501-7e34cde176d3', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'expenses', NULL),
  ('ecb7c93a-1695-cfd4-0c45-c0e0d769f474', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'autonomy_records', NULL),
  ('f11674d5-1a54-6b33-b856-879d68be1d13', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contacts_chunks', NULL),
  ('f3ca48e8-eb61-961f-7a77-fcc327a21a3d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'runtime_logs', NULL),
  ('f46a1997-9de2-c5e9-197f-b76ae9b6264d', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'calendar_attendees', NULL),
  ('f572d843-4563-4392-0429-7879114aa67a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'company_events', NULL),
  ('f96f3daf-3851-443f-1c80-2a9d788dc2f2', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'calendar_event_tasks', NULL),
  ('fab16251-7fd1-220b-d08a-7192eaaf3d16', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'touchpoints', NULL),
  ('fbf178ce-ee17-e2ca-d1fa-6a5d57ce8a7e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'contact_notes', NULL),
  ('feb1aba1-0546-0c39-bdc3-1823ecaf4f50', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'aab79318-871f-4662-f1ad-a54577207291', 'companies', NULL);


SET session_replication_role TO DEFAULT;


