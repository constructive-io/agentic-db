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
  ('00074eaa-23ee-a69d-1a29-a7fdc9b73343', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'e9ec7021-687f-02a0-f9a7-2a2bca71932f', 'habits_pkey', 'p', '{498c0d45-106b-5faa-d81a-01ca0d80812c}'),
  ('01c6813d-44b6-e0a7-1b45-f69d995a2be2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '4cb0d509-cb00-3102-441c-af85dae9f97d', 'calendars_pkey', 'p', '{e1d29648-b2a3-fd65-ac69-c981fb4b7b05}'),
  ('08e11f24-0b90-3d38-1378-ab2b5dc3797e', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '03a0d4bb-7a69-f222-26ff-f6b03489c1d2', 'skills_pkey', 'p', '{b84215c7-7fec-d2b6-7743-7b8db95bcf64}'),
  ('09dba57d-0fd6-4ddf-11ea-ab9cf8a5003a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'fc19a73f-d900-e2a6-f91f-4af27bb91631', 'deals_pkey', 'p', '{e343df2c-91be-7504-93b5-c3b42b500fe5}'),
  ('0b538ee1-1278-9141-dced-c15d109ea329', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'addc9fd2-ac11-2535-c7df-45a766b3b741', 'documents_chunks_pkey', 'p', '{15d3b9d6-90da-5bfb-2bf3-6607f59b0fcd}'),
  ('13bea0fb-35c2-84b7-71d3-77fb45b7b285', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '3bd8c806-c363-5090-c848-a6e59644df5f', 'tool_definitions_pkey', 'p', '{8c59217b-a8b4-32ef-0b51-6437d98427d5}'),
  ('15e140da-87b4-d9fa-480c-6c64461dbb71', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '6128828e-d354-61cc-8c73-45a7704772c8', 'runtime_schedules_pkey', 'p', '{6eff529d-52f3-fd19-ebaf-dd08d9209889}'),
  ('1c430072-a1af-5eac-c2ae-9cc672aa4a85', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'f0f7a120-bf69-610c-c4b5-e5630a74490e', 'contact_phones_pkey', 'p', '{ac7bcf4d-4d4a-16f5-634f-6dd742edc471}'),
  ('1fceed44-e5a4-7c87-9ead-336f64d7eed3', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'ed50ebc2-b92b-2250-e3b7-d360898817fe', 'raw_contact_urls_pkey', 'p', '{8eef7488-e012-fd05-6ea4-4db23c448a61}'),
  ('230f08c1-8a5b-44fb-9b7d-21fbde2a1636', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '22a1dbf3-0b40-5da6-8a5d-388137286223', 'email_attachments_pkey', 'p', '{cbabfe38-c546-20b2-b960-ad22daf18ac0}'),
  ('23ffa928-8c15-51a1-c495-6376b02b8f1d', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '5793f4c6-340b-81a1-b11a-da7029e61a9c', 'contact_links_pkey', 'p', '{ef4b3132-b7c6-6d78-4938-bfe967f5bcaa}'),
  ('2587d682-1c19-00b4-ee3a-073cbc23aabd', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '4fa4add1-165c-a2b3-893e-f5023ab55202', 'activity_logs_pkey', 'p', '{1f9177e9-fd0d-84c4-f21e-e755c8bf7b73}'),
  ('2655362d-153e-c75c-fddf-6bde0f2dae4c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'b5c5ea9b-e6d6-8d37-47f3-e49d07c2dd71', 'interactions_pkey', 'p', '{6fb39efd-71df-9c72-404e-cdcadac0c69d}'),
  ('33ac09a6-f6cf-21df-f75f-7b18ea617484', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'f87525a2-ab8d-a7bb-10a6-5899c57fbacb', 'contact_emails_pkey', 'p', '{dc1e993f-aea5-474b-a03f-d60bf56f1091}'),
  ('37bad0b7-7ee1-4390-7c6c-df91ecbc436d', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'a1b16562-e5a3-1112-1c87-f6053bdc0688', 'prompts_pkey', 'p', '{17656f81-5922-fe7a-cd50-89358ba81546}'),
  ('4455834d-7faf-fd5e-5f11-96de7f14e240', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '7327299c-dfe6-28a1-1a7c-3dec46eef3e0', 'contacts_chunks_pkey', 'p', '{b230ef57-02a7-39ff-c347-a8ac45e7c6a4}'),
  ('4797d521-c630-1ed4-45a6-21247af85288', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'c07b96d7-0c9b-2ff9-0787-c6479f29c1c8', 'event_links_pkey', 'p', '{01062adf-82e7-fcdd-9f21-3490007ba244}'),
  ('484a12d8-b41e-cda6-aa6f-05b5afe79208', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '1865c844-b477-cb7c-8556-90446c0b50b4', 'venue_links_pkey', 'p', '{9378da55-0ad4-2dd9-8e50-084a8491b446}'),
  ('4c896822-3eb8-fed9-a12d-10ec25f00dc4', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '483be9fb-4008-0b81-85b8-177e586381c8', 'projects_pkey', 'p', '{8236da27-4980-bdb8-61e6-74ab229c30e1}'),
  ('4d74edb0-2741-077e-4ca3-f68cdee3b6e8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '912ebcf0-670e-d837-42ce-9833df58fd28', 'companies_pkey', 'p', '{bdc807c7-3cb7-5fbf-f976-8b243c20fd16}'),
  ('53946e31-018c-e42f-65af-3573d992c0a2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'aa16abb5-725b-fa65-4ccf-2e2039a5dd1c', 'calendar_events_pkey', 'p', '{7adea8de-276f-db39-980f-8018f9a4fa09}'),
  ('5bcdeb6d-9b37-6964-1753-530954e39efd', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '95d42485-86f7-e971-0066-b6bb82b999c5', 'runtime_metrics_pkey', 'p', '{acc94685-9112-ec72-55ab-e29d35b63e4e}'),
  ('6331dcd7-2d14-cf7b-a1f7-0f8f0143bea6', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'b3bbc36c-bc2a-049a-55b0-bee328843a3e', 'raw_contacts_pkey', 'p', '{5a908741-4f91-2fd5-3361-a627f02ad6df}'),
  ('66e62ce9-28a7-db4e-c521-8037e4610e54', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'd4ccff1b-6558-f06f-9e64-ece7bd99d7e9', 'runtime_states_pkey', 'p', '{18a30006-2cf6-a2e4-c5a1-d902860010a9}'),
  ('6710820e-bbb8-6df5-808e-f5b927cf6ca6', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '05ef40f1-2b58-3086-947f-fff7d4ee587e', 'runtime_artifacts_pkey', 'p', '{552c8844-7c47-acc9-975f-99e3576ac3b4}'),
  ('67779105-2552-91ed-e7a9-5e8255d42f1a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'fd42a95b-1b13-c0f5-37a9-a146ac9a9daf', 'emails_pkey', 'p', '{bd417c40-ce95-e3fa-5144-0cff2632a619}'),
  ('67d97e1a-27a9-7547-c0ae-bbb1fa88f13c', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '09334155-5f2c-adb6-63e3-d8e4ad3e95db', 'tags_pkey', 'p', '{bed741a0-83c6-3447-666a-298ff026ecff}'),
  ('6b8f21f1-13f4-b81b-a9c6-3ebc550e0aac', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '8c824b1d-f359-52c1-3f71-da31f5d33aff', 'rules_pkey', 'p', '{3e5a8884-af33-366d-0794-2b5ccedda24c}'),
  ('6c797fb9-7ffc-29e6-d5e5-faba41ea7711', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'a7749d04-25b1-b5e5-626b-e45c50d18bb3', 'trips_pkey', 'p', '{f9349187-8b6f-dbca-1d95-1ce3b3ad7cef}'),
  ('6d80f631-155f-6e0a-781a-ef471bccfb8f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '5d126d35-67c4-1cb5-76ee-ef2f0930d468', 'calendar_attendees_pkey', 'p', '{f0be6570-8b40-a552-4d80-37b2cb296285}'),
  ('6e203342-6ffd-9ece-5f68-5b80e0c85bf5', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'c7fe2ee0-3570-d4ce-0055-d2b78ab5305e', 'agent_logs_pkey', 'p', '{106e135e-b695-89ee-e74c-f7cf37d21e87}'),
  ('7a0ad017-aa06-6818-90e3-eba9922e94db', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'd46fc5da-017f-913d-9e3d-608fa4a4cb4b', 'tasks_pkey', 'p', '{9fddf3b6-e326-576a-8cd7-71db9a7185c9}'),
  ('7b88d4b1-bcde-e29a-a80b-0022bd30fb9b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'ac07d7a7-0ed8-b9d0-46cd-78849d93f815', 'images_pkey', 'p', '{9b609d0b-9409-f164-e39a-8163e1e0c15f}'),
  ('859ba6dc-24c9-8357-3b19-7644d0f5e9a1', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'fc5a6875-508b-5f55-6b2c-fb8091c8162a', 'touchpoints_pkey', 'p', '{ff037e47-b968-e7b4-45b4-cc6452c6fb7b}'),
  ('8ae2aa5a-73c8-88e9-7c4e-84fba58e0afc', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'e9647772-04ff-0c06-5f38-ffa333580442', 'venues_pkey', 'p', '{b56e3bf0-5372-34b0-6e6b-73b273fae69b}'),
  ('934bde36-cf8c-6a89-8cd7-abd3762bcdc7', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '1b5a3da0-1590-f2d5-387a-7fe22dd23118', 'notes_chunks_pkey', 'p', '{e46887c1-8e01-1c82-4e52-3bc9b23a77d1}'),
  ('97052a7f-bbaa-a152-d24f-80c20292e61f', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '252aec4e-403a-528b-f367-2147fb508518', 'raw_contact_emails_pkey', 'p', '{4f4a5d62-d672-f3e4-54f3-de142ee117d4}'),
  ('9a04f78b-6a1b-821b-6404-ea371dd09791', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'fa536204-280a-0e03-28f4-e224adace770', 'documents_pkey', 'p', '{5635b8d7-f83b-2687-ea1a-42a9156f44f3}'),
  ('a8776f79-7270-bf30-d844-d4d124dc4a12', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '948e26bc-2d30-9d53-7ead-4ed6df438b0c', 'agents_pkey', 'p', '{8e7862d8-a747-d013-f82d-44b5d1c19431}'),
  ('ad63f459-d7c5-f71a-9ae4-c4cedff090a8', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '1471cfca-a6c3-ec55-ddce-b3fddba3fc61', 'tool_executions_pkey', 'p', '{e60927f5-de38-6e6c-345f-71b1acdcaa28}'),
  ('b1c31495-8c21-e881-4ac5-d29e12fdc526', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '4c0bb51f-d86e-1aa4-fcb3-d2dedb4a0698', 'notes_pkey', 'p', '{2c915c6c-0b2d-8c49-2506-5fe04df6ce49}'),
  ('b5604243-337d-b2f7-828a-9b75b54de428', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'b5b589a0-7229-3fe3-d964-bec7a58797e1', 'events_pkey', 'p', '{e8fbba53-2303-fb24-3d1b-aa31a97926a0}'),
  ('c0cc94d7-3b9f-909d-26a1-236ba8dc37a2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '1d5ad073-f57d-a00a-8c47-6d76d2914768', 'contact_addresses_pkey', 'p', '{2faafbf7-d783-773c-b082-b4fa1a99d636}'),
  ('c1d33e43-76ed-aae4-f0df-07522587ad3a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'af46d962-e068-50ba-c973-da080feb82e1', 'messages_pkey', 'p', '{a70261b7-7db2-2e7b-57ff-236adc7716fd}'),
  ('c5ddb555-2773-cd2f-b8ce-d00d3d863213', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '61f0d185-a9d0-7bb4-5378-24e993ded122', 'company_links_pkey', 'p', '{57cfbf49-41d3-95cc-b953-ab2bd58ef6f7}'),
  ('c669fa58-ca0d-82ca-1143-d71141059f81', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'd830176c-6a4f-1033-3b2f-ec99c7ba5899', 'places_pkey', 'p', '{617933c3-b38b-7806-8add-58c8d70e7cdf}'),
  ('ce69d5fe-5812-74ee-a6d9-095ff63f6aef', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '015f1d38-537a-0db0-c873-6ba35ba7d099', 'runtime_events_pkey', 'p', '{037c22b5-51c4-77d6-af91-25db113ce869}'),
  ('d30089bb-7f6e-9272-c133-74b9d7d0f8f0', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '76c39feb-9e81-2673-b1cb-e990035c1e77', 'memories_pkey', 'p', '{c06a19ee-3951-21df-4b18-70fe6b5f7ab1}'),
  ('d34f52a4-74a4-f815-ff63-86da6605c61b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '8ba72cf8-8e97-ae4a-c993-4a1ba811dbb5', 'contacts_pkey', 'p', '{10cc313b-abbc-68f9-595e-4526e54894f2}'),
  ('d81e5d46-6217-aba1-8d45-0ff5d8dd9fd0', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '73579f98-0e11-d296-f78f-4ee5f2554e77', 'conversations_pkey', 'p', '{d7e90be6-7c07-bd23-8635-7b3b2d38c815}'),
  ('e41170d6-ca92-d5a5-e179-f86908a6865a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'bf7ad2c0-d3e0-26a8-7d07-4ad9efbc0e02', 'autonomy_records_pkey', 'p', '{135a53cb-79fd-5929-dce6-fb4bb5c60b67}'),
  ('e6d5b865-36e8-4aa6-2d34-eeee518382b2', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'd92a5d1a-ad56-faac-b5b9-11a27136758b', 'expenses_pkey', 'p', '{9aa15024-8910-ff7b-b4a6-03d84e668f9a}'),
  ('e7d0c5af-fff4-70b7-de32-24891afb66fc', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'd96090cc-4ff6-3b1d-c5a4-c4dee37943ce', 'goals_pkey', 'p', '{34310d4e-9fa6-1e9d-7c6e-a2447f82dc57}'),
  ('ea69e8a5-12e5-169d-25e4-adc19b63261a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'b39ec844-6105-155c-a75a-edb306288e12', 'runtime_logs_pkey', 'p', '{4b9ba1c8-e104-3cf1-a72c-836fb4e4671c}'),
  ('ee2e1d14-b30c-4dce-3bf6-4484f059a36a', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '6751fe42-730d-040a-c1e9-01d9a7333540', 'raw_contact_phones_pkey', 'p', '{a3027aa3-a887-88eb-d089-b68ea8c802c2}'),
  ('f7d1ef4a-6f3a-e16d-a6bc-cea53dc3ca72', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', 'b5e1abd5-17cf-20ce-e71c-3e6a03474220', 'email_threads_pkey', 'p', '{f9cb7632-7bdd-abbf-940f-a1e968158f31}'),
  ('fa880395-298e-6f14-af89-867110b9eb2b', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '11faacaa-a07c-3db8-b522-4cf035a1a500', 'provider_sync_states_pkey', 'p', '{76f33066-c2a2-48e2-52c4-f1bf9cc60eb2}'),
  ('fd96ca5f-c8a0-afa3-c1a2-340fcff8baf6', '019ddbfb-bfc3-7c29-a1fd-92c04f240384', '36efad7c-f5fe-356d-e5c6-e70d6ffcee16', 'runtime_configs_pkey', 'p', '{62dd8972-fa4f-404e-34d6-e374bfdbd537}');


SET session_replication_role TO DEFAULT;


