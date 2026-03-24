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
  ('019d21f8-2486-79bf-9ebe-a91db9898d0f', '019d21f8-208e-7d66-9eaa-e762489889c1', 'users_search_tsv_tsv', NULL),
  ('019d21f8-b537-7794-9595-fb17a460da70', '019d21f8-208e-7d66-9eaa-e762489889c1', 'encrypted_secrets_hash', NULL),
  ('029af09b-00dd-2037-cc79-5c9eac2d975b', '019d21f8-208e-7d66-9eaa-e762489889c1', 'habits_embedding_stale', NULL),
  ('050f471b-8dff-f0a1-6217-596c4b87fee1', '019d21f8-208e-7d66-9eaa-e762489889c1', 'codebases_enqueue_embedding', NULL),
  ('059d8350-8645-e7ab-02bd-3d33c7eb8b76', '019d21f8-208e-7d66-9eaa-e762489889c1', 'calendar_events_enqueue_chunking', NULL),
  ('06a72818-4f8b-dfca-8242-2c72c9503744', '019d21f8-208e-7d66-9eaa-e762489889c1', 'goals_embedding_stale', NULL),
  ('08ac17d2-b14e-3329-1c01-7b23fd162321', '019d21f8-208e-7d66-9eaa-e762489889c1', 'notes_enqueue_chunking', NULL),
  ('0ac829ec-2e04-f24a-f04b-813d06b72a4d', '019d21f8-208e-7d66-9eaa-e762489889c1', 'email_threads_embedding_stale', NULL),
  ('0b5b7e51-783a-651b-8e2d-4d72ab88d2ee', '019d21f8-208e-7d66-9eaa-e762489889c1', 'agents_enqueue_embedding', NULL),
  ('10a59dd8-9624-b5a9-913b-e37a1e9c30a7', '019d21f8-208e-7d66-9eaa-e762489889c1', 'messages_embedding_stale', NULL),
  ('182ff09a-9a3b-c496-3bb4-2fc58343b0b2', '019d21f8-208e-7d66-9eaa-e762489889c1', 'events_enqueue_embedding', NULL),
  ('192461e2-2e9d-ed26-e754-41dc62c14599', '019d21f8-208e-7d66-9eaa-e762489889c1', 'projects_embedding_stale', NULL),
  ('1a3a1987-e358-e364-6fab-b0fdb18ad175', '019d21f8-208e-7d66-9eaa-e762489889c1', 'skills_embedding_stale', NULL),
  ('1a42c700-0a76-088a-958c-d06e75a0f291', '019d21f8-208e-7d66-9eaa-e762489889c1', 'trips_embedding_stale', NULL),
  ('1b66e5d3-3c31-a7fd-7aef-30842677a51e', '019d21f8-208e-7d66-9eaa-e762489889c1', 'runtime_states_enqueue_embedding', NULL),
  ('2566b755-c7e3-acd7-33d5-4b1bce550d29', '019d21f8-208e-7d66-9eaa-e762489889c1', 'runtime_states_enqueue_chunking', NULL),
  ('261597c1-0642-14b1-3851-9f46b702c81b', '019d21f8-208e-7d66-9eaa-e762489889c1', 'conversations_embedding_stale', NULL),
  ('2e21d294-e554-73ca-769b-202a74f3aae9', '019d21f8-208e-7d66-9eaa-e762489889c1', 'conversations_enqueue_embedding', NULL),
  ('2e4aa02e-53ff-f0bb-2a26-6cbd6c87e24a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'contacts_embedding_stale', NULL),
  ('30904f41-eaf7-6cc3-0542-2f6d8e0b6e86', '019d21f8-208e-7d66-9eaa-e762489889c1', 'touchpoints_enqueue_embedding', NULL),
  ('309391f8-4503-0f43-f37a-d5be233e1372', '019d21f8-208e-7d66-9eaa-e762489889c1', 'contacts_search_tsv_tsv', NULL),
  ('33044f03-48f2-58f5-8ef6-cf240d810a05', '019d21f8-208e-7d66-9eaa-e762489889c1', 'companies_enqueue_embedding', NULL),
  ('353be16a-1b1f-7ebd-e3cc-5d8e988228b1', '019d21f8-208e-7d66-9eaa-e762489889c1', 'codebases_embedding_stale', NULL),
  ('39026de9-2da1-66d6-7e67-e76da99b76cc', '019d21f8-208e-7d66-9eaa-e762489889c1', 'venues_search_tsv_tsv', NULL),
  ('3cfa27d8-2d43-0749-e255-80543060be75', '019d21f8-208e-7d66-9eaa-e762489889c1', 'hiking_trails_enqueue_embedding', NULL),
  ('3eb1798d-b222-9111-c072-802d5fa962e3', '019d21f8-208e-7d66-9eaa-e762489889c1', 'projects_enqueue_chunking', NULL),
  ('3fd3e942-948c-ebdd-fd92-e059cb2ef21e', '019d21f8-208e-7d66-9eaa-e762489889c1', 'habits_enqueue_embedding', NULL),
  ('411cda32-ed5c-0e83-bbec-de935c636c91', '019d21f8-208e-7d66-9eaa-e762489889c1', 'rules_embedding_stale', NULL),
  ('41c72403-2935-60e9-8b4f-9ac8a44b58bd', '019d21f8-208e-7d66-9eaa-e762489889c1', 'interactions_enqueue_embedding', NULL),
  ('4482276e-1307-ebd8-e4c4-81253715a3c1', '019d21f8-208e-7d66-9eaa-e762489889c1', 'calendar_events_enqueue_embedding', NULL),
  ('4e2d42be-286e-e96f-23a1-c3d2674ebbed', '019d21f8-208e-7d66-9eaa-e762489889c1', 'interactions_enqueue_chunking', NULL),
  ('4e5edc92-cedb-9e72-33d8-fcef22c2a6c5', '019d21f8-208e-7d66-9eaa-e762489889c1', 'deals_enqueue_embedding', NULL),
  ('519cc727-6448-ef29-607c-4077257c417e', '019d21f8-208e-7d66-9eaa-e762489889c1', 'companies_embedding_stale', NULL),
  ('5644f7e6-a877-060a-c5f0-0db215d67f3a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'rules_enqueue_embedding', NULL),
  ('5b54d853-529d-592c-817b-b2997ada79fd', '019d21f8-208e-7d66-9eaa-e762489889c1', 'runtime_logs_embedding_stale', NULL),
  ('5d1f1bbd-9ef8-6c44-d8f0-2562aece8b81', '019d21f8-208e-7d66-9eaa-e762489889c1', 'goals_enqueue_embedding', NULL),
  ('5e3222bd-7954-8e35-7a0e-2cd1e884bd37', '019d21f8-208e-7d66-9eaa-e762489889c1', 'memories_embedding_stale', NULL),
  ('5ed140f0-8dc8-9dd3-8074-97e31fe168fa', '019d21f8-208e-7d66-9eaa-e762489889c1', 'messages_enqueue_embedding', NULL),
  ('5f4a0ac1-b696-68a9-217e-886ca5b30ead', '019d21f8-208e-7d66-9eaa-e762489889c1', 'hiking_trails_embedding_stale', NULL),
  ('600dad28-ec0f-53f0-9a7c-051bb290a813', '019d21f8-208e-7d66-9eaa-e762489889c1', 'places_enqueue_embedding', NULL),
  ('60e36d1d-53ef-737b-46f9-1e826e1996b6', '019d21f8-208e-7d66-9eaa-e762489889c1', 'emails_enqueue_embedding', NULL),
  ('61476e26-d722-dc13-0e27-72554712287a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'goals_enqueue_chunking', NULL),
  ('61977e44-d684-3558-bea1-7be711bb4697', '019d21f8-208e-7d66-9eaa-e762489889c1', 'agents_enqueue_chunking', NULL),
  ('6660cef7-8aeb-e73d-e7d9-8e39e3c1aadd', '019d21f8-208e-7d66-9eaa-e762489889c1', 'deals_embedding_stale', NULL),
  ('6721b563-767c-d87a-4104-79d169b3af0b', '019d21f8-208e-7d66-9eaa-e762489889c1', 'notes_embedding_stale', NULL),
  ('69a3b246-d1b5-fee3-4a9f-5d1930042033', '019d21f8-208e-7d66-9eaa-e762489889c1', 'tasks_enqueue_chunking', NULL),
  ('6c5fb068-6b66-b71a-b66a-8d15f70115f3', '019d21f8-208e-7d66-9eaa-e762489889c1', 'tasks_embedding_stale', NULL),
  ('6d399191-d5e2-6154-ec30-0890e44b98cb', '019d21f8-208e-7d66-9eaa-e762489889c1', 'hiking_trails_enqueue_chunking', NULL),
  ('763e0029-f6d2-d231-b0e0-fcc7ea9fc96c', '019d21f8-208e-7d66-9eaa-e762489889c1', 'venues_enqueue_embedding', NULL),
  ('767ba4c6-3f7d-4d89-beeb-ad6e048d8097', '019d21f8-208e-7d66-9eaa-e762489889c1', 'runtime_logs_enqueue_embedding', NULL),
  ('7aaacd1c-3136-4896-6363-7473fe6d9edc', '019d21f8-208e-7d66-9eaa-e762489889c1', 'projects_enqueue_embedding', NULL),
  ('7b0bc329-4f86-194d-1da6-6457f8093581', '019d21f8-208e-7d66-9eaa-e762489889c1', 'autonomy_records_enqueue_chunking', NULL),
  ('7c7a63e6-67d7-34cd-7ec5-c7d7893d1ea1', '019d21f8-208e-7d66-9eaa-e762489889c1', 'skills_enqueue_chunking', NULL),
  ('84387838-e050-21bc-9fcb-9c6d9de556e1', '019d21f8-208e-7d66-9eaa-e762489889c1', 'places_enqueue_chunking', NULL),
  ('8729671d-0d93-6c3d-0840-7fd6a36f0fd4', '019d21f8-208e-7d66-9eaa-e762489889c1', 'emails_enqueue_chunking', NULL),
  ('873b114a-f5ae-e987-76ba-12a57b35e9b0', '019d21f8-208e-7d66-9eaa-e762489889c1', 'emails_embedding_stale', NULL),
  ('8834936d-37a4-1b73-838f-cd5b7950c61d', '019d21f8-208e-7d66-9eaa-e762489889c1', 'runtime_states_embedding_stale', NULL),
  ('898bf2fd-950b-5ac8-728f-33fbd64c2209', '019d21f8-208e-7d66-9eaa-e762489889c1', 'agent_logs_embedding_stale', NULL),
  ('8b2a632f-4bb3-a793-4c40-1f1882a31cdf', '019d21f8-208e-7d66-9eaa-e762489889c1', 'trips_enqueue_embedding', NULL),
  ('8d5d470f-700d-0a8a-13d7-8344e0923fd9', '019d21f8-208e-7d66-9eaa-e762489889c1', 'messages_enqueue_chunking', NULL),
  ('97126bdf-a1e0-6a90-e5de-a75bc9766512', '019d21f8-208e-7d66-9eaa-e762489889c1', 'events_embedding_stale', NULL),
  ('99a3dfae-27ef-9211-37ad-070fb4f084f8', '019d21f8-208e-7d66-9eaa-e762489889c1', 'memories_enqueue_embedding', NULL),
  ('99b16d76-e2aa-9fe6-5429-6cd092c927fd', '019d21f8-208e-7d66-9eaa-e762489889c1', 'agent_logs_enqueue_embedding', NULL),
  ('9c736262-8ca0-b2a3-28c9-94cf104bdf69', '019d21f8-208e-7d66-9eaa-e762489889c1', 'venues_embedding_stale', NULL),
  ('a09b0510-85ea-76f5-7add-d6bfa9554154', '019d21f8-208e-7d66-9eaa-e762489889c1', 'habits_enqueue_chunking', NULL),
  ('a8d19319-0f7f-860d-49ce-74c53e5371a6', '019d21f8-208e-7d66-9eaa-e762489889c1', 'touchpoints_enqueue_chunking', NULL),
  ('ab2a606b-fade-b639-344b-25890fae5ddc', '019d21f8-208e-7d66-9eaa-e762489889c1', 'conversations_enqueue_chunking', NULL),
  ('ac0ddae4-e7f0-00c1-eecf-3a44ef437749', '019d21f8-208e-7d66-9eaa-e762489889c1', 'trips_enqueue_chunking', NULL),
  ('b017f334-c110-c870-9274-f68bde49402a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'companies_search_tsv_tsv', NULL),
  ('b4cd5b39-9c89-2295-df39-f1f48b23b2bf', '019d21f8-208e-7d66-9eaa-e762489889c1', 'contacts_enqueue_chunking', NULL),
  ('b5d683e9-ec32-b6d7-0d65-120114afdd50', '019d21f8-208e-7d66-9eaa-e762489889c1', 'autonomy_records_embedding_stale', NULL),
  ('b7a16e10-0f05-03d1-5adc-d96c901d3be2', '019d21f8-208e-7d66-9eaa-e762489889c1', 'code_chunks_embedding_stale', NULL),
  ('b9b1f9be-2fb1-50e3-73f7-98fe9ebbce76', '019d21f8-208e-7d66-9eaa-e762489889c1', 'tasks_enqueue_embedding', NULL),
  ('b9cc11a8-33af-a823-88b4-9e17890a4e3a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'agent_logs_enqueue_chunking', NULL),
  ('bb04660d-64fe-3b35-7a16-2090f8506821', '019d21f8-208e-7d66-9eaa-e762489889c1', 'interactions_embedding_stale', NULL),
  ('bd461e01-88f1-a86f-6716-485c70189a79', '019d21f8-208e-7d66-9eaa-e762489889c1', 'itinerary_items_enqueue_chunking', NULL),
  ('c0747cfe-4f9f-d9b7-8492-796d8bd72ae4', '019d21f8-208e-7d66-9eaa-e762489889c1', 'emails_search_tsv_tsv', NULL),
  ('c187c488-cab0-90ce-a164-3fe217038022', '019d21f8-208e-7d66-9eaa-e762489889c1', 'companies_enqueue_chunking', NULL),
  ('c1acab67-459e-842c-943f-70bd3ac2f65c', '019d21f8-208e-7d66-9eaa-e762489889c1', 'notes_enqueue_embedding', NULL),
  ('c3decc20-0974-1448-4958-8e2e1aa1c6b0', '019d21f8-208e-7d66-9eaa-e762489889c1', 'itinerary_items_enqueue_embedding', NULL),
  ('c4ce6709-b5b7-7ed7-3249-c0cc938f3ed3', '019d21f8-208e-7d66-9eaa-e762489889c1', 'codebases_enqueue_chunking', NULL),
  ('d3426bae-a908-b876-2cae-b6df5b26dce5', '019d21f8-208e-7d66-9eaa-e762489889c1', 'email_threads_enqueue_chunking', NULL),
  ('d9664b4d-885f-3284-701e-aefae5251804', '019d21f8-208e-7d66-9eaa-e762489889c1', 'contacts_enqueue_embedding', NULL),
  ('e0543fbc-a6be-e32a-15a0-8d49eb837eed', '019d21f8-208e-7d66-9eaa-e762489889c1', 'events_enqueue_chunking', NULL),
  ('e35fcbde-d70f-96fd-bfa6-ce634d22c16a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'rules_enqueue_chunking', NULL),
  ('e42a3c33-ac7b-cf0f-03fe-e28037db5c77', '019d21f8-208e-7d66-9eaa-e762489889c1', 'runtime_logs_enqueue_chunking', NULL),
  ('e89c779d-642b-fc70-c7d5-adb43583afdc', '019d21f8-208e-7d66-9eaa-e762489889c1', 'memories_enqueue_chunking', NULL),
  ('e9a087ae-a363-5e63-dae3-65ca086f6fdd', '019d21f8-208e-7d66-9eaa-e762489889c1', 'places_embedding_stale', NULL),
  ('ea89e312-c19b-a05d-1807-6410df0f85f3', '019d21f8-208e-7d66-9eaa-e762489889c1', 'touchpoints_embedding_stale', NULL),
  ('ea96c597-ed7a-24d9-5f79-b43bee618e5d', '019d21f8-208e-7d66-9eaa-e762489889c1', 'venues_enqueue_chunking', NULL),
  ('eb20584e-00ac-f8bb-2ec5-47c667c67cb0', '019d21f8-208e-7d66-9eaa-e762489889c1', 'calendar_events_embedding_stale', NULL),
  ('f1737ae5-38b6-7976-407f-1ef6fb2d8e06', '019d21f8-208e-7d66-9eaa-e762489889c1', 'deals_enqueue_chunking', NULL),
  ('f3764023-90b4-48fa-b265-47df1be7748a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'agents_embedding_stale', NULL),
  ('f39f8c0e-42dd-9a8e-d176-4e4ab3de3e32', '019d21f8-208e-7d66-9eaa-e762489889c1', 'events_search_tsv_tsv', NULL),
  ('f6189fee-2e39-4806-ad14-a11910ce195c', '019d21f8-208e-7d66-9eaa-e762489889c1', 'email_threads_enqueue_embedding', NULL),
  ('fa2109ed-adff-4afd-c4b8-f0bd8acfb223', '019d21f8-208e-7d66-9eaa-e762489889c1', 'autonomy_records_enqueue_embedding', NULL),
  ('fb02822a-9c60-8e91-f255-19fefaf27f8b', '019d21f8-208e-7d66-9eaa-e762489889c1', 'itinerary_items_embedding_stale', NULL),
  ('fbe5cc03-6c14-e067-3bd5-c806852e888a', '019d21f8-208e-7d66-9eaa-e762489889c1', 'skills_enqueue_embedding', NULL),
  ('ff83fbe4-4f6b-a800-e9ea-a95c16487268', '019d21f8-208e-7d66-9eaa-e762489889c1', 'code_chunks_enqueue_embedding', NULL);


SET session_replication_role TO DEFAULT;


