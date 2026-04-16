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
  ('01cd7a01-a7fd-aaf1-95f3-59993d162e44', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '9ed97187-001d-866d-9e07-cb1d57e42b00', 'runtime_configs_pkey', 'p', '{28c7856e-a721-642d-bbfb-2c8217675581}'),
  ('05813bae-d6cb-7f88-3066-337c771943f1', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '834fbe29-bbfb-35e1-3849-0a50027f430f', 'runtime_metrics_pkey', 'p', '{7187ce1b-b8f6-7386-fabe-196ea6a12fe1}'),
  ('066d87de-dde7-6887-361b-014ba878ffe2', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'e1a141f4-ff0f-68b3-527f-068ee095ff68', 'activity_logs_pkey', 'p', '{4f41449e-261e-820f-d860-30be3e03fe9f}'),
  ('068574a0-6068-8fc5-81aa-e3b25eb5079f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '8c792de0-30ea-0feb-a2b9-fedc20884a99', 'memories_pkey', 'p', '{de0f6047-4670-848b-d3de-b2555a36afb6}'),
  ('0cd12c9a-cd6e-b080-74ff-81c6da36a73f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'd83d91fb-044a-76d6-8f33-82491609be9a', 'runtime_events_pkey', 'p', '{82b57285-f149-5275-feaf-476e8298742d}'),
  ('168ab8a4-2f64-1679-ac75-702b944f6e90', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'ddee539e-acd1-d964-d5ca-6690d4b3fc0e', 'company_links_pkey', 'p', '{396281f2-5246-a6fe-29e8-a85fb3ecf2cb}'),
  ('2566585e-cead-06e6-6efb-5592212db7fe', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '669cba1e-ae26-5a51-d1cb-5e11e2f8d8fe', 'event_links_pkey', 'p', '{420a0d2a-b61d-234f-a5df-f96b48f1d3d7}'),
  ('27c5086a-479b-e67e-4893-291cd179681a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'cd3a62b0-a5c5-6d3d-8a57-394c3c6e6803', 'raw_contacts_pkey', 'p', '{20d10317-47f5-eaee-2a46-f3593b3cc3cc}'),
  ('2adc9f7d-9245-11a3-26b8-854bec17786a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '3fa68648-c145-8422-fb2c-56ee9909a6c3', 'contact_phones_pkey', 'p', '{5abb1279-fa51-148b-cd8c-19d52226bdb9}'),
  ('33cb3d2b-99bb-1787-60a1-e6c75e18d5ca', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'f46a1997-9de2-c5e9-197f-b76ae9b6264d', 'calendar_attendees_pkey', 'p', '{31a7cbe5-881e-5ae0-357b-d84263b46601}'),
  ('380b373e-2b0b-c765-ac70-cbd01fa7a509', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '7e5e5eb4-11ab-fdb3-b4a8-50729dbbabcf', 'raw_contact_emails_pkey', 'p', '{06413c2e-f715-c89e-e83d-54254311b9bd}'),
  ('3c5d4122-79a7-9a16-e1d9-00db6579688c', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '6159c5c0-dd17-4617-789c-5c785db8c11c', 'contact_emails_pkey', 'p', '{cbfcf79d-64e8-efa8-7877-cb3afaf08aff}'),
  ('49e046d8-285a-650d-4a93-896e22cf53fe', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '003946ba-14da-63bb-ac2a-b6bbe15292a9', 'provider_sync_states_pkey', 'p', '{17f290da-b070-8fc6-ba6d-729a5e4d5b77}'),
  ('546994a9-feb7-f946-bfbd-e2bd6a98a8f8', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'b9bcb903-553e-365f-f54e-e485d623609e', 'deals_pkey', 'p', '{32f04e7c-aed4-2b65-76ea-dcd601a3bc97}'),
  ('55ec1a17-5b7c-dd87-193c-1f167076ca91', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '9c66b5ae-ab54-68dc-e5aa-1867276e574b', 'calendar_events_pkey', 'p', '{be2eacc3-8620-ae29-d6a4-1c73c9742f26}'),
  ('5ae54413-f128-3f5b-1b4a-bf76a0da731b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '209cf0c6-3d2f-d628-d7ab-4ad16c09aa9d', 'prompts_pkey', 'p', '{edfb98a1-f349-4104-3a1c-0f829db7d306}'),
  ('5eec4965-5b8a-86cb-b941-a28535200605', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '8885bab8-9292-9bff-4a2f-346162f82591', 'goals_pkey', 'p', '{56a9c82e-ff84-5e62-dfb3-f5cf857cb13b}'),
  ('61ad30ed-f870-f342-2344-c2ba84c90555', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '41c8e522-f298-9ece-201b-c88c298755d8', 'raw_contact_phones_pkey', 'p', '{b689c1dd-fc4c-40cd-40e5-1144fc3c9d3f}'),
  ('6386e738-2a4a-8574-02a1-7f26b05375a9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'b912913f-4e69-557a-9dfb-650fafdb9b61', 'emails_pkey', 'p', '{9a421302-2635-3c88-2b74-08f133d44c08}'),
  ('644df4aa-8267-3ffb-0660-1986d5a1f3df', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '53c4f4a6-dba5-7054-9750-3f8281fd4067', 'images_pkey', 'p', '{6dccab68-de54-90b0-0eb6-95fa091fe392}'),
  ('7bdefbc2-24a1-7c0b-d04b-4a5ce3b47d13', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'fab16251-7fd1-220b-d08a-7192eaaf3d16', 'touchpoints_pkey', 'p', '{9f7c1963-f76a-12ce-a61f-51f2645242bf}'),
  ('8552eb59-1fd2-5a31-5789-58f154e8c31a', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '11870742-1ace-54f2-5517-d3e86beec1b4', 'messages_pkey', 'p', '{783c3e30-d264-4198-71a8-6d148e765ce3}'),
  ('884e7026-d0b8-b750-0007-383655803a90', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '808445ee-f423-48d5-4544-a9e40bdb7cf9', 'contact_addresses_pkey', 'p', '{dc1291ef-c648-f652-0cb7-2102fc562da2}'),
  ('885b9c64-5cd0-b67c-308e-98c6118d0d79', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'ecb7c93a-1695-cfd4-0c45-c0e0d769f474', 'autonomy_records_pkey', 'p', '{b43a0735-f316-5f52-690c-062233e8a361}'),
  ('88744ee1-ad39-ec38-b255-f52c184baad0', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'c6028383-072c-367a-d6ba-34a8fc7d9151', 'conversations_pkey', 'p', '{7ec30a2e-5377-2cb6-696d-acbeb63ea38e}'),
  ('8df41061-fca4-7fd8-cdba-5e9cac43238f', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '9c9d0c7c-993f-35ed-f928-b914f78e2729', 'events_pkey', 'p', '{b6f18ac2-a1fa-809d-77ff-5c546df90e8d}'),
  ('903b64a8-0e08-e57b-14d4-d8f8f33fc5a3', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '0f4941f8-07b4-e1d2-5c9a-f58d374f3cdd', 'runtime_schedules_pkey', 'p', '{3d555aa1-d1d7-f79e-499c-664a8e73651e}'),
  ('929c8fdd-6ab0-8912-34bb-86ae59424e26', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '019f102b-7cf3-bb75-8d43-3d06759022c7', 'rules_pkey', 'p', '{0993c25c-0f45-6384-6c43-3d39f4ba2671}'),
  ('9797b23f-21d4-a79c-25b2-8546559c47cb', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '34be9bbb-2800-9c29-f60e-ef9e6f4075b0', 'skills_pkey', 'p', '{5205c72c-e908-8a1b-80ae-dc937bcabfb3}'),
  ('97d8a5ae-0fad-cca7-47cf-c20ece7601c4', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '17837375-7d09-2453-7e4e-7307f29deb76', 'habits_pkey', 'p', '{b38f5779-7e3d-53a3-fa1a-2a6eaea3d44a}'),
  ('9ae678a6-bce7-21d9-41b5-57c9a809e860', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '40691438-2adc-5708-48d6-d20b83ff73b9', 'venue_links_pkey', 'p', '{b2f67223-80d6-8e13-56c8-ab5ad3e94a76}'),
  ('9b014871-62e1-55ad-2297-ee58eaf2e3c8', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '4ffeda5e-73b4-3901-e431-9b5a94276f9c', 'contact_links_pkey', 'p', '{84a245d6-155c-2547-b643-f9b82091e25e}'),
  ('9f688b67-e60e-b8e7-0f72-8c4d0c4d15bb', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '63def6a7-b3ae-92d6-699d-76e7f548cd47', 'agents_pkey', 'p', '{2cfa57e2-7b95-e639-b34a-d2effc2a31c9}'),
  ('a2b1e00f-d313-877c-3301-6e040d0707ac', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '5cc21cc1-c32b-6239-a856-40d20b1a1dab', 'calendars_pkey', 'p', '{6f21618b-278a-ac1b-3e96-4ba5962139c8}'),
  ('aa81e833-6b22-7ece-3714-e0b90299b7fb', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '23837768-c868-f377-5497-d0054d8bba62', 'runtime_states_pkey', 'p', '{81f90fda-9b48-d69d-8cdc-04f5ae94e842}'),
  ('aad1e1f2-5b58-fc82-b82d-8ad47041e24b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '9968cec6-466e-885f-e5f1-bfb97e083049', 'notes_chunks_pkey', 'p', '{69812278-543e-735f-8a4a-2c3580eac26e}'),
  ('ab6bf78b-016b-170c-4bfe-0bf5f27b9153', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'b190c12f-afaa-a268-d8de-1cacd55a0c6e', 'runtime_artifacts_pkey', 'p', '{2aa759f0-1651-5349-1cc6-a5e8e60f7903}'),
  ('ac372d00-ca1c-5450-bb8e-c0fe7905a187', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'f3ca48e8-eb61-961f-7a77-fcc327a21a3d', 'runtime_logs_pkey', 'p', '{2edc2684-ba17-dddc-27bc-0ca8a8ff4a22}'),
  ('ac3f36d8-fadb-30ba-42aa-abcf9674b0c5', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'f11674d5-1a54-6b33-b856-879d68be1d13', 'contacts_chunks_pkey', 'p', '{684378a5-5a7a-d180-b4bc-5b73f999f4a0}'),
  ('ae0b988b-24ed-bd4f-36b4-c2239d7301dd', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'ea8b22ae-a96f-ba32-87f6-54834d04d68f', 'tasks_pkey', 'p', '{832dd739-02cd-1177-f8eb-b00eed7f5d87}'),
  ('b0f9e8a4-ecb9-305b-9279-c55b5e2ba147', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'b8c1ebf8-8476-da74-b798-11b0037ca098', 'notes_pkey', 'p', '{03ac5232-460e-d41b-cdc1-44ebda3f7887}'),
  ('bbfc1f9c-6ad8-68be-8e88-0440fb9a4870', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'cb7a9c13-ccfd-64c2-6b11-22286fe87e18', 'raw_contact_urls_pkey', 'p', '{a268bf6b-5d06-810d-9823-6ba7c37a5656}'),
  ('c290d558-8604-bf81-ab84-a2f3d536ad31', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '340aa907-a680-5e76-c5a9-9ecae2eddd2c', 'tags_pkey', 'p', '{6b76d819-a61b-64c0-2aff-5af05743bc01}'),
  ('c73b2415-8dfc-3c55-07cb-6319d57f9aa9', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '6b6411d5-7067-4179-a977-402575973cbc', 'interactions_pkey', 'p', '{0b70add7-61a1-1507-266c-0b9ca3d5e0f9}'),
  ('cf5b1277-7ad8-68e3-5cee-292a726edcc3', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '12a6c966-2c8f-53de-c122-59bc502a01e8', 'agent_logs_pkey', 'p', '{0ad78362-de3a-c16b-9209-66e5325c6135}'),
  ('d7369e82-2ae4-2e8e-fec6-8f75f504287b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'abeb2ed5-6547-9497-5c1a-2ddbc85f72c2', 'venues_pkey', 'p', '{d3976403-e732-aba1-c480-b12bf2cfce1e}'),
  ('d8d98b3b-c0e5-3387-7153-8a7fe76d0877', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'feb1aba1-0546-0c39-bdc3-1823ecaf4f50', 'companies_pkey', 'p', '{63b5ff0c-5d24-e470-fccb-49bd8677a2e2}'),
  ('d905173b-493a-ab5b-7eb9-8532ff086e5e', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'cf434a49-d4ae-b4ab-e5d9-8382f3ccc977', 'email_threads_pkey', 'p', '{3a1c8592-6dd1-fdb9-2c06-f677934c9bd0}'),
  ('dcdabab3-fe01-2b78-8109-4ad3f714da75', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'e0e009b8-78e4-7e32-94ee-19aae5b9f68d', 'trips_pkey', 'p', '{54a28a8e-b76e-ad7b-c27e-51c11fb3ed9e}'),
  ('e3af8368-f2b9-4ec8-b80e-4d4fc60eceb7', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'c2947c85-4ad4-4e7d-52fb-d83a6086f721', 'places_pkey', 'p', '{80dadaa4-e33c-188f-2010-d7a93dc5afb2}'),
  ('e5f051e9-0d9a-5598-81b5-94e8c3ec77fc', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '89ae1452-3bb4-4bdb-4eef-2a8bf235cf27', 'contacts_pkey', 'p', '{e09a934c-8b83-c046-9b10-5afb74f19039}'),
  ('f0a5b66a-fea6-809c-a21b-fa92b8bd6046', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '0adab6c7-5acb-ca12-c30c-c1f1b6f0d9b6', 'tool_definitions_pkey', 'p', '{e61ff482-e791-31ed-50a5-e6f504957dd4}'),
  ('f689e532-28f7-e700-b807-1182d1f0a4e8', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'b844f217-4202-63ab-a36d-b33728d0ff6e', 'tool_executions_pkey', 'p', '{3f4ed221-b18d-3021-e1ff-e2168268446e}'),
  ('f74c0454-c0da-f9fa-10e4-1e790491e50b', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'ebb7e1a3-f290-f4c1-9501-7e34cde176d3', 'expenses_pkey', 'p', '{11a7d9c2-eb5d-13bb-fd09-79c41cfec98f}'),
  ('f97aa681-c2e0-89c1-23bd-eba7b33f30dd', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', 'a0551cc9-affc-9b39-2567-7b1132b1b44f', 'email_attachments_pkey', 'p', '{bdb55898-6675-43e5-1c79-911495bb76df}'),
  ('ffd2edbc-f6c2-67be-0c39-c21c5d30da76', '019d9485-ae8c-71c9-a962-9a8ebcbe2199', '550c7957-cce0-523b-302d-1a24405e659b', 'projects_pkey', 'p', '{a04d3084-4850-789c-c5cd-1d9de6b68ce2}');


SET session_replication_role TO DEFAULT;


