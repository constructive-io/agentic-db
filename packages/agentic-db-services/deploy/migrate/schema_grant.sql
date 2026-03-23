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
  ('019d19cf-0240-7cd4-9caa-d408e4c22622', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-021e-7cde-bdc7-7c4ab8669c9d', 'administrator'),
  ('019d19cf-0252-7ca3-8baa-e634d04beafa', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-021e-7cde-bdc7-7c4ab8669c9d', 'authenticated'),
  ('019d19cf-0262-780f-a1f9-2e7d32528fc7', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-021e-7cde-bdc7-7c4ab8669c9d', 'anonymous'),
  ('019d19cf-02d2-7e8e-9103-f690499b95a6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0220-7644-9117-ef242327829d', 'administrator'),
  ('019d19cf-02e3-71de-9269-86dd4d0ae3ad', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0220-7644-9117-ef242327829d', 'authenticated'),
  ('019d19cf-02f3-7b84-acc7-b341f33f406d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0220-7644-9117-ef242327829d', 'anonymous'),
  ('019d19cf-035c-7225-9a21-299072570860', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-034d-76ab-a3fe-68d1866f8eb7', 'administrator'),
  ('019d19cf-036c-7484-992e-89b1d69d8dae', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-034d-76ab-a3fe-68d1866f8eb7', 'authenticated'),
  ('019d19cf-037c-7f71-9f6b-28a46e0ef726', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-034d-76ab-a3fe-68d1866f8eb7', 'anonymous'),
  ('019d19cf-03e3-7f80-adf0-1d0179219f21', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-03d5-7bdc-b0c9-0cf820b45932', 'administrator'),
  ('019d19cf-03f4-78eb-be6a-59bc9711d86a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-03d5-7bdc-b0c9-0cf820b45932', 'authenticated'),
  ('019d19cf-0405-7241-9612-cd70cce11e30', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-03d5-7bdc-b0c9-0cf820b45932', 'anonymous'),
  ('019d19cf-0479-7692-a951-a33d1a37c4c9', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-046b-702e-bf02-a9129bf1379d', 'administrator'),
  ('019d19cf-0489-7365-98a8-1b93761e0ef8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-046b-702e-bf02-a9129bf1379d', 'authenticated'),
  ('019d19cf-049c-7c65-bac1-aa37591b1be5', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-046b-702e-bf02-a9129bf1379d', 'anonymous'),
  ('019d19cf-0862-765d-9eef-4ec039a23d64', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0856-718d-a159-1e8137d9e65b', 'administrator'),
  ('019d19cf-0873-75ff-af18-a32501ec7e34', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0856-718d-a159-1e8137d9e65b', 'authenticated'),
  ('019d19cf-0884-7160-9403-b000ad9131e5', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0856-718d-a159-1e8137d9e65b', 'anonymous'),
  ('019d19cf-0a6d-73d9-ac1c-1ff669dc92d3', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0a61-7a5a-9145-45b1f55c0d38', 'administrator'),
  ('019d19cf-0a81-7bb8-abcb-4547a0f38fbe', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0a61-7a5a-9145-45b1f55c0d38', 'authenticated'),
  ('019d19cf-0a95-7b19-b904-1887299aaf7a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0a61-7a5a-9145-45b1f55c0d38', 'anonymous'),
  ('019d19cf-0b05-7ae3-96ad-eb6de86dc8f6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0af6-787e-8582-98cb6a40893e', 'administrator'),
  ('019d19cf-0b16-73a1-9527-b032abed274c', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0af6-787e-8582-98cb6a40893e', 'authenticated'),
  ('019d19cf-0b27-7380-9d89-0463ef07eab2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0af6-787e-8582-98cb6a40893e', 'anonymous'),
  ('019d19cf-0e93-7c69-a4e3-7c2ce185781f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0e86-7eb9-b558-3e6f5c17954b', 'administrator'),
  ('019d19cf-0ea5-73aa-ad11-9c3c81b4fd8e', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0e86-7eb9-b558-3e6f5c17954b', 'authenticated'),
  ('019d19cf-0eb8-7089-9330-df0a5f0ea886', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0e86-7eb9-b558-3e6f5c17954b', 'anonymous'),
  ('019d19cf-0f28-7a6f-9b54-28eed04c8af2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0f18-7d02-acfc-a50c6bdcb569', 'administrator'),
  ('019d19cf-0f42-702b-b4a9-a62db473492d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0f18-7d02-acfc-a50c6bdcb569', 'authenticated'),
  ('019d19cf-0f56-7eaa-a886-8904fbd2265f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0f18-7d02-acfc-a50c6bdcb569', 'anonymous'),
  ('019d19cf-1278-7f1d-9bb2-14ac60439d30', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-126a-7c9b-a114-1a6fdeac1be9', 'administrator'),
  ('019d19cf-128a-7bb9-a93f-e1e9ed822ac1', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-126a-7c9b-a114-1a6fdeac1be9', 'authenticated'),
  ('019d19cf-129c-7766-a448-d4d2cb3b4b15', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-126a-7c9b-a114-1a6fdeac1be9', 'anonymous'),
  ('019d19cf-2554-7e48-8ed5-7456570c4c99', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2546-7c03-8ac0-024b62131d47', 'administrator'),
  ('019d19cf-2567-71b0-8d55-1d8724cdcfb8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2546-7c03-8ac0-024b62131d47', 'authenticated'),
  ('019d19cf-2578-7d72-b8e8-0cf07825eae4', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2546-7c03-8ac0-024b62131d47', 'anonymous'),
  ('019d19cf-25ee-77c4-913f-cf21169ff724', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-25dd-7bec-8590-2f1edefaa365', 'administrator'),
  ('019d19cf-2602-7b10-9988-84967d1c30a5', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-25dd-7bec-8590-2f1edefaa365', 'authenticated'),
  ('019d19cf-2615-775b-a6ff-8c875484a192', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-25dd-7bec-8590-2f1edefaa365', 'anonymous'),
  ('019d19cf-2fb2-7b32-ae41-7c8bbdeb74af', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2fa0-7f9c-94ff-c9c0d905b63b', 'administrator'),
  ('019d19cf-2fc6-756e-a36e-64d504edf1a0', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2fa0-7f9c-94ff-c9c0d905b63b', 'authenticated'),
  ('019d19cf-2fd8-7e88-899e-62f2d910cacf', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-2fa0-7f9c-94ff-c9c0d905b63b', 'anonymous'),
  ('019d19cf-3059-7292-9b3a-34bcb5f95dfa', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-3043-7361-90a1-6e44583c87f2', 'administrator'),
  ('019d19cf-306b-73eb-b1ab-06c871ca1f8f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-3043-7361-90a1-6e44583c87f2', 'authenticated'),
  ('019d19cf-307e-7401-b64f-331719278f5f', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-3043-7361-90a1-6e44583c87f2', 'anonymous'),
  ('019d19cf-9dcc-703c-8dc9-b94c04fdd8ae', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-9db8-7a4b-a9fd-d4a1c61dc063', 'administrator'),
  ('019d19cf-9de1-7f55-b8ce-547c4fd45ccd', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-9db8-7a4b-a9fd-d4a1c61dc063', 'authenticated'),
  ('019d19cf-9df9-7479-bf0e-2552b97ae5ec', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-9db8-7a4b-a9fd-d4a1c61dc063', 'anonymous'),
  ('019d19cf-a137-767c-b729-ebb8a3d1240b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-a124-794b-b34d-0036b3830517', 'administrator'),
  ('019d19cf-a14e-7e0f-a3cb-aec5e09eecc2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-a124-794b-b34d-0036b3830517', 'authenticated'),
  ('019d19cf-a166-7333-9d29-29572006efa8', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-a124-794b-b34d-0036b3830517', 'anonymous'),
  ('019d19cf-b1b6-7c88-95e4-7a34254df31b', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b1a2-7b27-8e25-23bafd3b2a95', 'administrator'),
  ('019d19cf-b1cd-71e4-9d0f-9fc3afdb9604', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b1a2-7b27-8e25-23bafd3b2a95', 'authenticated'),
  ('019d19cf-b1e4-76b9-bf00-b99500fd1751', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b1a2-7b27-8e25-23bafd3b2a95', 'anonymous'),
  ('019d19cf-b5bf-7208-990b-6a3939e72b2a', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b5aa-7a61-8218-1831188e4aa5', 'administrator'),
  ('019d19cf-b5d7-7d80-a541-a6cc6f1844e6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b5aa-7a61-8218-1831188e4aa5', 'authenticated'),
  ('019d19cf-b5ef-7015-a94a-cd8a21bdebc6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b5aa-7a61-8218-1831188e4aa5', 'anonymous'),
  ('019d19cf-b717-79d5-8957-ff4b843fe260', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b6ff-7624-ae4f-10e3952b1e72', 'administrator'),
  ('019d19cf-b72f-77d8-9e53-5aef01171bfd', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b6ff-7624-ae4f-10e3952b1e72', 'authenticated'),
  ('019d19cf-b747-7268-bc82-abd827f600ef', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b6ff-7624-ae4f-10e3952b1e72', 'anonymous'),
  ('019d19cf-b7f5-758d-92bb-f80483dd0fd2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b7de-7e83-8ff2-4bbc282a7c89', 'administrator'),
  ('019d19cf-b80d-7b7c-ac8a-4cee0f3dac89', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b7de-7e83-8ff2-4bbc282a7c89', 'authenticated'),
  ('019d19cf-b82f-728c-b3c4-a197392897dd', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-b7de-7e83-8ff2-4bbc282a7c89', 'anonymous'),
  ('019d19cf-ce4d-777a-a45e-e5681f06f131', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-ce38-73d6-990e-dbeb412ef697', 'administrator'),
  ('019d19cf-ce67-7693-9106-10f41f68c6bd', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-ce38-73d6-990e-dbeb412ef697', 'authenticated'),
  ('019d19cf-ce81-7205-bcab-93a6a8ad4b67', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-ce38-73d6-990e-dbeb412ef697', 'anonymous'),
  ('019d19cf-cf3a-7e26-a028-109cbccb1861', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-cf22-7e87-8b6c-9e9cb2566956', 'administrator'),
  ('019d19cf-cf52-73ab-b227-43859abc6622', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-cf22-7e87-8b6c-9e9cb2566956', 'authenticated'),
  ('019d19cf-cf6b-754f-8065-65a7065a1b6d', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-cf22-7e87-8b6c-9e9cb2566956', 'anonymous'),
  ('019d19cf-e8a0-75e4-9425-3767274c31bf', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-e88b-7849-a529-c7fa2d84a650', 'administrator'),
  ('019d19cf-e8b7-7021-b630-d072cb9ef2c2', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-e88b-7849-a529-c7fa2d84a650', 'authenticated'),
  ('019d19cf-e8d6-788e-b4d2-2fa3445f44e7', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-e88b-7849-a529-c7fa2d84a650', 'anonymous');


SET session_replication_role TO DEFAULT;


