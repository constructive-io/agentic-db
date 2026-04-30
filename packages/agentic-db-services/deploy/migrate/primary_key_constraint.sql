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
  ('0deef7a8-6fcb-b7b6-5a6b-d54501ea1fd7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'c6b427fc-e856-a627-09ea-818112ec38ce', 'contact_links_pkey', 'p', '{d8a05b3d-5368-8ccb-357e-f9e9037f2a3e}'),
  ('0e6a7cc8-86d7-db83-b029-3844a71010de', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '855888a0-d132-bce3-2e40-baeeff4e3c14', 'tool_definitions_pkey', 'p', '{ffdcffba-eeec-fe69-6bb9-f7bd1b311e42}'),
  ('1067a5f7-66e4-5917-6526-adf35912d010', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '1321f1cd-4eb2-82fa-4e1b-ed80de6ba630', 'runtime_artifacts_pkey', 'p', '{d0847364-27f4-808b-d627-ff7b5cd395f4}'),
  ('190f8a75-b7d5-7d29-e892-f1da7d9dfeef', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '927192d1-2a48-c4f4-5c37-a36feee1ccc8', 'agents_pkey', 'p', '{f1c8cc5c-8ae1-b27a-45c5-df724dc8ffc0}'),
  ('1dfef61c-3978-b54f-5674-4964a2cec6e9', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '98bb80c5-4185-5d45-d87c-39351c421646', 'calendars_pkey', 'p', '{cc1e2508-7bab-557c-8bee-7e0864b02153}'),
  ('24a582cf-1edd-c6bc-8b36-72dc62e58d79', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '05d570ef-6f19-1b39-f6e6-6678a8245f6e', 'venues_pkey', 'p', '{9e20efca-9008-4306-52b9-a7262b0d6682}'),
  ('25a813f0-287d-f3c9-8b31-003098a1913e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '30e232a8-acc5-fe44-1332-31db87f92ab6', 'goals_pkey', 'p', '{40a355fc-1445-8a04-4d07-9c4ac95f671c}'),
  ('2655dbd8-90cd-dfb0-2255-aff95a18540a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '1914cc43-a2e2-31fb-6a2f-601abf85f3c4', 'runtime_events_pkey', 'p', '{a9b30b11-85d9-7180-6854-5c15dea16c9c}'),
  ('29f1be49-4bf6-60b1-fe21-936ea2c95a0f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '7b2984de-bd1f-74df-3f4e-bb60a6179c69', 'projects_pkey', 'p', '{857411c4-9a0c-a418-c9b8-371de2595cef}'),
  ('32e8ec3e-10a0-bf1a-737d-b4a93f2b5616', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '9f1dcd58-f725-f6ec-e1e7-71bb852aabf9', 'messages_pkey', 'p', '{7ebeaa13-986a-44ae-a66a-b8d023da46a7}'),
  ('342aeb37-8721-a2af-b036-831e42f5c6d8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'e3bad2e4-e609-78d4-cdd9-deb815cde5a7', 'runtime_states_pkey', 'p', '{9bb0f039-1eb5-2dac-0558-ecf2874ba0a4}'),
  ('345d7d86-638c-59cf-dfc4-2036ea91e409', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '16015198-6182-dd00-fcf2-b1a195897c86', 'emails_pkey', 'p', '{092b2962-0d74-f625-6d1b-bf883d271385}'),
  ('384119eb-28fd-9402-82eb-31ddcd844a64', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '4c06453a-6990-a266-0cf1-fa65cad9b018', 'email_attachments_pkey', 'p', '{91b89afe-a096-a155-9195-72036bff2eca}'),
  ('3971a2c1-52ef-15a1-ec17-7a41b1c1b741', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '12c5a03d-0cc3-c523-da85-bf5d3f676bec', 'deals_pkey', 'p', '{bb8460cf-c4c1-dd19-4046-593599f3d2ec}'),
  ('43bc7f1a-1a83-46df-3384-6f789c11d221', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'af48e82a-d51a-61be-9af4-0b1210323802', 'images_pkey', 'p', '{4ab62e1a-2b41-a048-9748-201a4621cc40}'),
  ('4deb6cfd-cb3e-2700-df54-9994f7c9eff7', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '79e3f4a0-052a-844f-4556-1ec0c1b29234', 'provider_sync_states_pkey', 'p', '{e155a04a-15f7-6632-2a95-704853510b20}'),
  ('4f42f535-9777-b5f7-6cf2-75eefcc03a09', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '2d20f948-23ce-1fa4-6f83-3d6f1ef00d10', 'raw_contact_emails_pkey', 'p', '{0db31255-c752-c280-ec13-b4c29c587590}'),
  ('4fd6873d-c8df-a8a7-0ee8-108586f8ebd6', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '662d9ded-e225-c51c-9845-4fc4ac5c2201', 'touchpoints_pkey', 'p', '{860ea8a3-a6ad-29a2-bfe6-1dbe87f0d550}'),
  ('4ffb4418-b293-6b20-1d81-cc2acc819c36', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '4fee2b87-7b89-75e6-ed27-9bec9a10d48d', 'tool_executions_pkey', 'p', '{4887ad8d-a2d1-2e6a-aea7-b7a5c1bd3dd2}'),
  ('52580f63-3975-158f-da69-b0ed8ee079b2', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '403fc5e2-50e2-1620-3f6b-0e40e555ca71', 'skills_pkey', 'p', '{141f48db-817d-32a2-b77e-27668a9a334f}'),
  ('5a29f68b-08ef-4368-a6bf-0ef8254e427e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'a09538f1-f883-c7a5-759a-518462d1f3b3', 'habits_pkey', 'p', '{a5cf2958-527d-6892-09e1-1326dd9d6b7b}'),
  ('5bbeb877-1ee7-c3f8-75bf-c62cfbfbd0d2', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '3bab8c28-5273-781d-3c4a-3b83bcb7c816', 'contact_addresses_pkey', 'p', '{38865239-853f-2200-3ae9-2f32acc2f392}'),
  ('605e309f-f343-f9c9-3198-709053662287', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '0aac13f7-eb8b-0df6-78d4-c634e3eb1fbc', 'documents_chunks_pkey', 'p', '{7837c71e-1915-3956-3760-84987969513d}'),
  ('6432fdff-6ca0-82c6-8f95-38c500a69e9a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '7c0c09c6-8107-7d0e-1450-c4fadba84f1f', 'contact_emails_pkey', 'p', '{8f67c7c4-ff5e-0810-c8cd-3d6e422fb272}'),
  ('6af35089-cfae-c724-c42d-57b6681878be', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '4f09400d-5184-0522-2443-dcf3b9dfe820', 'raw_contact_urls_pkey', 'p', '{49cc1a06-ad90-b8b2-65d1-3b89636fa50e}'),
  ('6c97c4af-8e8f-790d-3ac2-93ff3dd32919', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '534aa42e-c741-8175-ce8c-a547d0c154f1', 'calendar_events_pkey', 'p', '{12de5b31-a50c-3960-22c8-56175e722d16}'),
  ('6c98cfe2-4906-d59f-c5f3-4c8ef1631a89', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '73931c1e-c34a-b992-a58b-1b079ef64adf', 'runtime_logs_pkey', 'p', '{423f13e3-9444-511e-441d-05e49195e44c}'),
  ('6ce06dce-f37d-0cb2-2b07-00697e6c2bf8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'd57d2ee6-7b28-5c02-128e-c625e2c509e7', 'email_threads_pkey', 'p', '{eea15678-fb1c-6c85-af5d-dc9f8d858f2c}'),
  ('78e217b0-bfb9-bf08-703c-1d069e35310c', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '9ca90b6a-3109-7f65-d81f-a75ed3068fda', 'event_links_pkey', 'p', '{408e35e2-843e-b6a2-8a94-f7067fff5996}'),
  ('7919fd34-8605-7aab-029f-80c04328b6db', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'cace65dc-d3c4-1bfd-f8a9-f38ba98640a8', 'notes_pkey', 'p', '{27b96b85-47bf-c486-207b-c247377110b0}'),
  ('807351a6-0765-6168-0162-ee9405699a2f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '7dcc90f1-14ee-ac44-4e98-8dbbf96ab46c', 'expenses_pkey', 'p', '{67a19657-217b-8b20-5abd-24195539cc87}'),
  ('80c0a394-b379-5fd4-08f5-dea16da4c379', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'af08aa73-13e9-573f-9a4c-c505bd55e463', 'prompts_pkey', 'p', '{696658ba-82af-b74b-0fbd-e60f9ee9b5b2}'),
  ('812a09c1-d063-62c9-0711-be5ff1e2c6d4', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '03f0a1fa-a52b-3256-1d0a-b71dfcab77b5', 'tags_pkey', 'p', '{00cd4ccf-5bc3-ac76-f74b-dc5544c7ea8e}'),
  ('81572059-1431-6570-bfb8-8d3f03b68f5c', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '206cc56f-9237-e409-5360-79d0efb65c0d', 'activity_logs_pkey', 'p', '{1f39bdc0-ff3e-07cf-9180-238553747879}'),
  ('88b83003-541d-e8a0-1584-6a264ec23aec', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '4f17aaf9-c8ee-9a81-8220-c8020dcfb694', 'runtime_metrics_pkey', 'p', '{0d23717e-ae5a-4325-950d-eb970179b291}'),
  ('8aa0d4ca-fab7-4b72-b1bb-4d9828b73897', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'c6d29f19-e102-9551-ea9f-fd68ae0f4b77', 'tasks_pkey', 'p', '{74521f99-a58a-59b6-83e4-746aafb3a68c}'),
  ('8fb905a1-e8af-4def-ff33-6aa318ba2118', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '1f6814f7-baab-e619-1607-0df81208fedc', 'raw_contact_phones_pkey', 'p', '{a908479c-b42f-6503-68f5-1a7f228bb1d7}'),
  ('974aaf4d-f92a-a864-be43-e7d017e4a558', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'a1cd7061-8ce5-bdf1-e0e7-d61c2b46d527', 'calendar_attendees_pkey', 'p', '{f117b5a2-8247-2934-d574-005e8ca33130}'),
  ('9b2be79c-5ab8-4027-9137-dd8f31991e2b', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '3e8761cd-38a3-b8ea-840c-c13a9994010a', 'events_pkey', 'p', '{2ddf0ed0-f89a-3b24-afcc-9c8319c9fed8}'),
  ('9d105a61-917e-0713-698b-b5d90d3cdbdb', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '761a8c8b-4efc-ea95-bcca-fdb612bc94ee', 'raw_contacts_pkey', 'p', '{cd83ab93-bab8-9ee0-9944-68ebfc6ecb5c}'),
  ('9e5adebf-0dec-d05c-529f-41aa2b6bed9e', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b045c1eb-51ab-c944-688f-1f331ef474fa', 'notes_chunks_pkey', 'p', '{1ce4bfd5-9f70-555a-de1f-6cc6c7f155bd}'),
  ('a425835f-d451-a93b-9f17-12254fb9cab8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '02713893-8c50-4e33-70d1-04b779bd59f9', 'rules_pkey', 'p', '{a14f339f-9b74-20a3-6364-625ec3381701}'),
  ('a6e9aa24-2e3b-1cf5-98b0-b54857b7386d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b37e3ae4-c569-c87c-82c9-a7cbe0e65d6a', 'contacts_pkey', 'p', '{b8914211-8cb7-d84d-d2d6-7c612a0b4732}'),
  ('a739a684-f244-09f5-51a4-0a0db5c1f03a', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '718882cc-a3dd-9ad7-d5bd-6016a11c92b6', 'runtime_schedules_pkey', 'p', '{841a4a79-e506-0394-fcc0-adc25d2c4819}'),
  ('a91f1799-4507-8d81-c953-31fab3d14d3d', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'f9e551e5-49a7-4224-f1dd-02687d64cab3', 'runtime_configs_pkey', 'p', '{4f7ca37f-5715-c234-0435-3ac20b359291}'),
  ('ae724665-c05c-9133-3f91-731b8ef6c7b3', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'e2181478-1f0a-b1fa-32f6-31fc65f451f9', 'conversations_pkey', 'p', '{7932da91-b4aa-05b5-28e3-995ae2f149f7}'),
  ('c098b3a9-52ae-e8f8-d279-6556eab0e959', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'ba6c92f4-e26c-e924-8b2a-8b3383518e2b', 'venue_links_pkey', 'p', '{7fd3ba67-de35-0f7e-d59f-ae8e85afb876}'),
  ('c16bf7e9-982e-f438-0bd6-1d46d0992b10', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '69cab15d-af50-de5b-3368-3232167995a6', 'places_pkey', 'p', '{1ca4ef40-184a-c13c-ba8a-c25792e9e51c}'),
  ('c1f348bb-c117-b503-8f2e-c3e08b6e67af', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b8b7db98-4503-435e-a4b7-8120b30ff05f', 'interactions_pkey', 'p', '{2f468219-ea0c-7277-57ef-2cf348185567}'),
  ('c3725523-6559-57c1-867e-1edada83c6dd', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'c4ecf0fc-1a51-f08a-c1ef-4d3b01498c4a', 'documents_pkey', 'p', '{bfa2e275-c1e3-7f8e-26c7-bd9feb732fae}'),
  ('c61a8a9f-e972-3e6f-fa4c-95986ccc9512', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'b167b913-3c89-26a8-d16b-fe2569417186', 'company_links_pkey', 'p', '{09971b39-1a80-6236-b953-cf1145221e18}'),
  ('c8eb7971-0115-e712-c96a-56c4de52b092', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '05308e86-c15c-552e-a2de-cf11d659b5dc', 'companies_pkey', 'p', '{a5c25e2b-86a9-4195-7e6c-6f4f3611a2a3}'),
  ('ccdfd5aa-cb0d-8cf6-d62d-ddbe0a22a230', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'ac48e393-eb89-8217-723f-35c6ec3b50ad', 'contacts_chunks_pkey', 'p', '{d61a7cbf-248e-3ae2-735d-0a300a8e7d55}'),
  ('cd5da4b2-1ab4-1a21-c7e3-587d1b5d4f82', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '205b9fbb-809b-aeda-eab0-2f38dee69456', 'autonomy_records_pkey', 'p', '{c85eecc3-bba5-e14e-9941-cdd6c20f47a0}'),
  ('cf9539c1-a95a-c366-2186-27b3a647f870', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'db5cbafd-488a-2af0-3322-0a05cba1a2a7', 'contact_phones_pkey', 'p', '{02f2032a-1550-47c9-e5de-bd3abd5e8373}'),
  ('e52abc2c-c4dd-28c2-53d4-d7bf5b87bd56', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'a306e1a1-47d2-e39d-0d66-1cfb91f9440f', 'agent_logs_pkey', 'p', '{6e067228-0960-ac89-40a1-d5d56608d83f}'),
  ('eaa0e897-6839-888d-641a-7a01bbe7b17f', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', '085c6aac-65b6-7a11-6d6f-12176330d20f', 'memories_pkey', 'p', '{861facf6-49b0-a127-1d80-ffcad383d21d}'),
  ('f6618b1e-7f82-a74a-f05e-ce85e4b296b8', '019ddc1e-68db-79cd-9cdb-45c3fccb11fe', 'a6eba12a-dc70-dfc0-54c0-d4bb26bc42df', 'trips_pkey', 'p', '{1beaac11-aa6f-0053-3dca-7c48373b8c85}');


SET session_replication_role TO DEFAULT;


