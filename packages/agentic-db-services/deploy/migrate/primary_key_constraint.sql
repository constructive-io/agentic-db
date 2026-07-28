-- Deploy: migrate/primary_key_constraint
-- made with <3 @ constructive.io

-- requires: migrate/index


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
  field_ids,
  without_overlaps,
  is_deferrable,
  initially_deferred,
  smart_tags,
  category,
  tags
) VALUES
  ('04e5a3bb-b140-bdf9-5126-a6d807673c68', '019fa679-9064-7be8-b12a-f974608356ce', 'f6b5241c-d5ac-c1d5-ba5f-7f6c86f9eafc', 'tasks_pkey', 'p', '{55d3211a-3d83-b295-1f0b-7c84d17500a7}', false, false, false, NULL, 'app', '{}'),
  ('0737c3ba-71ef-2f63-0bc7-88dcb29511a3', '019fa679-9064-7be8-b12a-f974608356ce', '6b5118a1-b1ff-6c8b-e3cd-deef28708848', 'tool_definitions_pkey', 'p', '{821409cb-4e57-e4ae-6e7b-ae65fc4b7034}', false, false, false, NULL, 'app', '{}'),
  ('0b2a1e51-345b-3fb6-48e9-98a74e771bf3', '019fa679-9064-7be8-b12a-f974608356ce', '586ba0f6-d0c6-826a-e684-84b89a1d58cb', 'documents_pkey', 'p', '{3fbeddbd-17a2-e239-e707-028f1cb813be}', false, false, false, NULL, 'app', '{}'),
  ('0b76c21c-b3e3-ac83-040d-e1beda0d7020', '019fa679-9064-7be8-b12a-f974608356ce', '0639cf97-405e-3cc2-95b8-4b179448e2e0', 'raw_messages_pkey', 'p', '{8e3bf695-56d9-696d-a549-c2494cb40880}', false, false, false, NULL, 'app', '{}'),
  ('10dedee6-231c-260a-fc3e-352ac13d98a2', '019fa679-9064-7be8-b12a-f974608356ce', '84c36411-85a3-86a1-db09-4ba734a32294', 'runtime_artifacts_pkey', 'p', '{e06781bc-8b84-7705-0250-404f07fbf4c7}', false, false, false, NULL, 'app', '{}'),
  ('17e20c3d-7435-d4a1-d9d6-a5bb2362bc44', '019fa679-9064-7be8-b12a-f974608356ce', '8f64d3ea-5b84-1795-5ad5-dabdbd6b6bf2', 'agent_logs_pkey', 'p', '{2ad87778-5274-05ad-a00a-8693f9511aac}', false, false, false, NULL, 'app', '{}'),
  ('235be1d9-4297-9eba-c1d2-728f0f3e2b65', '019fa679-9064-7be8-b12a-f974608356ce', 'da26ffe1-1b89-3493-d9bf-7edd46a867c4', 'companies_pkey', 'p', '{f15c20ef-62d0-ba89-16f0-6fb3060d5de1}', false, false, false, NULL, 'app', '{}'),
  ('29429585-16a7-dc9a-4171-4039b5f90f43', '019fa679-9064-7be8-b12a-f974608356ce', 'ba3b61ac-3639-b010-d6a7-c54aaa72d7e9', 'touchpoints_pkey', 'p', '{d59293b1-e70f-5a44-2897-eeae79d975b3}', false, false, false, NULL, 'app', '{}'),
  ('2a2bb82f-6b3e-9d93-6654-f29a9867e30c', '019fa679-9064-7be8-b12a-f974608356ce', '436a727e-b219-b1e9-8ef1-f94134b0c57f', 'places_pkey', 'p', '{8803d91a-fb4b-aee6-036c-fe46ecbaadb0}', false, false, false, NULL, 'app', '{}'),
  ('2b1148d9-8df2-bd13-5d15-e784762e5872', '019fa679-9064-7be8-b12a-f974608356ce', '8a9a840b-10a5-ee10-4627-8b372bea2e28', 'contacts_pkey', 'p', '{f33a3fdd-ed14-8f14-eda7-6179225a3b48}', false, false, false, NULL, 'app', '{}'),
  ('2f306aff-d0e5-7865-760e-a52cdcec8fc2', '019fa679-9064-7be8-b12a-f974608356ce', '4773a126-6464-2b8f-2e1b-2bcae29b209d', 'runtime_states_pkey', 'p', '{d6677e3d-f28d-61fc-2af5-d3b46e07cf97}', false, false, false, NULL, 'app', '{}'),
  ('31224e5f-e967-c88f-0570-fd30fd79a233', '019fa679-9064-7be8-b12a-f974608356ce', '9bf32fa9-e68a-4ede-91b2-a4284f6f1bd6', 'raw_contact_urls_pkey', 'p', '{6001822e-2d95-49bf-6e75-21adb9ab3ab2}', false, false, false, NULL, 'app', '{}'),
  ('31bf372c-cfe6-a726-08e2-92f480eb079a', '019fa679-9064-7be8-b12a-f974608356ce', '667dc93e-2365-6646-c4b7-b7589e89c6f0', 'calendar_attendees_pkey', 'p', '{90c6dd2b-bc3e-c0b8-ac63-cc36ad676e25}', false, false, false, NULL, 'app', '{}'),
  ('3793f616-efa9-4c1b-01ed-343ca21fab25', '019fa679-9064-7be8-b12a-f974608356ce', 'eca2cc5e-d4cf-ef11-dfef-ee03e3d5461a', 'contact_phones_pkey', 'p', '{cc437bb3-1bb7-ca4a-4d12-d50bc00bad81}', false, false, false, NULL, 'app', '{}'),
  ('3ca03f31-3c6c-7d5a-8906-b2bc5bb785fc', '019fa679-9064-7be8-b12a-f974608356ce', 'e63a58dc-e4eb-b47a-6397-b5b85cdd064f', 'prompts_pkey', 'p', '{4f2c95dd-3707-6399-54c8-7779d502ed30}', false, false, false, NULL, 'app', '{}'),
  ('3f58a068-fece-6dee-59a1-0e2256df2b28', '019fa679-9064-7be8-b12a-f974608356ce', '30255e42-1f7e-1293-6dee-f70aca7feb42', 'agents_pkey', 'p', '{100733b7-d694-5985-c8bc-049051212307}', false, false, false, NULL, 'app', '{}'),
  ('42e0566c-2ea0-e77b-62da-ffbc283746b6', '019fa679-9064-7be8-b12a-f974608356ce', 'aaa8e391-4889-6e50-73e0-14abb4af82e6', 'rules_pkey', 'p', '{1a1bb13d-a865-d066-18af-03a606e74154}', false, false, false, NULL, 'app', '{}'),
  ('49dd3164-5633-2049-2419-88dda030b8df', '019fa679-9064-7be8-b12a-f974608356ce', '681e78dd-266c-1a62-7301-53216dd38bcb', 'venues_pkey', 'p', '{c4df6f0d-cb2f-61ea-b67d-31d398aeaa90}', false, false, false, NULL, 'app', '{}'),
  ('5e792e5d-b881-6e52-41aa-b7ed13ada5c3', '019fa679-9064-7be8-b12a-f974608356ce', 'cbbd19de-8997-7c13-921e-4ae6107ab2a6', 'raw_message_attachments_pkey', 'p', '{e22c1d0e-c786-1925-a8e2-f2e786370912}', false, false, false, NULL, 'app', '{}'),
  ('5ece1a1b-35ee-691c-5661-6f7df7a0d2dc', '019fa679-9064-7be8-b12a-f974608356ce', '4d49c06f-d74f-0818-f2d6-fc5600175d4b', 'calendars_pkey', 'p', '{bdee9be5-80b3-6095-5726-436055f643ce}', false, false, false, NULL, 'app', '{}'),
  ('6083f63f-15c6-7a02-59e5-830cba8379af', '019fa679-9064-7be8-b12a-f974608356ce', '66d9a296-6091-ba52-e6d7-37501fe59588', 'expenses_pkey', 'p', '{f7616c82-ab57-3a92-0203-5fd6716acf42}', false, false, false, NULL, 'app', '{}'),
  ('65b64bb6-c7ab-f998-8c6c-139902ad3b86', '019fa679-9064-7be8-b12a-f974608356ce', '6a9bffde-8633-681d-4fdd-626c364f9464', 'raw_contacts_pkey', 'p', '{ce7b1706-a3dd-5697-80e7-5ea86185b30f}', false, false, false, NULL, 'app', '{}'),
  ('6992bfd9-47cd-8ec5-47d4-3c5b165611eb', '019fa679-9064-7be8-b12a-f974608356ce', '31caa3ae-4049-e8e1-2e68-4520742e2960', 'skills_pkey', 'p', '{58ce9bc0-f47c-559e-f5ad-e7d53e247447}', false, false, false, NULL, 'app', '{}'),
  ('6aeb7fcf-e50d-7c49-454d-f2d3a95fedb6', '019fa679-9064-7be8-b12a-f974608356ce', '5ce09675-4b78-e50a-6418-a79b55062f30', 'conversations_pkey', 'p', '{c7a78e2f-f33f-b327-5031-0177384a54bf}', false, false, false, NULL, 'app', '{}'),
  ('767ddf37-f4dd-2b80-50e2-28db33ac87fe', '019fa679-9064-7be8-b12a-f974608356ce', '76c9520c-aabe-d9a2-baa0-cfa0c5ebf49e', 'documents_chunks_pkey', 'p', '{1d4ab9fe-9d07-8114-f078-36cbe45b3f4d}', false, false, false, NULL, 'app', '{}'),
  ('7903ad9f-7987-e983-c05c-4ec4a23dcf6b', '019fa679-9064-7be8-b12a-f974608356ce', '6a91c644-677c-dfd8-481c-ddda687f0610', 'trips_pkey', 'p', '{a4aa881b-9060-14e3-d444-fed5ab969b8c}', false, false, false, NULL, 'app', '{}'),
  ('8088fc10-d257-a142-b652-fa9ec434f094', '019fa679-9064-7be8-b12a-f974608356ce', '05fabb64-c1e4-494b-f916-46613aa9eb3e', 'contacts_chunks_pkey', 'p', '{3b24eb84-f54c-d873-798d-ca9489009c4d}', false, false, false, NULL, 'app', '{}'),
  ('83a2636e-976f-c229-0490-f9b30cd59d81', '019fa679-9064-7be8-b12a-f974608356ce', '682fc22b-1922-4990-6dc1-8992c84d4963', 'events_pkey', 'p', '{4938b4df-5959-90d1-e181-fe23fa09240b}', false, false, false, NULL, 'app', '{}'),
  ('852f5c75-9946-ec42-c5f1-1f91c766fac7', '019fa679-9064-7be8-b12a-f974608356ce', '974ecd99-b65c-4156-2941-373b668d3618', 'contact_links_pkey', 'p', '{3155dea7-7c2d-5b2b-6d21-e824bfa0900e}', false, false, false, NULL, 'app', '{}'),
  ('8aadbbb9-d307-462e-2c0c-577871ce0ccd', '019fa679-9064-7be8-b12a-f974608356ce', '09ffcced-76d8-0bc4-a2f6-e0f621cafa54', 'runtime_metrics_pkey', 'p', '{2006a4fa-2817-bec7-d49f-5c36c9c3ef8a}', false, false, false, NULL, 'app', '{}'),
  ('9bc3b85c-a4ab-dca7-5a49-cd83beb62910', '019fa679-9064-7be8-b12a-f974608356ce', 'd1f584e9-372a-a1fd-b7a3-170a6207cb44', 'emails_pkey', 'p', '{1157c70a-d2ff-7054-cf1c-a8acfc9f2d88}', false, false, false, NULL, 'app', '{}'),
  ('a0e95502-561a-5f00-c142-efbe28db4aa1', '019fa679-9064-7be8-b12a-f974608356ce', 'e83bb220-1630-15e4-1516-160d65b7c518', 'email_attachments_pkey', 'p', '{bfc9ef0e-1dcb-9107-f3c0-f7454079a668}', false, false, false, NULL, 'app', '{}'),
  ('a2f1bc98-6880-a37d-cfd1-8bb5bcaf95b5', '019fa679-9064-7be8-b12a-f974608356ce', '4353751f-9c57-a006-8412-afbe8d673178', 'activity_logs_pkey', 'p', '{d008f6bf-2992-b50f-1030-529b821c8589}', false, false, false, NULL, 'app', '{}'),
  ('a68de6e1-5df2-a6eb-a650-048379d27969', '019fa679-9064-7be8-b12a-f974608356ce', '48108ef5-536f-6b05-9b13-0f11428a9d65', 'tags_pkey', 'p', '{4396a203-f345-86bc-e508-6a16e382bfe9}', false, false, false, NULL, 'app', '{}'),
  ('ac93882f-d2b1-6bc9-bf79-175ce52bf8c2', '019fa679-9064-7be8-b12a-f974608356ce', '54b82593-6eff-14ac-e0c9-24aa30bfaec1', 'autonomy_records_pkey', 'p', '{98901855-505a-cee2-6dc4-9d3a97f9689d}', false, false, false, NULL, 'app', '{}'),
  ('af47930b-a83a-33c2-0bc8-02c6662bd22f', '019fa679-9064-7be8-b12a-f974608356ce', '74b70c74-94ad-ebce-3b90-77799064954c', 'notes_pkey', 'p', '{04127b3a-8b78-2f94-392a-e6b0b9cc7616}', false, false, false, NULL, 'app', '{}'),
  ('b0e80be1-7d26-eba1-e24b-521833fb47c0', '019fa679-9064-7be8-b12a-f974608356ce', 'cd1af36e-8999-29a7-d419-2f8d78e7d64f', 'interactions_pkey', 'p', '{573abe8d-73d2-9911-9f3f-4e4a0b8ab316}', false, false, false, NULL, 'app', '{}'),
  ('b341e085-7347-fb38-3231-a42a84decdcd', '019fa679-9064-7be8-b12a-f974608356ce', '9f7e4db4-d59c-d819-f82f-91679bd3f9ef', 'venue_links_pkey', 'p', '{8fec18ca-59ea-f619-bfce-1c7cd968aaab}', false, false, false, NULL, 'app', '{}'),
  ('b767cc72-efa9-7ff5-5af4-9e44baf2d8d5', '019fa679-9064-7be8-b12a-f974608356ce', 'd99c5a94-6bae-f3ef-da71-65b356a1d856', 'contact_emails_pkey', 'p', '{657217ef-2666-51f2-92d6-d866b1f7eaae}', false, false, false, NULL, 'app', '{}'),
  ('b8e0847a-ade1-38c9-6977-e1510030a026', '019fa679-9064-7be8-b12a-f974608356ce', 'e42c8dae-fb4e-464a-355d-bc63c53beb5d', 'runtime_configs_pkey', 'p', '{97ccf141-d70b-26e1-22e7-b1dc18894fc5}', false, false, false, NULL, 'app', '{}'),
  ('c1c61fbd-ae18-2213-47f9-b109e74ba0d4', '019fa679-9064-7be8-b12a-f974608356ce', 'c1d5d295-26ce-e77d-44ee-4efa20758b5f', 'email_threads_pkey', 'p', '{21c58d3f-bd1c-a609-0d1b-fe74f1064972}', false, false, false, NULL, 'app', '{}'),
  ('c80e3692-bcaf-fe10-3401-d72dc6c4b80b', '019fa679-9064-7be8-b12a-f974608356ce', '34a76f23-350a-a3a3-3fa9-4b4fee255034', 'provider_sync_states_pkey', 'p', '{f70afd14-b43f-6e22-e9e2-a7d783a9f3a7}', false, false, false, NULL, 'app', '{}'),
  ('c92a0e5b-ade0-7a2f-f6b7-34cc216adae5', '019fa679-9064-7be8-b12a-f974608356ce', '8944e376-7663-0723-83e6-57aefcd7e74b', 'event_links_pkey', 'p', '{f6055f5b-1549-5b04-6b97-b5693f66a7c5}', false, false, false, NULL, 'app', '{}'),
  ('caf59893-953d-7231-d8ae-8bfc13fba2f4', '019fa679-9064-7be8-b12a-f974608356ce', '2d0b9842-d2ed-6b44-84d2-904db643cabd', 'images_pkey', 'p', '{9603fb9a-5d6c-e3fc-33dd-978902ec86d7}', false, false, false, NULL, 'app', '{}'),
  ('ceb5a116-90e1-820e-2b49-736937023ccf', '019fa679-9064-7be8-b12a-f974608356ce', '3b95812c-0c31-78c3-f1d0-c4188a054157', 'notes_chunks_pkey', 'p', '{eddd1d3a-1078-3d32-83ce-91d0c1e3350b}', false, false, false, NULL, 'app', '{}'),
  ('d0e4faee-4c2d-f17a-4c36-7da527233086', '019fa679-9064-7be8-b12a-f974608356ce', '26bbe4e4-345c-c783-2572-48b65a799066', 'memories_pkey', 'p', '{e8732a5e-b1fc-083e-ae28-87836cbc09ea}', false, false, false, NULL, 'app', '{}'),
  ('d1cfb174-012e-4d7a-578a-aae7860b9e4e', '019fa679-9064-7be8-b12a-f974608356ce', '8977c3cf-36f7-e2e1-2481-3401b0375622', 'habits_pkey', 'p', '{d149792c-3c27-eee7-c53a-ccd4d708fbf6}', false, false, false, NULL, 'app', '{}'),
  ('d5690a11-73e8-e4be-3f33-43f7ecd30043', '019fa679-9064-7be8-b12a-f974608356ce', '9a740fdf-e4db-697d-324f-5fb5b1e1d30a', 'raw_contact_phones_pkey', 'p', '{e67ff001-79a8-ca91-9bc2-8b385ac52e27}', false, false, false, NULL, 'app', '{}'),
  ('d9347549-1b6b-aece-fadf-5724443e893f', '019fa679-9064-7be8-b12a-f974608356ce', 'bba78443-f49e-5101-39a4-b7cfd043bea7', 'calendar_events_pkey', 'p', '{81f70070-b958-781d-9916-c6a1f28e3563}', false, false, false, NULL, 'app', '{}'),
  ('db8abe92-6263-f324-73b3-a1c0f3f9248b', '019fa679-9064-7be8-b12a-f974608356ce', '8449e133-6bb4-6588-0557-d08e42baef94', 'goals_pkey', 'p', '{fce22c86-7f03-b310-56fd-4bff4d0eed36}', false, false, false, NULL, 'app', '{}'),
  ('e3b6ac57-4440-8b28-cf01-4a0b04c711df', '019fa679-9064-7be8-b12a-f974608356ce', 'd2f9075c-b71c-c516-d454-515d109ec932', 'messages_pkey', 'p', '{b54194e6-f237-8e50-3976-5bd6ce279191}', false, false, false, NULL, 'app', '{}'),
  ('e797c440-e36a-2682-13b6-d3eae11af589', '019fa679-9064-7be8-b12a-f974608356ce', 'a98a58e6-12c9-25a6-2501-9c793ec581e6', 'runtime_schedules_pkey', 'p', '{2d0b8464-b890-e07b-4b24-43473583dffa}', false, false, false, NULL, 'app', '{}'),
  ('e8bacdd1-079e-9d77-9954-cf97c09abff8', '019fa679-9064-7be8-b12a-f974608356ce', '97d329c1-ce72-5fd9-1828-f8d0b3290b57', 'runtime_events_pkey', 'p', '{d46a96ea-3a38-02db-15dc-19c471664efd}', false, false, false, NULL, 'app', '{}'),
  ('eecffa19-43b6-ea86-0bdc-58c0869b598c', '019fa679-9064-7be8-b12a-f974608356ce', 'd15b4649-3324-0dcf-65c5-480a9a46d792', 'contact_addresses_pkey', 'p', '{91fd6d5e-8331-bedc-a89b-6f05d36d4b62}', false, false, false, NULL, 'app', '{}'),
  ('f2546169-fb9c-d23c-14f6-4cbb8da4a4c7', '019fa679-9064-7be8-b12a-f974608356ce', 'c3634fd2-88e6-6bb0-75cf-d1eddab287ab', 'tool_executions_pkey', 'p', '{379871da-1ddf-45f0-cd42-4f0fcc325d64}', false, false, false, NULL, 'app', '{}'),
  ('f40f7899-899e-835d-0611-f98d83a228c9', '019fa679-9064-7be8-b12a-f974608356ce', 'eca78133-9580-daaa-616a-1378a7156637', 'runtime_logs_pkey', 'p', '{c69ff5f4-8e7b-f0fb-0d3a-b1cfcf72c7b3}', false, false, false, NULL, 'app', '{}'),
  ('f44dfe65-7a32-10d0-df0e-b3c6082dd38f', '019fa679-9064-7be8-b12a-f974608356ce', '558c58ed-4337-e0b4-8af0-f0ec317c8039', 'raw_contact_emails_pkey', 'p', '{f042fb51-a9e3-d7e6-0b87-8069c623d0c9}', false, false, false, NULL, 'app', '{}'),
  ('f6a733bf-0f03-e10e-244e-16113f8fa948', '019fa679-9064-7be8-b12a-f974608356ce', '70343075-c6a2-8169-1bfe-8a08663ea94d', 'deals_pkey', 'p', '{00bc3cb6-c1cf-ac20-42b7-92910efe22e8}', false, false, false, NULL, 'app', '{}'),
  ('fbaa8f21-a55b-4b3c-a3f4-2b90118057ea', '019fa679-9064-7be8-b12a-f974608356ce', '7b67ad37-c527-fc79-9e27-144acdd50180', 'projects_pkey', 'p', '{b3fce569-ebe8-4079-b8c9-3fdf7c7292ba}', false, false, false, NULL, 'app', '{}'),
  ('fdefeea5-59ac-26e6-5821-10657afc2132', '019fa679-9064-7be8-b12a-f974608356ce', 'b5cb2006-a34b-9483-922c-2e0e19e6192f', 'company_links_pkey', 'p', '{c242ce90-77f7-092c-009d-11e882f63b7f}', false, false, false, NULL, 'app', '{}');


SET session_replication_role TO DEFAULT;


