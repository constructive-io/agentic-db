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
  ('03028a2d-13d7-45e6-4809-221d4ee5fbb4', '019d937b-b671-77da-9a1e-5b9b26705894', '37468336-5c6e-071c-c7e1-465f06c17861', 'runtime_metrics_pkey', 'p', '{ea708a9c-d301-66be-f3cc-a3f20c6d3b7e}'),
  ('057e4900-fa9a-139c-f294-6fd611a7b390', '019d937b-b671-77da-9a1e-5b9b26705894', '5f2e54c0-bd38-52a4-01f2-b2e99e742319', 'code_chunks_pkey', 'p', '{624d7cd1-3d64-6d05-cc6e-92ac5cef5cea}'),
  ('0619357c-0eb1-08b9-ad9b-e6c6f60e15ed', '019d937b-b671-77da-9a1e-5b9b26705894', '7e00e80e-355e-6b6a-874b-b956fb88c141', 'company_links_pkey', 'p', '{d66b58f8-002d-bab0-c73a-f6dc26467517}'),
  ('07025c91-b42d-ee9f-5232-7759bde62985', '019d937b-b671-77da-9a1e-5b9b26705894', '037ea3b0-bed8-b144-b7d4-af62282cf2b5', 'goals_pkey', 'p', '{d7ddae73-058e-4921-ecfe-a2ff48a4ae48}'),
  ('09c1ff35-5126-3e39-6bc6-663fec87eebc', '019d937b-b671-77da-9a1e-5b9b26705894', '7e2948e3-505c-135b-a5d0-77451a71acfe', 'email_threads_pkey', 'p', '{1bea6e21-4a75-0787-75ee-d4a34a809919}'),
  ('0f85c1bf-f04f-77ac-2048-14f33373211e', '019d937b-b671-77da-9a1e-5b9b26705894', 'be31b905-db93-7989-7b8b-40ddee0936fe', 'raw_contact_phones_pkey', 'p', '{41d16dba-8ad8-3f22-8f23-ea4f22d1e31f}'),
  ('10a47bf8-8b10-e4e6-d072-0ecb673a1a5d', '019d937b-b671-77da-9a1e-5b9b26705894', '86bf0df9-f4a9-94b3-c6de-33c90bdedba1', 'runtime_states_pkey', 'p', '{87739588-c06d-2feb-fa95-66dd848afb71}'),
  ('1364ca0b-adea-10f3-ccb1-3d2a2d2d4ead', '019d937b-b671-77da-9a1e-5b9b26705894', '6791117f-2437-e2dd-b400-291e23098edd', 'autonomy_records_pkey', 'p', '{8843c183-41d6-8146-35d3-6874bf50cd84}'),
  ('163a7dda-0c6e-4ba5-6767-5e8d133c2103', '019d937b-b671-77da-9a1e-5b9b26705894', 'd060e258-3e73-df4b-091a-d5dad51e9550', 'venues_pkey', 'p', '{b9adcb57-037c-791c-f9dc-e641bb419f97}'),
  ('195e31b3-9d1c-d174-1b3d-8d7e1dd61815', '019d937b-b671-77da-9a1e-5b9b26705894', 'bc6b357d-c86d-950b-6d81-dd4c298464e9', 'places_pkey', 'p', '{bd50baed-2e3e-6840-f366-a53fb2cf4cf3}'),
  ('2759f6ec-89cf-8f3c-6d97-fbbc82402ed8', '019d937b-b671-77da-9a1e-5b9b26705894', '8ee321ca-df99-c512-e12b-317b2f821551', 'email_attachments_pkey', 'p', '{3e82fac5-3a32-ae0d-f7ff-5d3ad7661a45}'),
  ('28348c43-70fe-7636-88fd-3824e810fad0', '019d937b-b671-77da-9a1e-5b9b26705894', '6d337b2c-776d-29f6-f9bb-5b028b892b84', 'emails_pkey', 'p', '{3b5074d5-b384-41bc-2637-2ed73861102d}'),
  ('287401c1-eab8-df7b-7b09-624c4eedd904', '019d937b-b671-77da-9a1e-5b9b26705894', 'f15a1afd-283d-7bd9-4c80-d99268ceff6f', 'deals_pkey', 'p', '{423d28db-16d1-a347-fc2b-f38554dba4c7}'),
  ('2974e181-d41d-c1b5-b57b-7b2a5e80a6bd', '019d937b-b671-77da-9a1e-5b9b26705894', '479d7be3-25bb-15a0-4ecd-347dfe3be09d', 'tags_pkey', 'p', '{12b8d4d0-2b41-2825-5159-54ab699af941}'),
  ('2b51d478-7704-0a23-8cab-0328d23c7343', '019d937b-b671-77da-9a1e-5b9b26705894', '7bd7d419-ba00-7116-b529-d8100bbbd41e', 'raw_contact_emails_pkey', 'p', '{47c24129-dc58-930a-96bf-68b0147bfa8b}'),
  ('34ebb511-6db1-1ee5-bb84-4357ba938a4b', '019d937b-b671-77da-9a1e-5b9b26705894', '288d5629-bcce-bd41-baab-4d69a77d5058', 'contacts_pkey', 'p', '{9408d875-4934-b94a-68da-a5d3385796cc}'),
  ('36f1edf0-3196-f24a-6721-f4ecc4998a3d', '019d937b-b671-77da-9a1e-5b9b26705894', 'c6ed9ccc-b821-d0bd-a0ed-d7086a668615', 'runtime_logs_pkey', 'p', '{2b695a2a-dcbe-7abf-9152-6f66467636ef}'),
  ('37657785-84e3-9a7b-3226-36545bc43716', '019d937b-b671-77da-9a1e-5b9b26705894', 'f1740c01-ad00-d14c-0054-4a763506045f', 'runtime_artifacts_pkey', 'p', '{b46b988a-5fb3-bc83-34ea-e61903fb88e8}'),
  ('3e79e254-adef-f17e-479c-8eca166dcc4d', '019d937b-b671-77da-9a1e-5b9b26705894', 'ac41fe29-154a-272e-d78a-c79f90e95862', 'images_pkey', 'p', '{b779d44b-b9f8-93fa-4673-565b6b824bf6}'),
  ('4082d09f-04c2-fcbe-bccb-b682051be20c', '019d937b-b671-77da-9a1e-5b9b26705894', 'd61e15cf-1d29-b65d-4d0c-815dda4b7134', 'contact_addresses_pkey', 'p', '{f2c927a2-f450-52b2-b25b-d35dc84a279f}'),
  ('463fa000-7b91-dafc-b510-2d8695a3d539', '019d937b-b671-77da-9a1e-5b9b26705894', '21ed5411-c825-5056-93f3-92f99dc1b2e8', 'runtime_configs_pkey', 'p', '{2925a14d-eb07-63cb-264d-d278865ca65a}'),
  ('574e10c7-6133-6b91-f00d-b1c1e4423e86', '019d937b-b671-77da-9a1e-5b9b26705894', '266af73c-73ef-0e03-d44f-889ef98c397e', 'calendars_pkey', 'p', '{450c61f9-1794-9941-2239-51fe2476f8ab}'),
  ('5786dac3-8912-190b-c44b-17256ba7d981', '019d937b-b671-77da-9a1e-5b9b26705894', '9003ccdb-d028-42ad-bc56-adfd1b8ade55', 'contact_emails_pkey', 'p', '{44caa600-223b-d85d-9995-ce460ab9e59a}'),
  ('5bc41593-6931-06ae-9b9c-bfd2de45b11c', '019d937b-b671-77da-9a1e-5b9b26705894', '7d850371-c4fd-ec58-5ebb-0bee52dbbea1', 'calendar_attendees_pkey', 'p', '{53f531c3-2600-9cdb-ae02-607c8e36012e}'),
  ('5c0164e3-baf8-a868-97da-27ca942d6c86', '019d937b-b671-77da-9a1e-5b9b26705894', 'b6284007-3413-3597-7d16-5dfd97f32f0d', 'conversations_pkey', 'p', '{8670a726-e6ed-4b5c-43e2-5bbc96ec5e65}'),
  ('5ef1e624-ad78-99e7-38fa-3ed4a9924a46', '019d937b-b671-77da-9a1e-5b9b26705894', 'dd654960-24d5-241e-8da6-4ef1e1e37dd7', 'tool_executions_pkey', 'p', '{af0dc76b-2a2c-cd51-321c-94106caca20f}'),
  ('7b174358-dada-4544-fe63-ed51fa37c492', '019d937b-b671-77da-9a1e-5b9b26705894', 'd963a0ce-f972-ce5a-cd31-cb90940aeaf4', 'venue_links_pkey', 'p', '{8fc0a59e-bc18-91bb-791f-664ba3098e4a}'),
  ('7c12261b-df3b-f913-c58a-babd21e6aa82', '019d937b-b671-77da-9a1e-5b9b26705894', '477b30c9-2879-dcdd-cdf6-2c7ef1f516f9', 'expenses_pkey', 'p', '{8917739c-89ee-5dc5-cf5b-13d1f72b03c4}'),
  ('87e23d70-64d9-1da0-ad1e-98ccc0b0f683', '019d937b-b671-77da-9a1e-5b9b26705894', '73a54fa7-7aa0-87fc-851c-33b73166355e', 'raw_contact_urls_pkey', 'p', '{a3dbece1-c231-ea11-ff38-eaee89e53703}'),
  ('8e2616c5-69b7-4254-6033-3dc0fa51a98e', '019d937b-b671-77da-9a1e-5b9b26705894', 'b5e2d63a-e83c-1af8-17a8-6323d53dd315', 'trips_pkey', 'p', '{5c313c63-5679-de5c-a91e-3edba6936452}'),
  ('9064a5fb-a7d3-5572-a1d6-4e1436dcd5ec', '019d937b-b671-77da-9a1e-5b9b26705894', '2f4f040d-a591-b3e2-9fae-ecf486739e33', 'skills_pkey', 'p', '{ffa8316e-8488-25b1-7eef-d2726f2397fb}'),
  ('9083a165-37d6-0654-a0c0-9ac67ab41603', '019d937b-b671-77da-9a1e-5b9b26705894', '139d4caf-c102-b00c-e89f-14393d54ab2e', 'provider_sync_states_pkey', 'p', '{ae10be06-bbc2-700d-62e5-26d5bd084bad}'),
  ('930433e7-5509-e2f5-ea60-b3877972b4b6', '019d937b-b671-77da-9a1e-5b9b26705894', 'c4a75070-e98a-412a-be43-06cded84d7cc', 'touchpoints_pkey', 'p', '{15efc05c-7992-5463-ce70-66e639962391}'),
  ('95deb6e1-e392-a727-374c-17527eb59378', '019d937b-b671-77da-9a1e-5b9b26705894', '78838c1f-7ef2-f0c6-24ab-776a62b93fef', 'projects_pkey', 'p', '{69aef411-9ace-eee3-90e0-fcbd9abd1aa7}'),
  ('985f5f36-8f37-313e-c001-4f8d8d644f2a', '019d937b-b671-77da-9a1e-5b9b26705894', '58183483-29ba-c4ff-9d79-6a1772579a98', 'contact_links_pkey', 'p', '{a7d5d1b7-4e8a-7cc0-acfa-0e796160cfb9}'),
  ('a1e59d31-a606-6851-a473-0118b59a7d48', '019d937b-b671-77da-9a1e-5b9b26705894', '6cb7b5ea-fd14-1281-334d-7e6b2b6f6dd2', 'messages_pkey', 'p', '{6644138f-f7a5-fa16-94b8-ccd601acff0c}'),
  ('a2b06c8c-7f73-0554-6c35-9b9d333df528', '019d937b-b671-77da-9a1e-5b9b26705894', 'f8511e5b-6f62-2842-78f6-0a8b9d487183', 'companies_pkey', 'p', '{7200180e-ddba-5d95-762b-10c12c5e7ddf}'),
  ('a364648b-2f55-8911-d7b7-0ba6f1d1218f', '019d937b-b671-77da-9a1e-5b9b26705894', 'ac9d6402-0a58-f4b9-bad9-bf6dfd3bae4e', 'tool_definitions_pkey', 'p', '{dea7d14c-9e69-dcea-6c4a-617f57c62a55}'),
  ('a7177762-45e2-5813-b1d8-3c7916bfde5f', '019d937b-b671-77da-9a1e-5b9b26705894', '0e46274b-519d-4381-3553-c831b76e5998', 'tasks_pkey', 'p', '{f60ce75b-70ac-e957-6519-35770ab60a4c}'),
  ('a7e8cb36-943b-cef9-5c41-77415652d31e', '019d937b-b671-77da-9a1e-5b9b26705894', '8d95112c-244d-cfa6-919b-466f51d9a7e9', 'habits_pkey', 'p', '{e216e46f-62b5-5832-6b15-ccca55d97ac1}'),
  ('ab5f779c-c2c5-9ecc-19f1-f21b7884c259', '019d937b-b671-77da-9a1e-5b9b26705894', '95ef64ed-f40e-d264-0ab4-ec491a0f5df3', 'runtime_events_pkey', 'p', '{b1920e83-8c10-8b87-cdaa-ce3beff9d1e5}'),
  ('c10a9fbd-75ba-b6af-0c97-428e62ea6541', '019d937b-b671-77da-9a1e-5b9b26705894', '25d8f56e-c94c-abde-d20f-55ce9687c467', 'raw_contacts_pkey', 'p', '{fa26fcab-c6e5-af38-fe71-6c49aaf54368}'),
  ('c15f4a9a-ce25-9340-1cdb-b8cac6c5f901', '019d937b-b671-77da-9a1e-5b9b26705894', '48fe7f27-b9e2-6a93-6987-ab9d2c4a7ba9', 'runtime_schedules_pkey', 'p', '{77b8b132-fef9-f276-4a87-b69c31db35d3}'),
  ('c292caae-3acd-3b87-5ef1-b76b83fc1c82', '019d937b-b671-77da-9a1e-5b9b26705894', 'e7a1a47e-9dd0-b155-fc54-29269c5cd6eb', 'agent_logs_pkey', 'p', '{e84b3029-624d-2906-5ebb-9164d2c97e45}'),
  ('c8889213-4317-f7c9-86dc-4288288eaa0e', '019d937b-b671-77da-9a1e-5b9b26705894', '05b9b1f1-b35f-ce41-3ea7-379f5ade250a', 'contact_phones_pkey', 'p', '{8f475c39-a9ce-8c8b-05c3-a7aa4352dd79}'),
  ('cab2aeeb-0fc2-382c-0b53-05fb608ed919', '019d937b-b671-77da-9a1e-5b9b26705894', '32f4868b-b0ee-e87c-b05f-eea4af1d2db7', 'interactions_pkey', 'p', '{c1e25cc1-bacf-65a4-1fce-a5be16212761}'),
  ('cb9bfb29-4fc4-0dfe-5472-2ee64b68328e', '019d937b-b671-77da-9a1e-5b9b26705894', '1653854f-d35d-c8c8-925e-ee4b36afd7fd', 'memories_pkey', 'p', '{2c0e2ad8-8af2-2906-1671-905136d29ee5}'),
  ('cf52a53e-b447-5075-bf12-3d8b257110de', '019d937b-b671-77da-9a1e-5b9b26705894', '3f0eaf56-8319-4bfb-3e17-92a2523c08b4', 'rules_pkey', 'p', '{56b90a53-3877-5947-9f58-f18cc510be6b}'),
  ('d6508afa-48f0-1873-8909-1d0735dc69e3', '019d937b-b671-77da-9a1e-5b9b26705894', '857b79c6-1b92-4b90-501e-72cd33f8b43f', 'events_pkey', 'p', '{65a7cce0-5ad0-d001-f7b5-4620dfb9d912}'),
  ('d9be7d5e-06d8-f8e0-a480-f2918462ef4a', '019d937b-b671-77da-9a1e-5b9b26705894', 'b09f1e46-2dfa-0014-6450-c4c4bf5663a8', 'activity_logs_pkey', 'p', '{e41a2bc0-a4f0-25d8-acf0-28db0e3b3e7e}'),
  ('e07e0b11-68ec-09d6-d221-bae69743f378', '019d937b-b671-77da-9a1e-5b9b26705894', '0fbb4a04-7bcd-68ae-ff0a-01421a8ae745', 'calendar_events_pkey', 'p', '{3cc639ae-a2d0-9b8a-c7c1-96fcf2560204}'),
  ('e4fcb851-c0c7-a735-23ad-e34f600b1043', '019d937b-b671-77da-9a1e-5b9b26705894', 'bb2e1e7a-0c58-0617-419c-7e767db6634d', 'notes_pkey', 'p', '{c488ff50-bfa7-0eb6-e694-75ccc42a9219}'),
  ('e6c39207-680f-d091-5cd4-65e44147af12', '019d937b-b671-77da-9a1e-5b9b26705894', '2caebfe9-9b9b-54c2-39cd-737bf064ecd5', 'codebases_pkey', 'p', '{d841ffbc-99a7-343c-387e-177f93de84f4}'),
  ('eb80b4a8-05a6-2eff-ab8a-f23503fd05df', '019d937b-b671-77da-9a1e-5b9b26705894', '95d8f3b2-c7e8-d66d-803e-d18fb7c2d693', 'agents_pkey', 'p', '{38e76129-df28-e0aa-8a67-17ff5920e971}'),
  ('ecbfbb39-395f-a4ba-8cb7-dc4b85552bd2', '019d937b-b671-77da-9a1e-5b9b26705894', 'fde07769-59cd-eb3e-18ab-89685f191f9c', 'event_links_pkey', 'p', '{494540c7-46b2-a9d8-7428-2eaa332d3b5e}'),
  ('ee2054aa-364a-26ae-3edc-76a6ed8ad0dc', '019d937b-b671-77da-9a1e-5b9b26705894', 'e8e24050-18e9-b1c9-6a74-2fc415100c64', 'prompts_pkey', 'p', '{ad9ae4d2-364c-e7b1-0cfc-352b2fc63b4c}'),
  ('f992e481-dabc-e1f5-b126-c279628c2961', '019d937b-b671-77da-9a1e-5b9b26705894', '5e50e679-e5b0-8515-8081-d83824933a22', 'hiking_trails_pkey', 'p', '{5135641c-e412-b27d-27ee-c988eaa1395d}');


SET session_replication_role TO DEFAULT;


