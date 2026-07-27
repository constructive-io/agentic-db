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
  ('03f4934d-dfab-a5dc-a386-12ecfad2e8b5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '20f0c933-b69d-0703-6775-1ae6ac6ba80b', 'runtime_metrics_pkey', 'p', '{5e18d429-65bf-aaef-7b20-12e61e565d80}', false, false, false, NULL, 'app', '{}'),
  ('063ce4d3-bbfd-36f9-3644-da16bc832e5e', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'fdd2e8c5-22ab-c8d2-1e76-eebe4558db94', 'calendar_attendees_pkey', 'p', '{71a9109c-7ab6-d24d-4acc-72e761591ae7}', false, false, false, NULL, 'app', '{}'),
  ('0dfe31ed-fd19-bfe8-df7a-d1918bd937e5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '52b32dd1-73aa-2076-e4d2-064c97010773', 'raw_contact_emails_pkey', 'p', '{59afe04a-94ad-58a3-bacb-d15ea74d0ff4}', false, false, false, NULL, 'app', '{}'),
  ('0e08b6e1-cf4f-167c-5535-78170e26509d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'cb0c1bfe-5fa1-0101-d7e8-e2dd6d730d75', 'contact_links_pkey', 'p', '{6ca06d43-d2b8-f272-0ef8-4a9db954aa9e}', false, false, false, NULL, 'app', '{}'),
  ('0f0c1aef-19a0-f9a1-2390-498f22dea162', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '738544d1-14ff-37a8-0ce1-7d2aa298baca', 'contact_addresses_pkey', 'p', '{ad4885c9-456d-411e-79c4-8588ee959bb7}', false, false, false, NULL, 'app', '{}'),
  ('12fef78c-423a-7b47-75bc-d5b0bd822880', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'c2f75a4f-e88f-f9f3-e4a7-4dee4b0346e6', 'autonomy_records_pkey', 'p', '{1da4eee8-d600-722c-8807-e19cbb8a751b}', false, false, false, NULL, 'app', '{}'),
  ('15d1ac25-e1aa-f723-335b-62a52c05e558', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '78d08852-1160-0dfb-193a-e1ba85d840cd', 'memories_pkey', 'p', '{bc605a9e-d8c5-fe44-996b-63b409267599}', false, false, false, NULL, 'app', '{}'),
  ('34562c96-cd4b-f7ce-8650-a77cbe0a48b5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'f8826daf-27e6-19b1-24c8-ca314cd9f683', 'images_pkey', 'p', '{e7ab1dbb-5a51-0d83-9295-26307196dce3}', false, false, false, NULL, 'app', '{}'),
  ('3562b4d3-e043-e394-17fc-aef04f6bdd46', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'b6f18c67-1134-b1b8-e7a7-f9e282bd6811', 'events_pkey', 'p', '{873d7c00-69b6-fdc1-8cd5-83953a628f55}', false, false, false, NULL, 'app', '{}'),
  ('3c985702-b7a7-476d-aa61-a03d99f05eb4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '254361f3-61cc-46a7-27fb-1842c1c32efd', 'event_links_pkey', 'p', '{f3f268bf-7b7b-7009-caf7-ed728277312b}', false, false, false, NULL, 'app', '{}'),
  ('3fce8205-4c3a-951b-601d-a31806818d4d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '0d521c88-2b66-2a03-72dd-e44963fadce1', 'prompts_pkey', 'p', '{311468ad-48d0-3644-cc6e-b26af88f614e}', false, false, false, NULL, 'app', '{}'),
  ('3fe5795b-1059-767c-266c-fd2d1922d253', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '11a044ad-dc93-bd9c-836d-135528294212', 'runtime_states_pkey', 'p', '{a2dd489d-5057-2147-a119-7ba8e6f471a9}', false, false, false, NULL, 'app', '{}'),
  ('42981f21-d263-cb39-c6a2-7cd64f2435ae', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'dc4c004e-e4c7-b562-882b-7717c0d5a1a3', 'raw_contacts_pkey', 'p', '{3ed07ecb-a258-f979-7f0a-3fb26d4b584f}', false, false, false, NULL, 'app', '{}'),
  ('47871fb8-825c-c76a-9bae-a794245019dc', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'b6ee757b-d48b-0c2d-e484-322f82a1e167', 'trips_pkey', 'p', '{10cef1a2-890f-cb7d-66ed-a58353442e40}', false, false, false, NULL, 'app', '{}'),
  ('490a7f53-620d-2412-4725-6504e27bf6bd', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '25326833-9328-ae24-802e-93694e99a958', 'runtime_artifacts_pkey', 'p', '{1b63dcd9-98d6-16b4-4324-e4a59317a46f}', false, false, false, NULL, 'app', '{}'),
  ('4b9821ca-3c07-0892-412d-a1710f226b5a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '70837e37-a3d1-bd7e-a0e7-bdcc0dce4a70', 'touchpoints_pkey', 'p', '{456682e1-4ac9-ee3b-f00e-41d013bed81d}', false, false, false, NULL, 'app', '{}'),
  ('4fc413ef-1c58-6596-1b48-ea6a098ef384', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '37730bcd-d659-4296-c0fa-65768b87d9c5', 'notes_pkey', 'p', '{8dd278f4-5974-3f7a-29be-5aa99d914e75}', false, false, false, NULL, 'app', '{}'),
  ('50253eaf-6752-c402-97e6-2bcfa4707cd9', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '800eafad-ad41-27a2-5c7a-749c4638d592', 'projects_pkey', 'p', '{bf76308d-f91c-107a-7647-dee64649180c}', false, false, false, NULL, 'app', '{}'),
  ('52d5d772-eff7-bade-fc3f-7a57b298d9fa', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '53d41bb0-907f-f868-d963-3559c2fa6bc6', 'emails_pkey', 'p', '{6ae58a62-4d8b-3f09-fed1-2f493f89125a}', false, false, false, NULL, 'app', '{}'),
  ('5a10eb82-5899-3fea-ad01-4e65a613e693', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'f06b9092-14ad-59c3-3809-1daf41dd2e69', 'contact_emails_pkey', 'p', '{d2d35dad-2163-3a7d-d90e-6c861c619cad}', false, false, false, NULL, 'app', '{}'),
  ('5c24f9c9-1d4c-b373-5189-bf76b202dc2d', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '37eed52f-fa1c-528c-1f77-688ac4b81f40', 'contacts_pkey', 'p', '{4bbfb134-cd6e-f69c-0c1c-0af0426114d1}', false, false, false, NULL, 'app', '{}'),
  ('5c2ba6cc-c2da-790c-f568-3c339fa3ebe9', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '746b9969-1a47-eeb8-53bc-84a077486db2', 'calendar_events_pkey', 'p', '{b2094a39-e80c-cac3-91e1-c7e44549bf77}', false, false, false, NULL, 'app', '{}'),
  ('636ec89c-19fd-37d2-8912-8cceb7339005', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1e2245d3-229d-5cbd-bb9d-ec52c86fb107', 'runtime_configs_pkey', 'p', '{95e88080-3f6e-1866-df87-d7f94238f779}', false, false, false, NULL, 'app', '{}'),
  ('69ae9b4c-2e7c-4f2b-c765-741021c3329a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '778805ca-5f4e-645b-4b4e-84b972672b96', 'email_attachments_pkey', 'p', '{65bbcb21-0df2-bc12-2507-bfac3b3fa9a7}', false, false, false, NULL, 'app', '{}'),
  ('6c51ca0c-542d-4fdd-a24a-8471685a93e3', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '54d7732a-fd2c-6a90-5c8d-4d8e29920737', 'tool_definitions_pkey', 'p', '{d303f5b3-6c4d-9d57-6f09-06e7e2c0447a}', false, false, false, NULL, 'app', '{}'),
  ('6e7f5a3d-b27c-635c-0103-301f7307de83', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '8fd28309-07ce-4de9-e507-16327cce4800', 'calendars_pkey', 'p', '{d6da5ad4-2212-344a-c31a-4da9675a4341}', false, false, false, NULL, 'app', '{}'),
  ('6f959d60-9af1-8039-38f2-5c98f007f9f3', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '6aecfe4f-4735-7e82-ed25-575c43c3c9a8', 'interactions_pkey', 'p', '{e1292930-1753-4d45-02ba-fcf9ab0c9777}', false, false, false, NULL, 'app', '{}'),
  ('709dfcc2-c204-133f-b7aa-c24a5c3a7182', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '16c95329-4617-34d7-5ca7-2f8db6009beb', 'contact_phones_pkey', 'p', '{021b8554-7e01-c5df-45b5-1b4b6dc29db2}', false, false, false, NULL, 'app', '{}'),
  ('72588038-cb14-dcc1-1c05-e8c48eecefdb', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'a8ee8edb-f56f-778f-e477-b6457bb56aad', 'rules_pkey', 'p', '{9803b86a-8d4e-4676-4859-0f89f78fd2d0}', false, false, false, NULL, 'app', '{}'),
  ('77f15ef7-329b-a276-0a20-2ea3ad16f650', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'bcad7ea4-4984-07ef-ded1-87c45c25047a', 'runtime_schedules_pkey', 'p', '{f9e14d0f-aefe-1472-5d33-31f1e5210259}', false, false, false, NULL, 'app', '{}'),
  ('78de0128-549c-96e6-d706-01fd0818ca92', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '11f15d42-d31c-ea7d-8f44-834098c853e6', 'contacts_chunks_pkey', 'p', '{d38d0cf9-4980-053b-50d0-9e6fb4d94ee9}', false, false, false, NULL, 'app', '{}'),
  ('7e28d421-ba1e-6590-7c24-63ab0bef8c62', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'a5386d62-8fff-f268-b899-998c65441398', 'venue_links_pkey', 'p', '{9583cbca-6bf0-a166-ab60-370f2c5f9b55}', false, false, false, NULL, 'app', '{}'),
  ('7e4b7776-f305-ddb8-7ad0-e7f3eca35647', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'db34f1b8-dc09-e1f7-cebc-e2a5bb1fe11c', 'tasks_pkey', 'p', '{e3bfd188-29bb-89bb-3a3f-11dc1c28bf5f}', false, false, false, NULL, 'app', '{}'),
  ('88b1ce48-eed2-ccc4-ae42-9dd782b4e71c', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '26bd0202-4d25-fc3d-1bbc-3db1553225b9', 'notes_chunks_pkey', 'p', '{5b51369d-7be4-ea7b-1df2-dccc3e2efe1a}', false, false, false, NULL, 'app', '{}'),
  ('9f6e0750-aabf-f260-9a2c-05400928fa94', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '5e8637f4-a7b5-1655-b15a-3518077c69e4', 'venues_pkey', 'p', '{a8a22395-05d3-75bc-3806-d072d11a2d07}', false, false, false, NULL, 'app', '{}'),
  ('a2bcf036-9edb-2498-c8dc-3b3d2368a96a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '27649de5-b2b6-7f06-45b0-924ae3979ecb', 'conversations_pkey', 'p', '{ffab6a9e-4bf7-b65d-403c-38d05064b9d5}', false, false, false, NULL, 'app', '{}'),
  ('a833ba73-8993-affb-787d-a869205169d6', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'bfd0789d-af36-931a-1ad6-642e3cb9ec88', 'runtime_logs_pkey', 'p', '{cb573370-d602-c9c6-697f-f0c5488e5da7}', false, false, false, NULL, 'app', '{}'),
  ('ae56d73c-a99c-98a3-128a-d57e355106b8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'de2b13f3-5772-6b0d-8106-25a34bd55533', 'places_pkey', 'p', '{c8bc5e75-55bf-e088-1caf-bf157ad4b413}', false, false, false, NULL, 'app', '{}'),
  ('b38283ac-c693-57c7-95a0-abb35d84accb', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '867f4e78-903d-d6d4-26e5-71701af6fa30', 'agents_pkey', 'p', '{c2ccdc0f-ca6b-85bf-21bd-900a95a5b268}', false, false, false, NULL, 'app', '{}'),
  ('b693b82f-1846-4f65-254e-681ae1a294e9', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '6735cf0f-2faa-29d0-871d-a996b05936fd', 'goals_pkey', 'p', '{b636ff51-40d5-f375-78a3-7c21bd12c133}', false, false, false, NULL, 'app', '{}'),
  ('bcce706d-1e6a-1c33-0882-e5b60fcb42fb', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '179ca6a2-5b57-eef3-02a7-e228dc451abe', 'company_links_pkey', 'p', '{401181cf-003c-8db4-9c05-290fea1f12c2}', false, false, false, NULL, 'app', '{}'),
  ('be35f981-5873-b39f-6160-bb81a8d5c32a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'cf62f2eb-fbef-e377-3b8c-9e59a2c82e24', 'runtime_events_pkey', 'p', '{e3ff25c4-4a98-6c7c-57a2-5a846798b539}', false, false, false, NULL, 'app', '{}'),
  ('c709b97d-5e96-4bf2-9b3d-84ac2e7a8981', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '8aa3fb51-f8f9-556c-799e-b95eec9abb6c', 'activity_logs_pkey', 'p', '{05a12be4-80a8-2574-9172-65bef53d5db0}', false, false, false, NULL, 'app', '{}'),
  ('cb384438-3561-d71b-530d-a0a2ff098f5c', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'd0e5e94a-f82a-fdd6-c1ec-5f9c5b5756d5', 'companies_pkey', 'p', '{2617661f-3de0-b9c1-e33e-fc974b1b4ad9}', false, false, false, NULL, 'app', '{}'),
  ('ceeed974-22e1-14c4-af16-0240c24279ad', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'a2584282-1ad1-b286-72ed-5600afec4d5d', 'deals_pkey', 'p', '{e993d31e-5aed-1aa2-2802-8072acff90bb}', false, false, false, NULL, 'app', '{}'),
  ('d2d21c59-4cdb-3bb3-2412-ec778e4b1f23', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'e75595e2-db26-8fba-2432-4c20f5de790d', 'expenses_pkey', 'p', '{c1844855-447b-cd7c-6cd0-3ac934cf50c7}', false, false, false, NULL, 'app', '{}'),
  ('d4a7fcbe-29e6-e7cf-98f6-1ed9cd789aea', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'e29932fe-57c1-d343-b6f9-51ccbe69f476', 'raw_contact_urls_pkey', 'p', '{f43d8090-51a2-cd1e-d48a-fbf782a2ef52}', false, false, false, NULL, 'app', '{}'),
  ('d5abc6ea-659c-7467-f127-f9a90bd98bd4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '3c57ba82-ed88-5868-1104-dd009985ef65', 'habits_pkey', 'p', '{a919f33d-b483-6831-c0ca-0bae8f743ee6}', false, false, false, NULL, 'app', '{}'),
  ('dc3f898e-6fe8-56f1-a440-d76294250dc5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'a2457fb7-9a8e-e3e7-13fe-dd078f37cfb7', 'messages_pkey', 'p', '{0d0e3725-742b-236d-d751-d5f98f6c99a3}', false, false, false, NULL, 'app', '{}'),
  ('e41401c1-e6f3-8829-c8dc-001d4fea5b4a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '72aeaf49-08a1-2fb6-5351-ef3469671e70', 'tool_executions_pkey', 'p', '{bebe99ed-8cc6-fa3f-1aec-008ce8c49da7}', false, false, false, NULL, 'app', '{}'),
  ('e624c7f5-3d1d-6d24-c721-ca5c97a862b5', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'af65f378-c673-f90d-2271-b5e66bcd7ec7', 'raw_contact_phones_pkey', 'p', '{02fc0d2f-5738-aac5-5101-5d3b30c63810}', false, false, false, NULL, 'app', '{}'),
  ('e93c055a-7ea8-f88c-1d6f-9caf4ad6f567', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '58248d32-6fe0-240c-9c60-9213f408fcd0', 'tags_pkey', 'p', '{276533b5-571e-eb35-c818-e98ed09426d0}', false, false, false, NULL, 'app', '{}'),
  ('ea1df2c8-f85b-29f8-d760-091dc67c2cb4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'bd2a1437-8af8-97ac-b324-7315ac909a00', 'email_threads_pkey', 'p', '{18dd7cff-9f64-79b2-8baa-e8dbbe7e2139}', false, false, false, NULL, 'app', '{}'),
  ('eb2c7a1f-eee8-1f45-b443-87f133a211f4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'dd7678a4-af1e-ad10-9b69-12bc46bc7a66', 'agent_logs_pkey', 'p', '{d7ed7afa-0d96-7c8f-5821-ea15493c4abe}', false, false, false, NULL, 'app', '{}'),
  ('f0782c54-1864-b9e0-7268-6af8969c1adb', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '5108b493-8e50-6922-c7fa-2c9b59728797', 'skills_pkey', 'p', '{f3965a85-e47d-6913-aa82-4f646ad0c69b}', false, false, false, NULL, 'app', '{}'),
  ('f0dc315c-9ff9-80a1-625c-7fa496197f49', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '0656baa1-4248-6e66-72be-f9ad387c9cf0', 'documents_pkey', 'p', '{e40045bf-631d-931f-db15-db6d6d4bb063}', false, false, false, NULL, 'app', '{}'),
  ('f3ba5c36-3645-0ba6-5449-f7203a591da3', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '50349977-3ce4-e21b-ac01-060a259e4a7a', 'documents_chunks_pkey', 'p', '{9c381bd1-4dd9-41b0-2f3c-0d6213366de2}', false, false, false, NULL, 'app', '{}'),
  ('ffbf64f8-f35b-4df6-54af-3690793208f4', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b0d057d-42cc-3324-6df6-d0236320aa47', 'provider_sync_states_pkey', 'p', '{321f8903-7055-ff24-3a9b-54e0f08d5e54}', false, false, false, NULL, 'app', '{}');


SET session_replication_role TO DEFAULT;


