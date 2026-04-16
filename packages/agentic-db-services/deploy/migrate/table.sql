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
  ('00bab2a2-1037-5c04-6c83-526b7319f6c5', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_notes', NULL),
  ('037ea3b0-bed8-b144-b7d4-af62282cf2b5', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'goals', NULL),
  ('045049a9-7103-1d51-1a9b-995c2ad71176', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'task_projects', NULL),
  ('05b9b1f1-b35f-ce41-3ea7-379f5ade250a', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_phones', NULL),
  ('09c6d67e-9494-3b95-03a5-f7a103c16a6c', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'company_events', NULL),
  ('0e46274b-519d-4381-3553-c831b76e5998', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'tasks', NULL),
  ('0fbb4a04-7bcd-68ae-ff0a-01421a8ae745', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'calendar_events', NULL),
  ('139d4caf-c102-b00c-e89f-14393d54ab2e', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'provider_sync_states', NULL),
  ('1653854f-d35d-c8c8-925e-ee4b36afd7fd', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'memories', NULL),
  ('1853894b-f62d-424e-14c8-e9c9c71322d1', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'expense_contacts', NULL),
  ('21ed5411-c825-5056-93f3-92f99dc1b2e8', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_config', NULL),
  ('21eeb7ff-93da-0aa5-a771-b1496138f729', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'event_images', NULL),
  ('2464a7f8-142c-529b-581b-1e5677468703', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_companies', NULL),
  ('24df3c44-edd7-eb53-f619-a61bb659d6d1', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'task_contacts', NULL),
  ('25d8f56e-c94c-abde-d20f-55ce9687c467', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'raw_contacts', NULL),
  ('266af73c-73ef-0e03-d44f-889ef98c397e', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'calendars', NULL),
  ('288d5629-bcce-bd41-baab-4d69a77d5058', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contacts', NULL),
  ('2caebfe9-9b9b-54c2-39cd-737bf064ecd5', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'codebases', NULL),
  ('2f4f040d-a591-b3e2-9fae-ecf486739e33', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'skills', NULL),
  ('32f4868b-b0ee-e87c-b05f-eea4af1d2db7', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'interactions', NULL),
  ('340b0683-bb96-94c9-9a67-e41f749feff9', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'email_recipients', NULL),
  ('34e28f75-f4c3-6089-96b9-7f512c35d2dd', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'calendar_event_tasks', NULL),
  ('3615c67a-6695-6401-ec72-c51265f4a3e5', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'event_notes', NULL),
  ('36fedbee-10e6-2742-41fb-f62fdb7b13af', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'calendar_event_contacts', NULL),
  ('37468336-5c6e-071c-c7e1-465f06c17861', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_metrics', NULL),
  ('37e1e7eb-b001-3f47-324d-551d93a381ad', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'deal_companies', NULL),
  ('39010b71-b34e-fa02-54b9-79e62922be8d', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_events', NULL),
  ('3b8bc507-871a-c5ba-d9c3-6b5d5c045e02', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_images', NULL),
  ('3f0eaf56-8319-4bfb-3e17-92a2523c08b4', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'rules', NULL),
  ('477b30c9-2879-dcdd-cdf6-2c7ef1f516f9', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'expenses', NULL),
  ('479d7be3-25bb-15a0-4ecd-347dfe3be09d', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'tags', NULL),
  ('48fe7f27-b9e2-6a93-6987-ab9d2c4a7ba9', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_schedules', NULL),
  ('515574f0-1fe7-43a6-1b3a-d1a635febcb2', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'goal_habits', NULL),
  ('546cf1d0-f56b-9b51-598a-a1b8184a054c', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'deal_contacts', NULL),
  ('58183483-29ba-c4ff-9d79-6a1772579a98', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_links', NULL),
  ('5a7b13f1-aec0-9268-00f3-6844710aa4ef', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'event_venues', NULL),
  ('5e50e679-e5b0-8515-8081-d83824933a22', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'hiking_trails', NULL),
  ('5f2e54c0-bd38-52a4-01f2-b2e99e742319', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'code_chunks', NULL),
  ('6791117f-2437-e2dd-b400-291e23098edd', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'autonomy_records', NULL),
  ('6cb7b5ea-fd14-1281-334d-7e6b2b6f6dd2', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'messages', NULL),
  ('6d337b2c-776d-29f6-f9bb-5b028b892b84', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'emails', NULL),
  ('73a54fa7-7aa0-87fc-851c-33b73166355e', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'raw_contact_urls', NULL),
  ('76cfe72b-1913-ac73-0573-96d224342524', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_state_dependencies', NULL),
  ('78838c1f-7ef2-f0c6-24ab-776a62b93fef', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'projects', NULL),
  ('7bd7d419-ba00-7116-b529-d8100bbbd41e', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'raw_contact_emails', NULL),
  ('7d850371-c4fd-ec58-5ebb-0bee52dbbea1', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'calendar_attendees', NULL),
  ('7e00e80e-355e-6b6a-874b-b956fb88c141', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'company_links', NULL),
  ('7e2948e3-505c-135b-a5d0-77451a71acfe', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'email_threads', NULL),
  ('857b79c6-1b92-4b90-501e-72cd33f8b43f', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'events', NULL),
  ('86bf0df9-f4a9-94b3-c6de-33c90bdedba1', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_states', NULL),
  ('8d95112c-244d-cfa6-919b-466f51d9a7e9', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'habits', NULL),
  ('8ee321ca-df99-c512-e12b-317b2f821551', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'email_attachments', NULL),
  ('9003ccdb-d028-42ad-bc56-adfd1b8ade55', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_emails', NULL),
  ('95d8f3b2-c7e8-d66d-803e-d18fb7c2d693', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'agents', NULL),
  ('95ef64ed-f40e-d264-0ab4-ec491a0f5df3', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_events', NULL),
  ('96a3bfb2-ccb5-a24b-5052-3222b7d66ada', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_memories', NULL),
  ('9ef5ec9d-5682-9f01-00b5-0132f44da463', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'codebase_dependencies', NULL),
  ('ac41fe29-154a-272e-d78a-c79f90e95862', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'images', NULL),
  ('ac9d6402-0a58-f4b9-bad9-bf6dfd3bae4e', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'tool_definitions', NULL),
  ('b09f1e46-2dfa-0014-6450-c4c4bf5663a8', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'activity_logs', NULL),
  ('b1b6c0a4-86ad-f6b4-696f-58738bf06238', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_relationships', NULL),
  ('b422dabe-b8ed-6527-6ac8-8cc78dbd0570', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'calendar_event_notes', NULL),
  ('b5e2d63a-e83c-1af8-17a8-6323d53dd315', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'trips', NULL),
  ('b6284007-3413-3597-7d16-5dfd97f32f0d', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'conversations', NULL),
  ('ba75f136-d0ef-fdb2-81b9-3b44fcb36b32', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'goal_projects', NULL),
  ('bb2e1e7a-0c58-0617-419c-7e767db6634d', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'notes', NULL),
  ('bc6b357d-c86d-950b-6d81-dd4c298464e9', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'places', NULL),
  ('be31b905-db93-7989-7b8b-40ddee0936fe', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'raw_contact_phones', NULL),
  ('be31faf2-32ee-7cf5-120d-39cf9bb28629', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'email_notes', NULL),
  ('c4267d37-b743-9d57-ee08-3828d7cf8428', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'skill_tools', NULL),
  ('c4a75070-e98a-412a-be43-06cded84d7cc', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'touchpoints', NULL),
  ('c6ed9ccc-b821-d0bd-a0ed-d7086a668615', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_logs', NULL),
  ('c73a3eed-bedc-0f2a-a61a-8afb8131dbbd', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'project_contacts', NULL),
  ('c80a8e96-2db1-0fa9-40f7-fbc8be683216', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'agent_collaborators', NULL),
  ('ca671945-8e3c-f88b-46c1-5d557dc34f9b', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'deal_notes', NULL),
  ('cfc38e6a-cf28-e126-a9df-9976f3f05b85', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'company_notes', NULL),
  ('d060e258-3e73-df4b-091a-d5dad51e9550', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'venues', NULL),
  ('d61e15cf-1d29-b65d-4d0c-815dda4b7134', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'contact_addresses', NULL),
  ('d92cfabd-8eb1-c6c0-83a2-76033a0b0337', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'company_images', NULL),
  ('d963a0ce-f972-ce5a-cd31-cb90940aeaf4', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'venue_links', NULL),
  ('dccbfb41-6dd0-66c1-5458-dc8fc8a16284', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'venue_images', NULL),
  ('dd654960-24d5-241e-8da6-4ef1e1e37dd7', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'tool_executions', NULL),
  ('e7a1a47e-9dd0-b155-fc54-29269c5cd6eb', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'agent_logs', NULL),
  ('e7c2ce6a-25c0-aaea-31da-dca8059090af', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'autonomy_record_links', NULL),
  ('e8e24050-18e9-b1c9-6a74-2fc415100c64', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'prompts', NULL),
  ('f1251666-303b-be3c-0fd0-cb1215580105', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'company_memories', NULL),
  ('f15a1afd-283d-7bd9-4c80-d99268ceff6f', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'deals', NULL),
  ('f1740c01-ad00-d14c-0054-4a763506045f', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'runtime_artifacts', NULL),
  ('f4f531a6-a381-d407-5264-be9c863706e3', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'agent_prompts', NULL),
  ('f74fcea7-cf29-ae3e-ed48-158ed4acd207', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'thread_participants', NULL),
  ('f8511e5b-6f62-2842-78f6-0a8b9d487183', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'companies', NULL),
  ('fde07769-59cd-eb3e-18ab-89685f191f9c', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'event_links', NULL),
  ('fea21153-f9f8-93b0-bf8f-43c05e0a110e', '019d937b-b671-77da-9a1e-5b9b26705894', '019d937b-d5e9-7399-ae6a-57e4f46df606', 'task_notes', NULL);


SET session_replication_role TO DEFAULT;


