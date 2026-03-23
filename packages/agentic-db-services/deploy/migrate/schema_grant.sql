-- Deploy: migrate/schema_grant
-- made with <3 @ constructive.io

-- requires: migrate/full_text_search


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

INSERT INTO metaschema_public.schema_grant (
  id,
  database_id,
  schema_id,
  grantee_name
) VALUES
  ('14cec480-79de-abc3-54d9-228414099a39', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0d110a49-7d72-7da5-b7e0-6723b10451ca', 'administrator'),
  ('159868ea-bf99-e003-2c15-5f24a60d7b1b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0d110a49-7d72-7da5-b7e0-6723b10451ca', 'authenticated'),
  ('9f8d0afb-870c-36d0-05a6-52c34c3e3383', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0d110a49-7d72-7da5-b7e0-6723b10451ca', 'anonymous'),
  ('b90657d2-3881-a849-2ece-e2aa8f03f8fd', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b24bcaa5-c86c-47d1-8a22-44a1add68332', 'administrator'),
  ('555a8612-e50d-f3c3-16e9-284b4a9e83f7', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b24bcaa5-c86c-47d1-8a22-44a1add68332', 'authenticated'),
  ('5f303260-a487-14c3-165a-a523b6b41e74', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b24bcaa5-c86c-47d1-8a22-44a1add68332', 'anonymous'),
  ('0b561c66-a917-a616-c46f-341c60eca8c3', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '57f59ebf-2bbd-02cc-078c-24de57b20d72', 'administrator'),
  ('90d7fe23-bef1-d25c-42a0-30b35fed9dd5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '57f59ebf-2bbd-02cc-078c-24de57b20d72', 'authenticated'),
  ('16473f5f-e24c-912c-75d0-f864fc16c861', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '57f59ebf-2bbd-02cc-078c-24de57b20d72', 'anonymous'),
  ('14fbbcbf-084c-9332-9c2a-5964f8529896', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '026ebbb8-29d6-6943-7c7e-8fe5495c8959', 'administrator'),
  ('734995d1-3854-ce8c-6f77-ed781a43bb54', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '026ebbb8-29d6-6943-7c7e-8fe5495c8959', 'authenticated'),
  ('cd96833c-a514-88a3-d4ec-dd51e6cdb191', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '026ebbb8-29d6-6943-7c7e-8fe5495c8959', 'anonymous'),
  ('0363f2f7-e3e0-e908-6e9a-410af31df72f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e3016d98-2f74-e10d-e261-1f344b73221c', 'administrator'),
  ('a462a589-9f29-f9ff-1efd-d1b4b3779f91', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e3016d98-2f74-e10d-e261-1f344b73221c', 'authenticated'),
  ('52dc6102-6553-28c8-9325-adc83bb54b0a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'e3016d98-2f74-e10d-e261-1f344b73221c', 'anonymous'),
  ('69a6f192-8f69-51d4-becb-97c128508c74', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', 'administrator'),
  ('06bf4e53-6fe9-2d01-c41e-ff85f1be6112', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', 'authenticated'),
  ('8a01b3d7-5f9f-dfe1-3d0d-37590e48f56b', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'b6a5ec83-0ccd-ffd2-6986-03855824ead2', 'anonymous'),
  ('418cdc0b-a3cc-638a-8946-bdeef02fb0bf', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', 'administrator'),
  ('e9d7e6f3-2482-7626-b967-ca038ffe1c84', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', 'authenticated'),
  ('7cf6c001-4546-9c28-8c6f-df3dd1c41c44', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1eb676bd-efec-b03f-c481-02d66f5661b4', 'anonymous'),
  ('9fd49cc0-836b-4239-eb08-8e2fb5aa5a58', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '97c5db8e-f200-bbf1-5070-324f26b08e19', 'administrator'),
  ('168ee34c-a9c5-4c70-7a2c-037dd671d1c1', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '97c5db8e-f200-bbf1-5070-324f26b08e19', 'authenticated'),
  ('b5b65b95-28f3-ce45-bbb9-dfe68761b1b0', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '97c5db8e-f200-bbf1-5070-324f26b08e19', 'anonymous'),
  ('d3865482-4291-8a5b-ef78-09cbc9de113a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', 'administrator'),
  ('2f7f00cb-0914-e100-941b-ecd181531035', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', 'authenticated'),
  ('f0ddbf86-fd5d-4328-9e8b-e1d641c2317e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'd1dc6b60-1fea-6c67-edaf-861a5409e953', 'anonymous'),
  ('60e68f28-a246-d884-5c89-6e8600967c43', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '80bd8b60-df08-4f5a-d8aa-1e96eaa35431', 'administrator'),
  ('df33b2a3-9e4f-5973-0bd2-cd361bc3c654', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '80bd8b60-df08-4f5a-d8aa-1e96eaa35431', 'authenticated'),
  ('caee7328-458f-7fd6-3194-467d78f92492', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '80bd8b60-df08-4f5a-d8aa-1e96eaa35431', 'anonymous'),
  ('3a1b9a96-70a9-540e-1b34-ab7be9dc3ef5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '363e32c6-5928-0187-5bf0-d6e3c60641bb', 'administrator'),
  ('eebca8c3-305f-6d5e-6825-308510e4b2e2', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '363e32c6-5928-0187-5bf0-d6e3c60641bb', 'authenticated'),
  ('aaa6d77b-0513-a625-78ce-bd0e3acc0005', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '363e32c6-5928-0187-5bf0-d6e3c60641bb', 'anonymous'),
  ('dce360f7-758e-fc85-6c8b-0bbfbc825348', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', 'administrator'),
  ('2a8e44fb-e46a-a8d3-4048-60301ad91925', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', 'authenticated'),
  ('830aa27d-086a-c000-052b-816d7bb61550', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '87da6cfc-f93f-9650-e6d0-ee5ec4efcb31', 'anonymous'),
  ('fd2db8f8-7a37-7d5f-86f5-a201b20f01fb', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'fe765cb3-c2e5-fc6a-c1df-d034dbcae169', 'administrator'),
  ('e2d48125-1bb6-0efe-9323-0c574dd7ed86', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'fe765cb3-c2e5-fc6a-c1df-d034dbcae169', 'authenticated'),
  ('881731ec-d523-60f1-7ca9-28099c893b7d', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'fe765cb3-c2e5-fc6a-c1df-d034dbcae169', 'anonymous'),
  ('9a6bc095-857a-eac0-5a66-e863a2d31d4f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', 'administrator'),
  ('ac9ece32-6aa3-5271-d163-50bb41c0f118', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', 'authenticated'),
  ('92dacab8-879c-afe0-52f4-7af24babdd8a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'dcd1ab85-9748-27a6-2adf-15fffd2ac95d', 'anonymous'),
  ('9775b926-e269-30db-cd19-e2041eeeecd5', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '23064c1c-d74e-fbca-ad66-0717f46b7fee', 'administrator'),
  ('108ef864-c6cb-38aa-57f7-208fde9facb2', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '23064c1c-d74e-fbca-ad66-0717f46b7fee', 'authenticated'),
  ('b468a1d5-e317-3cd4-0784-21c1ea6eb872', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '23064c1c-d74e-fbca-ad66-0717f46b7fee', 'anonymous'),
  ('3abf8573-a0ec-cc23-fc56-184670d3ed47', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1fa932b6-21cb-37ec-8e38-4187880b3d18', 'administrator'),
  ('1593638a-b097-a493-cb0b-df27b2afba3f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1fa932b6-21cb-37ec-8e38-4187880b3d18', 'authenticated'),
  ('882a9146-7e70-0ef2-f4bb-95dcbb3c22f6', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1fa932b6-21cb-37ec-8e38-4187880b3d18', 'anonymous'),
  ('86e49011-79ba-ecfe-de56-7d1860837374', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1464c5a1-1149-ffdc-99c9-e0a4a2e561f2', 'administrator'),
  ('a369f016-8f88-80c6-cf75-8e7d35526672', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1464c5a1-1149-ffdc-99c9-e0a4a2e561f2', 'authenticated'),
  ('2b0e63e9-4a65-ae9f-385a-00620c9eb5d4', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '1464c5a1-1149-ffdc-99c9-e0a4a2e561f2', 'anonymous'),
  ('625747c1-18d5-618d-1cd3-dacfb5bbde16', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0f25cdd0-2259-3a86-08c3-4235c5c30be5', 'administrator'),
  ('f21fc9a5-6473-3564-57b6-5944d6c49f88', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0f25cdd0-2259-3a86-08c3-4235c5c30be5', 'authenticated'),
  ('6bfbffe9-e385-0106-ee7e-bd545ac0355f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '0f25cdd0-2259-3a86-08c3-4235c5c30be5', 'anonymous'),
  ('032ae2da-61c6-d24b-42e7-e3d0c9431863', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', 'administrator'),
  ('a57f5c30-6988-3c96-b3c8-e7cde5d27adb', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', 'authenticated'),
  ('5d4e7f99-056a-6124-a0e2-f830a358c191', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '4a9a13b9-d2a2-cc30-855d-7b0727cfcc25', 'anonymous'),
  ('c1877b18-6bec-a5ad-9313-c808fe770eb9', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'administrator'),
  ('a1172d1b-d4af-27b7-c0af-4674a2f554ef', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'authenticated'),
  ('c932582e-290e-89b4-8ee7-5e9868b14537', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'f8aa7ca8-38f6-d759-7629-8b4d99b9eca7', 'anonymous'),
  ('dacef888-13ec-6f33-c865-7cc65179c062', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'c059c259-67d4-6198-4cdf-badacdd556e5', 'administrator'),
  ('1c437e0a-c77d-5640-8590-a78fdec8b26e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'c059c259-67d4-6198-4cdf-badacdd556e5', 'authenticated'),
  ('893fe958-c494-b57d-0075-88eb5861e8af', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', 'c059c259-67d4-6198-4cdf-badacdd556e5', 'anonymous'),
  ('d1734c09-9b74-dd7a-ec47-528053213c3f', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', 'administrator'),
  ('1d4df913-825a-9934-9f48-712fb90afced', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', 'authenticated'),
  ('01288471-fa17-436d-56af-13f3fb19e2ba', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '66adacfb-2f2a-8624-f08e-87d9239e2c72', 'anonymous'),
  ('84b2a757-da5c-af40-0161-c63b980f79c7', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '636ed544-85b9-bc40-15d5-32f32727d851', 'administrator'),
  ('cb9ab34f-faff-ac49-7b85-6d423af14c5a', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '636ed544-85b9-bc40-15d5-32f32727d851', 'authenticated'),
  ('98fbde3e-3eea-fca8-7483-b9b350dbed26', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '636ed544-85b9-bc40-15d5-32f32727d851', 'anonymous'),
  ('f9fe32eb-d180-db2e-cfdc-9ac068e05d28', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '86191c7a-22fc-db1f-3808-cd00ead6a666', 'administrator'),
  ('c99d7525-041d-64f2-834f-0dfb338f9b3e', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '86191c7a-22fc-db1f-3808-cd00ead6a666', 'authenticated'),
  ('4c2a2a15-b3b5-a083-dd28-9a53cf89d2ca', '7997e0c0-da09-b5a5-e76b-4da0ed76c904', '86191c7a-22fc-db1f-3808-cd00ead6a666', 'anonymous');


SET session_replication_role TO DEFAULT;


