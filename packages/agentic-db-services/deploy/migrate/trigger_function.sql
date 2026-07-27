-- Deploy: migrate/trigger_function
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

INSERT INTO metaschema_public.trigger_function (
  id,
  database_id,
  name,
  code
) VALUES
  ('0039d8de-6811-1c64-1a68-5403d2ca078d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'prompts_enqueue_embedding', NULL),
  ('0245b1ea-5a0c-5e83-f58f-449230fda17e', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'activity_logs_embedding_auto_updated_at', NULL),
  ('025e6f3e-f276-511a-4326-fc307b64669c', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'email_threads_embedding_auto_updated_at', NULL),
  ('02cd8029-56f7-578b-9781-93bdee2024a8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'goals_embedding_stale', NULL),
  ('059dfe5c-9539-4a50-a68f-3438638ae2c8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'skills_intent_trigger_embedding_stale', NULL),
  ('08f92185-96a7-5f90-f4ce-a4c421414b9b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'documents_enqueue_chunking', NULL),
  ('0aeea756-540f-488a-bdf3-4eaa775d01d3', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'tasks_enqueue_embedding', NULL),
  ('0ba470a6-cbf2-519d-eaba-0971baf30054', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'documents_embedding_auto_updated_at', NULL),
  ('0d2fe27d-c3fa-edc8-e91e-9e92f59894dc', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'venues_search_tsv_tsv', NULL),
  ('0f98640a-cc52-f588-b4ab-21dd436dc974', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'messages_embedding_auto_updated_at', NULL),
  ('1089e7ff-994f-8864-d7aa-92c5171eb18b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'deals_embedding_stale', NULL),
  ('12b715ac-6ac2-9031-e413-ff15c85c66ca', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'projects_embedding_stale', NULL),
  ('17387f87-d36e-f0d6-7acb-646f1f1f9eb6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'documents_enqueue_embedding', NULL),
  ('17e80743-acc3-de08-d19e-f4ff901822b8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'agents_embedding_auto_updated_at', NULL),
  ('1c545c23-8630-eadc-99a2-65b16f03976d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'autonomy_records_embedding_auto_updated_at', NULL),
  ('213268fa-a6c9-99bc-b581-2c9fc0a45717', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'emails_enqueue_embedding', NULL),
  ('23bac340-68d8-3e0e-2a5c-f24565fd8cee', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'interactions_enqueue_embedding', NULL),
  ('272c7937-8f46-054e-7d4a-1cdfe1d6d62e', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'projects_embedding_auto_updated_at', NULL),
  ('299bd91b-6e5b-aa7c-3006-2cce0733a9fe', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'rules_trigger_concept_embedding_stale', NULL),
  ('2a9492aa-7599-6b17-5766-4ed6cea4a494', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'calendar_events_embedding_stale', NULL),
  ('2be74f5c-6922-ad2b-e372-81c43470155b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'events_embedding_auto_updated_at', NULL),
  ('2db416e4-b4ef-88f7-5bfa-c77c30078316', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'calendar_events_enqueue_embedding', NULL),
  ('2dce3689-12e3-539d-458e-8acf7de32afa', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'expenses_enqueue_embedding', NULL),
  ('2ddd706d-243b-4396-74c9-d4a3bb9ff00f', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'activity_logs_embedding_stale', NULL),
  ('30bb2f04-d0b7-0935-afbd-9b59738d80f9', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'runtime_states_enqueue_embedding', NULL),
  ('324ca00d-0336-bbd6-1f1b-64e0cbca9062', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'runtime_logs_embedding_stale', NULL),
  ('35e5d70f-b408-0bee-8b03-d94a79cd3f8a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'event_links_embedding_auto_updated_at', NULL),
  ('3a6c9799-bb43-6f71-4cb1-b2fb13fcae1b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'places_embedding_auto_updated_at', NULL),
  ('3b37f9b8-c649-ee80-96db-7a7d7f09c5f6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'conversations_embedding_auto_updated_at', NULL),
  ('43f82e45-a4a6-83e5-a147-dbcf0aef36c5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'conversations_embedding_stale', NULL),
  ('488df734-b423-57ae-603d-80ed7a7c9771', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'rules_trigger_concept_embedding_auto_updated_at', NULL),
  ('4bf951dc-e258-63b3-2eb1-13f8b5d393ac', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'agents_enqueue_embedding', NULL),
  ('4d9c7428-8e1b-ffe2-b104-e5bc6b085fb2', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'notes_embedding_stale', NULL),
  ('4e243dab-8b5a-fb53-d6c5-4ab227b2e0a4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'venues_enqueue_embedding', NULL),
  ('4e29fb82-3aee-dfbb-2c55-7d64d4c215ef', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'prompts_embedding_stale', NULL),
  ('4e3b1f5b-53ef-20fa-7f82-d68bcd6aeb2d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'prompts_embedding_auto_updated_at', NULL),
  ('555c4f65-7c47-bbd4-aa8d-50ccb872cf4e', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'goals_embedding_auto_updated_at', NULL),
  ('58d509e9-945e-36ee-bcd7-5eadde7cb70d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'expenses_embedding_auto_updated_at', NULL),
  ('5c831ca5-9679-7956-2059-755d2cc12e54', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'agents_embedding_stale', NULL),
  ('5c9ec8df-99b5-b6e8-8555-78703400ea02', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'runtime_logs_enqueue_embedding', NULL),
  ('650acf33-5dc7-20a9-c741-43330afa8016', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'trips_embedding_stale', NULL),
  ('655abd30-ab4f-6945-400d-995a1364ecb9', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'touchpoints_embedding_auto_updated_at', NULL),
  ('70dcae14-23cb-63aa-aae9-44d506b1fbb7', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'places_enqueue_embedding', NULL),
  ('710cf581-0a99-918a-e012-46e9902373d0', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'contacts_embedding_auto_updated_at', NULL),
  ('76c46fff-254f-4a9f-d580-e32c74ad0e23', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'runtime_states_embedding_stale', NULL),
  ('76fe4073-232c-a4c9-8d39-cea2a21f65d3', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'tool_definitions_enqueue_embedding', NULL),
  ('7aee4f76-9dd0-f9f6-0ed5-d2f646e298de', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'companies_embedding_auto_updated_at', NULL),
  ('7b892ad7-f6a5-24be-7df6-df14be2f4ccb', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'agent_logs_enqueue_embedding', NULL),
  ('7fb58634-6d9a-2ebe-8625-bda7b9e554ba', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'events_search_tsv_tsv', NULL),
  ('8184f96e-5b95-abca-487f-999f816fdd72', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'skills_intent_trigger_embedding_auto_updated_at', NULL),
  ('875a8f44-01e9-f3df-ee87-9c79d81f7943', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'agent_logs_embedding_stale', NULL),
  ('87ec49f9-3d5b-b9ef-f538-b0b0ec0c874f', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'emails_embedding_auto_updated_at', NULL),
  ('88334cc7-95fd-a599-809f-b4da318acecd', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'rules_enqueue_embedding', NULL),
  ('8b650fe1-14f2-9c14-d7f0-f2be065bfaa7', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'rules_embedding_auto_updated_at', NULL),
  ('8b9d9940-f9c5-0f02-9e13-b37f34bcdeb4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'autonomy_records_embedding_stale', NULL),
  ('8beae505-a11c-e93f-89fd-4b95fa777d04', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'contacts_enqueue_chunking', NULL),
  ('8e311b0f-6856-0255-9c15-400e8ffd0b37', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'tool_definitions_embedding_auto_updated_at', NULL),
  ('8fb5ae2d-20ac-b47a-0d69-6f58ab2395f9', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'images_embedding_auto_updated_at', NULL),
  ('8fdec02a-1d74-4c41-dcef-7db4e1551b86', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'deals_enqueue_embedding', NULL),
  ('90e4f1df-661c-4e12-a254-c9de5b0ad6e1', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'conversations_enqueue_embedding', NULL),
  ('90f6d1f1-6312-73ba-b0a6-3f553aae6bb3', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'email_threads_embedding_stale', NULL),
  ('9847427a-fb08-5cdc-bd52-616f84d8582f', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'companies_search_tsv_tsv', NULL),
  ('9a6becdb-f419-6b1d-b3ec-887daff3e8c6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'contacts_embedding_stale', NULL),
  ('9fbf28db-cdc6-da8c-71e6-7860e1edd9a8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'goals_enqueue_embedding', NULL),
  ('a208baed-3b85-7b13-b40d-efe2eed0fa31', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'autonomy_records_enqueue_embedding', NULL),
  ('a348b5a1-0d19-7829-0815-3e3bc781dfe0', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'touchpoints_enqueue_embedding', NULL),
  ('a78a70a8-ca65-2770-5156-380ce44fa600', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'projects_enqueue_embedding', NULL),
  ('a8623a1d-0616-4d04-6014-904c29963ade', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'notes_enqueue_embedding', NULL),
  ('a8ecb9fd-1419-5a5a-0a9b-04893d63306e', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'calendar_events_embedding_auto_updated_at', NULL),
  ('a91116cd-dd27-d95f-21c9-0a4227958c29', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'emails_embedding_stale', NULL),
  ('aa1c1c62-c664-318b-2059-a72dc8cdf963', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'expenses_embedding_stale', NULL),
  ('abf829ae-ea38-7340-964e-69ff559fabf5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'trips_embedding_auto_updated_at', NULL),
  ('ad07eeea-7472-3bc2-10c0-73672f52f8c4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'memories_enqueue_embedding', NULL),
  ('afb618ab-a690-adf2-079e-b7a2bcd84a96', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'venue_links_embedding_auto_updated_at', NULL),
  ('b14dc1f8-7e64-d31c-7889-48e8128bd4fd', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'companies_embedding_stale', NULL),
  ('b2ae169a-88d0-5269-03d0-7d8bc46fec76', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'memories_embedding_auto_updated_at', NULL),
  ('b2c0246c-3bca-98e7-298f-286ac4038826', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'venues_embedding_auto_updated_at', NULL),
  ('b41b2368-1cef-196e-a302-b196adb1ab40', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'documents_embedding_stale', NULL),
  ('b4356794-a380-0650-7002-42a1e17e301a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'interactions_embedding_auto_updated_at', NULL),
  ('b5a02e57-6c3c-e6df-f9d4-d16e1a4ed8fc', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'messages_embedding_stale', NULL),
  ('b5fecaff-5000-b6ff-c67c-29d98e942efa', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'rules_embedding_stale', NULL),
  ('b8c235bd-9522-a740-e579-0f4e8898b852', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'messages_enqueue_embedding', NULL),
  ('b92f227a-5f50-b945-3640-bddf0e0789c5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'skills_embedding_stale', NULL),
  ('bb243b6f-cce8-fd33-551c-16a0df019f9d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'emails_search_tsv_tsv', NULL),
  ('bc10ca78-7a9a-408a-ac20-945ea41dbb17', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'companies_enqueue_embedding', NULL),
  ('bc34e8dc-1690-ff2f-3264-be4284900756', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'contact_links_embedding_auto_updated_at', NULL),
  ('bd91f65c-df8a-82ec-4ec5-75553630969a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'memories_embedding_stale', NULL),
  ('bec28bbe-13c0-3c6d-b56d-d2976ad75316', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'tasks_embedding_auto_updated_at', NULL),
  ('c0ac3ac7-6d47-ced2-bda8-58972ce90d59', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'events_enqueue_embedding', NULL),
  ('c55d04f3-34d7-0f64-300c-c53cee4fbabb', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'tool_definitions_embedding_stale', NULL),
  ('c9dd057b-7115-6279-559c-45d662e87e48', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'notes_embedding_auto_updated_at', NULL),
  ('cbda5c97-fda5-fec1-0197-10fd8df0a0b2', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'tasks_embedding_stale', NULL),
  ('cd448ff5-985f-fd2f-9f70-9b4d8185f5fc', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'skills_embedding_auto_updated_at', NULL),
  ('d457f9bf-0865-3fdb-b872-91d084fa0bbd', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'venues_embedding_stale', NULL),
  ('d58affeb-8402-6aa5-aeff-fb9c28330343', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'email_threads_search_tsv_tsv', NULL),
  ('d9d97435-735c-deae-f6f1-2e1f32e546ab', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'skills_enqueue_embedding', NULL),
  ('dda14813-d7b8-6dea-8fa9-bf088d13e672', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'contacts_enqueue_embedding', NULL),
  ('dda32a7a-0ff9-e105-faa4-318175cef8d8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'interactions_embedding_stale', NULL),
  ('de11f2f9-1006-daad-c455-84f1b7605bdd', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'touchpoints_embedding_stale', NULL),
  ('e609055e-2b34-df64-5630-5f0ca78ca0d6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'agent_logs_embedding_auto_updated_at', NULL),
  ('e62ce8cf-ef08-4ea6-235c-2c60704d5370', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'calendar_events_search_tsv_tsv', NULL),
  ('e95fe8dc-00ca-6017-5fbd-4b71ef37ce30', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'deals_embedding_auto_updated_at', NULL),
  ('ee013319-5b1a-7a6e-687c-f043263fe067', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'activity_logs_enqueue_embedding', NULL),
  ('ee61c4bb-5e55-2138-b7cb-0367a9ef20e4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'company_links_embedding_auto_updated_at', NULL),
  ('f10275b2-1acb-26dc-cfbf-3033ba4ae5a9', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'events_embedding_stale', NULL),
  ('f1c685db-bfdd-a336-ac85-ac81346e202b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'trips_enqueue_embedding', NULL),
  ('f3b2656d-0457-6709-895e-9d343e225bfe', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'runtime_states_embedding_auto_updated_at', NULL),
  ('f47e11ba-0b46-6c9a-8c00-27a3ccfb4e8a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'email_threads_enqueue_embedding', NULL),
  ('f7c43278-d5ee-067e-bcd1-f7268ba79f66', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'notes_enqueue_chunking', NULL),
  ('f84f09a2-74be-039c-146d-f7986376bac5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'runtime_logs_embedding_auto_updated_at', NULL),
  ('f8ef5f93-cebb-0982-f1c6-f07a71312fbe', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'contacts_search_tsv_tsv', NULL),
  ('fdbb61a9-c626-6d35-e252-899f0498ea57', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'places_embedding_stale', NULL),
  ('fe86ac2c-774c-712b-bab2-c87b724c07b6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'contacts_chunks_search_tsv', NULL);


SET session_replication_role TO DEFAULT;


