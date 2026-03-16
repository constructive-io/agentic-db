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
  ('bfc12e92-01e9-4fff-6f88-813de095702c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc174e0-ab72-4925-5ee9-91915c80ae07', 'administrator'),
  ('bfc11148-ff35-4a4b-8464-5594b705adfb', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc174e0-ab72-4925-5ee9-91915c80ae07', 'authenticated'),
  ('bfc12865-2a2d-4f20-9bfe-3173e6d14e25', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc174e0-ab72-4925-5ee9-91915c80ae07', 'anonymous'),
  ('bfc17d12-bac2-463c-2261-8c6497bdbddd', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc177db-8631-42ce-aeb8-748d124a58c3', 'administrator'),
  ('bfc14fb9-9f2f-4de9-9276-35239fc2d4c7', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc177db-8631-42ce-aeb8-748d124a58c3', 'authenticated'),
  ('bfc14161-cd0e-49be-301d-7a2ab4cc3bb7', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc177db-8631-42ce-aeb8-748d124a58c3', 'anonymous'),
  ('bfc1508e-f23d-4756-2949-d4989e52dcc0', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1db41-7d31-47fd-63e9-dfe5d0e1bd61', 'administrator'),
  ('bfc175ca-a26a-4057-ed9c-2fb92f76e62f', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1db41-7d31-47fd-63e9-dfe5d0e1bd61', 'authenticated'),
  ('bfc110ae-899a-4d4e-9881-54a5b2135bae', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1db41-7d31-47fd-63e9-dfe5d0e1bd61', 'anonymous'),
  ('bfc1391b-b2c0-44c9-fe93-0ae095d12b54', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14e35-319a-429d-aab0-d3bfc9f409a4', 'administrator'),
  ('bfc1152e-194b-41b5-5aaf-4195c92b70a9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14e35-319a-429d-aab0-d3bfc9f409a4', 'authenticated'),
  ('bfc158b8-b7f3-480c-6008-3747d833a114', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14e35-319a-429d-aab0-d3bfc9f409a4', 'anonymous'),
  ('bfc1dfe4-a485-4e67-bd80-3742b68db5bc', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1130e-d66c-4f53-1b19-a63641ce65c4', 'administrator'),
  ('bfc17bb7-a742-46ee-d3ad-dbcb1eb189e3', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1130e-d66c-4f53-1b19-a63641ce65c4', 'authenticated'),
  ('bfc195b6-f9d9-448d-6e41-67338d5db2e5', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1130e-d66c-4f53-1b19-a63641ce65c4', 'anonymous'),
  ('bfc1cb97-59a3-494c-30c6-eb8fd67669f2', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', 'administrator'),
  ('bfc1ce02-07a7-485d-5296-b7346c6cd826', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', 'authenticated'),
  ('bfc1393b-9e92-4894-2c85-587e24915410', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19723-899f-453d-575a-d60edcc86e01', 'anonymous'),
  ('bfc1a349-37fc-48c8-c171-eeb053d2fa73', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', 'administrator'),
  ('bfc151d6-07ed-4d1d-47f0-cbc6530b5b6d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', 'authenticated'),
  ('bfc1e582-f306-427c-c503-80980bd12c13', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1817b-ebb4-483c-4f07-fc9ebbeacad9', 'anonymous'),
  ('bfc1ca7d-c0e4-482a-68c2-4404ddeb61d8', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc129e4-d17c-4a8a-b410-e16d12419a4d', 'administrator'),
  ('bfc104d6-ac05-4843-9e1e-9b71c8747016', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc129e4-d17c-4a8a-b410-e16d12419a4d', 'authenticated'),
  ('bfc19edc-9174-4405-a693-60bfae332330', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc129e4-d17c-4a8a-b410-e16d12419a4d', 'anonymous'),
  ('bfc1f779-aa74-4b52-96d0-3b5205305668', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', 'administrator'),
  ('bfc163c2-477b-46d6-aaf5-6ba55b277f5d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', 'authenticated'),
  ('bfc1b259-38c5-4fbc-f885-92b0911ca1fa', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1aad7-6afb-49b2-3154-fe524d813e59', 'anonymous'),
  ('bfc13c45-8bfa-4e83-0cd9-e8fe00ed17bf', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11eab-3ff8-4448-6b3e-3b7222e1da66', 'administrator'),
  ('bfc1b907-0586-4e5d-40f9-3c9aaa490ebc', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11eab-3ff8-4448-6b3e-3b7222e1da66', 'authenticated'),
  ('bfc1c879-d836-4949-7a95-6cc526f4f4e8', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11eab-3ff8-4448-6b3e-3b7222e1da66', 'anonymous'),
  ('bfc1f8ee-e4a8-4476-59c3-e98bb5754017', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc13b6f-0401-4a31-bd38-1d3e2e771636', 'administrator'),
  ('bfc168f0-e032-4e21-aae3-729cebcc8102', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc13b6f-0401-4a31-bd38-1d3e2e771636', 'authenticated'),
  ('bfc16302-13d2-4103-aec4-6e96c1726cf1', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc13b6f-0401-4a31-bd38-1d3e2e771636', 'anonymous'),
  ('bfc13592-eec3-44e1-a4fe-6af12e1c674c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', 'administrator'),
  ('bfc1b87a-a00e-4288-97f0-7bb99f0d7a01', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', 'authenticated'),
  ('bfc11f4e-dd21-46d8-506d-86bfcabdb48b', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1644f-2005-42f2-7502-6b79b5418380', 'anonymous'),
  ('bfc108fe-4ab0-4563-9380-e732f1d03d09', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12466-188e-402f-9505-21943ccb2435', 'administrator'),
  ('bfc1dea0-ac9c-4f0c-7bce-8a9a5f463df4', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12466-188e-402f-9505-21943ccb2435', 'authenticated'),
  ('bfc19361-0c91-4b92-3e97-cec29e0d076f', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12466-188e-402f-9505-21943ccb2435', 'anonymous'),
  ('bfc1b864-b210-4941-01f4-32f147e0a015', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', 'administrator'),
  ('bfc1743e-1a27-4081-b50e-b97b1d5491d1', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', 'authenticated'),
  ('bfc11692-d7e0-43ea-11a4-8126ee5a715a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14b67-c07a-46be-8616-6c64da0d5b76', 'anonymous'),
  ('bfc17a75-9f96-4c15-f3cd-5ca47d3744cf', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1d430-e1ba-45c7-bc9d-78331c98a834', 'administrator'),
  ('bfc108a8-9ce1-4a97-6d0a-d4537df9df08', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1d430-e1ba-45c7-bc9d-78331c98a834', 'authenticated'),
  ('bfc156f5-2324-4897-e802-a77c122e3489', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1d430-e1ba-45c7-bc9d-78331c98a834', 'anonymous'),
  ('bfc10769-cf1d-41b2-9c07-5fb5bea9c68d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc100e0-955f-4a61-8706-95da2886e82a', 'administrator'),
  ('bfc1ea6e-b342-46e0-9ef0-aa3544cabd1d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc100e0-955f-4a61-8706-95da2886e82a', 'authenticated'),
  ('bfc1e192-b856-4e67-2a4a-01071ceccea3', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc100e0-955f-4a61-8706-95da2886e82a', 'anonymous'),
  ('bfc19107-c840-4a56-e197-034da67d2a06', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1edd0-98c3-47df-acaa-c04878b922b4', 'administrator'),
  ('bfc16aa6-6f6d-416b-93bd-cb8ee99eff57', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1edd0-98c3-47df-acaa-c04878b922b4', 'authenticated'),
  ('bfc1a7e9-be65-4150-85c7-4eb672724468', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1edd0-98c3-47df-acaa-c04878b922b4', 'anonymous'),
  ('bfc1d744-aa32-4cee-070f-b69534e67650', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19c6c-15f4-4efc-ecee-aa0c16303577', 'administrator'),
  ('bfc1ed6f-d849-4c57-8325-c47f937ee136', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19c6c-15f4-4efc-ecee-aa0c16303577', 'authenticated'),
  ('bfc12d23-d31d-4f5c-5bf6-4775431902f5', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19c6c-15f4-4efc-ecee-aa0c16303577', 'anonymous'),
  ('bfc17e83-e89f-400e-fdb3-2c9ffeb63054', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12230-ad6e-4e94-6ec2-8add6b1da502', 'administrator'),
  ('bfc189b7-920c-45be-2c09-269b1d9634e1', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12230-ad6e-4e94-6ec2-8add6b1da502', 'authenticated'),
  ('bfc10e0c-bdaa-4073-415d-758b360d7225', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc12230-ad6e-4e94-6ec2-8add6b1da502', 'anonymous'),
  ('bfc1da80-1ff5-4437-460d-e168c1bc9b35', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc157f1-b8a9-4049-ea78-232642a0ffa0', 'administrator'),
  ('bfc1c7aa-a71b-4868-9e06-2685efe71142', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc157f1-b8a9-4049-ea78-232642a0ffa0', 'authenticated'),
  ('bfc1047f-380a-4053-d402-474d163fa6ad', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc157f1-b8a9-4049-ea78-232642a0ffa0', 'anonymous'),
  ('bfc1067c-de6a-4a32-9c28-10f8dd5d62c6', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19237-75e3-4cad-dd4b-ffb4d65f4d2e', 'administrator'),
  ('bfc16e2c-1a37-40cc-0bb5-9b4bbaef53b0', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19237-75e3-4cad-dd4b-ffb4d65f4d2e', 'authenticated'),
  ('bfc1bf06-f3f4-4dd0-00c6-7bfc6cc40d30', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc19237-75e3-4cad-dd4b-ffb4d65f4d2e', 'anonymous'),
  ('bfc13b46-6d96-4c2a-c0ef-86d92e05d0db', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', 'administrator'),
  ('bfc1b0aa-8d1f-48e5-d5f5-a4d24957ebb9', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', 'authenticated'),
  ('bfc1e8d1-656b-4a59-1f58-3dd59d0504b8', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1c6cb-01d0-40c7-179a-20ce7352530d', 'anonymous'),
  ('bfc146b7-3e46-45d1-ed28-dd8088cd62af', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1a717-7122-438d-c06b-60187fd44683', 'administrator'),
  ('bfc16116-6c0f-4a17-66ac-eb71c3114d03', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1a717-7122-438d-c06b-60187fd44683', 'authenticated'),
  ('bfc1013a-20bd-49ec-e156-3b1b86f864aa', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1a717-7122-438d-c06b-60187fd44683', 'anonymous'),
  ('bfc16d7c-6be7-466b-f0cc-88534134452b', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11f94-2f12-4d1a-7ca1-512946bc8f67', 'administrator'),
  ('bfc1688a-b6ce-4b27-307a-65bb4f02b797', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11f94-2f12-4d1a-7ca1-512946bc8f67', 'authenticated'),
  ('bfc18fd8-b5ce-4d21-bec2-1aa276542d29', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc11f94-2f12-4d1a-7ca1-512946bc8f67', 'anonymous');


SET session_replication_role TO DEFAULT;


