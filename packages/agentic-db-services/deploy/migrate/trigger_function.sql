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
  ('019d4100-4445-7303-b609-04194ea3981a', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'users_search_tsv_tsv', NULL),
  ('019d4100-ef8c-7cf7-a526-94bd509684fd', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'encrypted_secrets_hash', NULL),
  ('043d178d-d4b8-c5be-f291-2e30aa36d3f1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'goals_enqueue_chunking', NULL),
  ('05ca252c-a08c-ed8a-2946-8c73cc6eb0f7', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'goals_embedding_stale', NULL),
  ('06713f7d-e0ff-1917-ec45-706ca1edd208', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'places_enqueue_chunking', NULL),
  ('09932fa5-98a0-f6cd-09e5-d410383af4bf', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'autonomy_records_enqueue_embedding', NULL),
  ('0c582804-a478-5502-fead-fe647cc614b1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'email_threads_embedding_stale', NULL),
  ('0cdf8d2e-11df-9760-5c53-800e00abfcf1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'tool_definitions_enqueue_embedding', NULL),
  ('1015e142-3d26-ac06-249b-ed837a585dcd', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'trips_embedding_stale', NULL),
  ('10371b77-ccee-8b93-5607-37e859426736', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'emails_embedding_stale', NULL),
  ('10ea3628-66af-7197-2cae-5208904b3743', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'companies_embedding_stale', NULL),
  ('16e78995-b838-846f-b9f8-24f920b8740d', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'notes_enqueue_embedding', NULL),
  ('18485d74-bb93-5c8a-f4ac-9e45977ee3eb', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'contacts_embedding_stale', NULL),
  ('2130c1c6-7c10-4bd2-910f-0a299569bf55', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'notes_enqueue_chunking', NULL),
  ('23bddf77-5a1b-a483-4ec9-3eb7b3de95c6', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'activity_logs_enqueue_embedding', NULL),
  ('24b18649-f0b0-f375-f33f-56350c16af5f', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'memories_enqueue_embedding', NULL),
  ('2835fa31-7e3f-df94-2373-5d8ca965160a', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'runtime_logs_enqueue_chunking', NULL),
  ('283c4ffe-24bd-e980-da9f-0c1061d22622', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'notes_embedding_stale', NULL),
  ('2981516e-a53a-6af6-5f88-1b24c5bf8706', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'codebases_enqueue_embedding', NULL),
  ('2c6b7361-990a-5549-0473-6c3da2007155', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'emails_search_tsv_tsv', NULL),
  ('2cb16f6e-b553-1ad7-11a5-a6f09ac9e841', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'runtime_logs_embedding_stale', NULL),
  ('349ca7d8-c360-8316-047e-827cec75c01b', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'projects_embedding_stale', NULL),
  ('35915434-dd8b-3e92-271c-41ec89cf8e4d', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'expenses_enqueue_chunking', NULL),
  ('3820bd57-5dc3-6ddd-9d14-fcaefd0d2c43', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'companies_search_tsv_tsv', NULL),
  ('389ca1cc-4968-83ba-e9c2-41d6d8426267', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'messages_enqueue_embedding', NULL),
  ('392d2a2a-8ef4-dd17-0e51-e838ce252d7f', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'agent_logs_embedding_stale', NULL),
  ('39c66ee0-a6a2-6bd8-0a41-1cbba618f8bf', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'autonomy_records_embedding_stale', NULL),
  ('3b994c27-c657-c271-aacb-32030ccd0c8b', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'agents_enqueue_chunking', NULL),
  ('4150b483-8ed4-d164-ac7b-1add00d0abc4', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'calendar_events_enqueue_chunking', NULL),
  ('4208dcb9-717c-9cb9-9144-966572cb14d1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'rules_embedding_stale', NULL),
  ('45e8c60b-b743-c499-91b2-44dbe41eb1fc', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'prompts_embedding_stale', NULL),
  ('45f51b2a-929e-b868-41b6-7db00b02f4cb', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'memories_enqueue_chunking', NULL),
  ('4801f807-fc30-10a1-07e3-54d91fceb24d', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'hiking_trails_embedding_stale', NULL),
  ('4a10b12c-9594-7667-0908-03aa4aec556b', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'runtime_states_enqueue_embedding', NULL),
  ('4a5d123c-b89c-a77a-2310-4fe33e24685a', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'activity_logs_embedding_stale', NULL),
  ('4b5d516b-a2f9-9174-d71e-c0ca0b85831f', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'emails_enqueue_chunking', NULL),
  ('4c1c8222-713b-52ad-6f47-af8803c15289', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'prompts_enqueue_embedding', NULL),
  ('4c35c227-b94a-b9b5-1f4f-5afa2d8d8f77', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'events_embedding_stale', NULL),
  ('4d235a6f-4350-3fe6-7436-eca558d90b06', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'projects_enqueue_embedding', NULL),
  ('4d3aff03-a771-04a9-6cad-4ca3a1612d28', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'memories_embedding_stale', NULL),
  ('4e163394-5f12-0598-8319-c4ef5c3aff33', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'runtime_states_embedding_stale', NULL),
  ('4e53f9c9-e83f-6670-d2e0-650caef5de5c', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'places_enqueue_embedding', NULL),
  ('52605909-5c42-3a66-cccc-faf58d3f9d26', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'agent_logs_enqueue_chunking', NULL),
  ('5376f3b6-2517-aa91-0cbe-cb4024ee3746', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'runtime_logs_enqueue_embedding', NULL),
  ('54693390-5487-14fb-aa87-ae7c12b3563d', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'venues_embedding_stale', NULL),
  ('5a08b049-84b1-768b-dca2-a0dc0e011a7b', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'contacts_search_tsv_tsv', NULL),
  ('5b363b74-3c74-60c6-2e0c-6a2703893207', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'email_threads_enqueue_chunking', NULL),
  ('693344e0-b763-8ced-c784-1c8b9d6ba9c1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'agent_logs_enqueue_embedding', NULL),
  ('69e51c01-13a4-80ee-24e6-cf3496888764', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'trips_enqueue_chunking', NULL),
  ('6ac33ef7-aa01-ae67-5a3e-5c75ac6024c6', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'interactions_enqueue_chunking', NULL),
  ('6d143b71-8a7a-8818-0d99-df2bd75b27b9', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'skills_embedding_stale', NULL),
  ('6d8e10c6-e147-b66f-b93b-40e04a7410e7', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'tasks_enqueue_embedding', NULL),
  ('72b0f0ab-33e4-066a-8930-8ffe084114b4', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'calendar_events_search_tsv_tsv', NULL),
  ('7516c718-ad30-1ad4-7de8-b66892855ac3', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'email_threads_search_tsv_tsv', NULL),
  ('79502565-1633-4e2a-71f6-223da96ee3c2', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'touchpoints_enqueue_embedding', NULL),
  ('7e1fea7a-f06a-4580-5722-ccde167027f8', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'contacts_enqueue_chunking', NULL),
  ('7ea89c14-3f3f-b434-2d4a-533afe6a4a5a', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'goals_enqueue_embedding', NULL),
  ('803122ef-7035-2d0b-e000-673c39d3f5ba', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'tool_definitions_enqueue_chunking', NULL),
  ('81b19dbf-9770-f9c5-96dc-bfbf425c3ae1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'interactions_embedding_stale', NULL),
  ('84408081-d079-8a7e-884a-35d21186863a', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'messages_embedding_stale', NULL),
  ('86894414-9fce-b8d1-4423-8a0b29dbc745', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'hiking_trails_enqueue_embedding', NULL),
  ('86ca5c89-f450-ace6-cb3e-1e8bb0ead8d9', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'projects_enqueue_chunking', NULL),
  ('88a7ec09-1cd5-cda7-36cf-e1b4cf95ba75', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'messages_enqueue_chunking', NULL),
  ('8c8405d5-46d2-8f4c-7a18-39d852614861', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'autonomy_records_enqueue_chunking', NULL),
  ('91504aaa-2499-13ba-1b26-d8e4e39e265b', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'events_enqueue_chunking', NULL),
  ('9271a8c3-9510-d8f6-cf46-2644a7729684', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'calendar_events_enqueue_embedding', NULL),
  ('933043b5-10f4-c57f-96e3-dfc4e5cda0e1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'touchpoints_enqueue_chunking', NULL),
  ('93652c6b-6840-1089-e897-d2f96401ee55', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'conversations_enqueue_embedding', NULL),
  ('969d2f71-4e01-2def-3a4d-6b725479497d', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'trips_enqueue_embedding', NULL),
  ('971476ab-a26c-6a02-5c67-f1a6d374a35c', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'codebases_enqueue_chunking', NULL),
  ('97af9026-5e55-e297-ce90-1429b9a43154', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'agents_enqueue_embedding', NULL),
  ('a5205df8-1193-3a03-e0b0-2ab71c6ff314', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'expenses_enqueue_embedding', NULL),
  ('a54c8d41-fff0-b63f-75cc-ef804eb4e834', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'skills_enqueue_embedding', NULL),
  ('aa5e91ae-c03a-de4f-b263-55fe0e8e7d7e', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'companies_enqueue_chunking', NULL),
  ('ae8d06d0-ec17-5b4c-2a0b-9dfdfa6fd7cd', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'companies_enqueue_embedding', NULL),
  ('aeab90b7-e082-1222-d5ed-6e5c13ca041f', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'code_chunks_enqueue_embedding', NULL),
  ('af106afa-a8b1-4690-aa1a-7ce38df33481', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'rules_enqueue_chunking', NULL),
  ('b3dcb025-6a81-e09a-204e-c7a53dc8d677', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'touchpoints_embedding_stale', NULL),
  ('b4b48225-a98b-74c5-5ccc-0d492f6b5d14', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'expenses_embedding_stale', NULL),
  ('b50e4fc4-72e3-8b97-9161-bc65531dbcf0', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'prompts_enqueue_chunking', NULL),
  ('b5465f54-2b6a-282f-8a3e-42bcbbba866e', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'tasks_embedding_stale', NULL),
  ('b97213f8-d143-6656-2af9-cdbbab8f827d', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'codebases_embedding_stale', NULL),
  ('b9d3f6d3-a0c5-ad14-5761-0b4f23619341', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'skills_enqueue_chunking', NULL),
  ('ba01583b-656b-2c0d-90db-3f28e9fcd5a0', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'rules_enqueue_embedding', NULL),
  ('c7ee8e5b-2136-ce93-0bdc-4514d65019b8', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'deals_enqueue_chunking', NULL),
  ('ce168d7a-ba5b-b1dc-1716-e7a8df14256e', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'events_search_tsv_tsv', NULL),
  ('d274251c-8b4d-a3ee-80c9-11c708f30b96', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'deals_enqueue_embedding', NULL),
  ('d33774ab-d549-7d0d-a541-2db073ed88ce', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'contacts_enqueue_embedding', NULL),
  ('d5f101e6-9ed1-0faf-fcdf-e99f5c8feeb6', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'calendar_events_embedding_stale', NULL),
  ('d6003334-d9dd-5b5c-5d26-d481ca34d380', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'tasks_enqueue_chunking', NULL),
  ('d714853d-37f6-79cc-257e-4955c529d073', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'interactions_enqueue_embedding', NULL),
  ('db6d1c02-de40-681b-fb27-79fed5c00c4a', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'venues_search_tsv_tsv', NULL),
  ('dc40f64b-d39f-dea0-0386-da587823fbf1', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'tool_definitions_embedding_stale', NULL),
  ('e1972a8b-ef47-fee7-1748-fd412e067430', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'hiking_trails_enqueue_chunking', NULL),
  ('e1dd0dc0-2fe1-455b-9799-27d3e0e7b34c', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'runtime_states_enqueue_chunking', NULL),
  ('e224eb73-2eb3-0758-d8e7-1beaa34f190c', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'deals_embedding_stale', NULL),
  ('e2db3230-593b-e71c-3bfd-44571450ff98', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'agents_embedding_stale', NULL),
  ('e63e6b84-683a-5bc9-8bea-75e8d391dc47', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'email_threads_enqueue_embedding', NULL),
  ('e6602e47-147a-9f01-274f-fc5ac7da91a6', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'activity_logs_enqueue_chunking', NULL),
  ('edfe9490-4425-5936-e669-affe8f7258a7', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'places_embedding_stale', NULL),
  ('f151c1ac-4aeb-8bca-c7fa-0e88d858c541', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'venues_enqueue_embedding', NULL),
  ('f17bea21-ee44-db88-55ca-ea09a0badade', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'events_enqueue_embedding', NULL),
  ('f246dd76-d766-9519-e905-975a7affb7a5', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'venues_enqueue_chunking', NULL),
  ('f3f0b010-c7f7-f527-c551-c6f0d4a4f7ea', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'conversations_embedding_stale', NULL),
  ('f704d727-574a-e111-b013-dfb42bcadaaa', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'conversations_enqueue_chunking', NULL),
  ('f8315bc8-7c76-837b-70bd-17d0bf34cc29', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'emails_enqueue_embedding', NULL),
  ('fbf639bb-d058-b94f-57b5-f20dd0dd5626', '019d4100-4020-73d6-9854-f8d0aaa616d3', 'code_chunks_embedding_stale', NULL);


SET session_replication_role TO DEFAULT;


