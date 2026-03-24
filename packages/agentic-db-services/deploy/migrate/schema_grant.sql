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
  ('019d21f8-20b9-7fcf-9574-0cfe2c2f29fc', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-209b-7077-813e-e6f6707463df', 'administrator'),
  ('019d21f8-20cb-7388-a701-1a68d5ff771e', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-209b-7077-813e-e6f6707463df', 'authenticated'),
  ('019d21f8-20dd-72bc-9a63-6a701dc27de7', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-209b-7077-813e-e6f6707463df', 'anonymous'),
  ('019d21f8-2142-759e-8c5a-ee600e09ccbe', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-209c-7cec-9f66-64c5101ae6b2', 'administrator'),
  ('019d21f8-2150-7dac-8cf0-8d5c48cc6890', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-209c-7cec-9f66-64c5101ae6b2', 'authenticated'),
  ('019d21f8-215f-7b1a-b640-b1223a89cea5', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-209c-7cec-9f66-64c5101ae6b2', 'anonymous'),
  ('019d21f8-21bf-778c-af3a-04467bdd483f', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-21b1-7a51-b694-96cca3ed6960', 'administrator'),
  ('019d21f8-21ce-7743-ae1a-a884942d5402', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-21b1-7a51-b694-96cca3ed6960', 'authenticated'),
  ('019d21f8-21dd-7e65-ad16-6f6c58600b00', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-21b1-7a51-b694-96cca3ed6960', 'anonymous'),
  ('019d21f8-223a-726d-b377-2faae8eb432a', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-222d-73f0-a4cc-0209282faedd', 'administrator'),
  ('019d21f8-2248-700a-bd75-1a65f2078e33', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-222d-73f0-a4cc-0209282faedd', 'authenticated'),
  ('019d21f8-2256-7a20-83ab-49a952796f21', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-222d-73f0-a4cc-0209282faedd', 'anonymous'),
  ('019d21f8-22be-7d16-bd8e-32faee173a1a', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-22b1-7c5e-a77f-41d8b2cb5317', 'administrator'),
  ('019d21f8-22cf-7cae-85d1-c40222b5e740', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-22b1-7c5e-a77f-41d8b2cb5317', 'authenticated'),
  ('019d21f8-22e0-7d8c-b26e-c1f0a176b567', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-22b1-7c5e-a77f-41d8b2cb5317', 'anonymous'),
  ('019d21f8-2663-788d-becc-44db5fdc1be5', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2657-7bef-9962-72063119a6ea', 'administrator'),
  ('019d21f8-2674-704d-ab30-61f3591ef3ab', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2657-7bef-9962-72063119a6ea', 'authenticated'),
  ('019d21f8-2683-7e99-a6b1-fd4d0c5679cf', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2657-7bef-9962-72063119a6ea', 'anonymous'),
  ('019d21f8-2853-7a72-ab71-81391ea7e949', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2849-7219-9483-a75d7bafa769', 'administrator'),
  ('019d21f8-2862-7be8-aeb8-9a7e8286e3ed', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2849-7219-9483-a75d7bafa769', 'authenticated'),
  ('019d21f8-2872-7aba-afc6-dca97e5160e1', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2849-7219-9483-a75d7bafa769', 'anonymous'),
  ('019d21f8-28d6-7213-aeea-4719ddea76ae', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-28c8-7b62-b93c-4f08c2b4da92', 'administrator'),
  ('019d21f8-28e4-7db0-b426-730e4e092135', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-28c8-7b62-b93c-4f08c2b4da92', 'authenticated'),
  ('019d21f8-28f4-7a19-85e5-780a2eb5a2e8', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-28c8-7b62-b93c-4f08c2b4da92', 'anonymous'),
  ('019d21f8-2bf7-79d8-9da1-0b8c4cae2f95', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2bec-79f0-a7bb-5e0d6e773656', 'administrator'),
  ('019d21f8-2c06-7728-abd3-9da330945678', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2bec-79f0-a7bb-5e0d6e773656', 'authenticated'),
  ('019d21f8-2c15-77a5-be15-3234def205c6', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2bec-79f0-a7bb-5e0d6e773656', 'anonymous'),
  ('019d21f8-2c76-714b-b69e-28136105c051', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2c68-7475-97d5-d1e68cdff909', 'administrator'),
  ('019d21f8-2c85-74b4-a2d6-cb3d754bcd7f', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2c68-7475-97d5-d1e68cdff909', 'authenticated'),
  ('019d21f8-2c95-711e-9401-3d48253a53a2', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2c68-7475-97d5-d1e68cdff909', 'anonymous'),
  ('019d21f8-2f71-789f-bfe7-901e717bf225', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2f64-7538-a3ae-5d1d0acf8c05', 'administrator'),
  ('019d21f8-2f82-7976-ba25-edf42f25cd17', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2f64-7538-a3ae-5d1d0acf8c05', 'authenticated'),
  ('019d21f8-2f96-769e-83ce-708ef57ebb5f', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-2f64-7538-a3ae-5d1d0acf8c05', 'anonymous'),
  ('019d21f8-3e50-7f26-99a0-ecd9756c5a59', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3e3c-75cf-a776-8578687f0b50', 'administrator'),
  ('019d21f8-3e65-7ffb-a6bd-186a71dd9166', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3e3c-75cf-a776-8578687f0b50', 'authenticated'),
  ('019d21f8-3e77-75a2-97b7-cfcfa98588f1', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3e3c-75cf-a776-8578687f0b50', 'anonymous'),
  ('019d21f8-3eec-7c40-a0d4-5fbe787d2d82', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3eda-7130-ac10-5a5b0584deef', 'administrator'),
  ('019d21f8-3efd-7e72-8c14-2dfbbd810f0f', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3eda-7130-ac10-5a5b0584deef', 'authenticated'),
  ('019d21f8-3f0e-7d96-b59a-f27cd534c246', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-3eda-7130-ac10-5a5b0584deef', 'anonymous'),
  ('019d21f8-47e4-73a2-b5b8-36ecc7c2dfce', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-47d6-7cda-9767-53fc84de7a58', 'administrator'),
  ('019d21f8-47f5-7418-ba3a-526e50c9cdab', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-47d6-7cda-9767-53fc84de7a58', 'authenticated'),
  ('019d21f8-4806-7b4d-a0e2-03a11f9b23ef', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-47d6-7cda-9767-53fc84de7a58', 'anonymous'),
  ('019d21f8-487c-72cb-93e7-8185119f2309', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-486b-7ceb-b5f6-e86b410c0fd5', 'administrator'),
  ('019d21f8-4890-7d51-aaa9-04dd9891f720', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-486b-7ceb-b5f6-e86b410c0fd5', 'authenticated'),
  ('019d21f8-48a2-79e0-95b3-1a9091c67659', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-486b-7ceb-b5f6-e86b410c0fd5', 'anonymous'),
  ('019d21f8-9f92-7dc3-878b-c7e696accb65', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-9f80-7195-b2bd-67a8c0cb2d04', 'administrator'),
  ('019d21f8-9fa8-705c-8fd3-bf1d202e9a85', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-9f80-7195-b2bd-67a8c0cb2d04', 'authenticated'),
  ('019d21f8-9fbd-757a-95f0-8bf5b554559a', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-9f80-7195-b2bd-67a8c0cb2d04', 'anonymous'),
  ('019d21f8-a2bc-71a1-8402-0ab716e8851b', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-a2a9-75f2-8c2a-84a537139f8c', 'administrator'),
  ('019d21f8-a2d3-7813-b133-f0e0d5735984', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-a2a9-75f2-8c2a-84a537139f8c', 'authenticated'),
  ('019d21f8-a2e9-77ed-8582-b09da4dbdcdf', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-a2a9-75f2-8c2a-84a537139f8c', 'anonymous'),
  ('019d21f8-b207-7a6d-8e5e-e5bc9f7052ea', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b1f5-74c3-85a2-6d4695e3539d', 'administrator'),
  ('019d21f8-b21c-7abd-82d7-4622d9c74af5', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b1f5-74c3-85a2-6d4695e3539d', 'authenticated'),
  ('019d21f8-b232-7a9a-9465-0884d2cb87cd', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b1f5-74c3-85a2-6d4695e3539d', 'anonymous'),
  ('019d21f8-b5b6-75d1-b462-229d1c2754b7', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b5a3-7a53-bfd4-b7a0cfbc6b77', 'administrator'),
  ('019d21f8-b5cc-7241-bbf3-80dae171062e', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b5a3-7a53-bfd4-b7a0cfbc6b77', 'authenticated'),
  ('019d21f8-b5e0-78b7-a383-fd04e96b1769', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b5a3-7a53-bfd4-b7a0cfbc6b77', 'anonymous'),
  ('019d21f8-b6f0-7499-be1c-b7c10d35a18d', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b6da-7128-8ff8-541fbe088f3a', 'administrator'),
  ('019d21f8-b706-7021-85e6-f56944115b75', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b6da-7128-8ff8-541fbe088f3a', 'authenticated'),
  ('019d21f8-b71a-7a53-aaeb-a7870dda9da8', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b6da-7128-8ff8-541fbe088f3a', 'anonymous'),
  ('019d21f8-b7ba-7a64-88a6-4f6427909f67', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b7a5-7ca0-8d11-ff90d2d1dcb7', 'administrator'),
  ('019d21f8-b7d0-705b-8120-cba0a885ad74', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b7a5-7ca0-8d11-ff90d2d1dcb7', 'authenticated'),
  ('019d21f8-b7e7-71c7-b63e-b414824cc523', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-b7a5-7ca0-8d11-ff90d2d1dcb7', 'anonymous'),
  ('019d21f8-c4a0-7dee-9f9b-b509ca8442f5', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c48d-763c-bfb7-fd044a8aa014', 'administrator'),
  ('019d21f8-c4b8-728e-b926-eb4b7b497757', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c48d-763c-bfb7-fd044a8aa014', 'authenticated'),
  ('019d21f8-c4cf-786d-9217-0b731bb35a7d', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c48d-763c-bfb7-fd044a8aa014', 'anonymous'),
  ('019d21f8-c57a-7da4-9f30-c7f137c050bc', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c565-71f3-a987-a5c08a5ef7eb', 'administrator'),
  ('019d21f8-c590-7304-9249-3d4f4cc6c187', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c565-71f3-a987-a5c08a5ef7eb', 'authenticated'),
  ('019d21f8-c5a7-7a4a-b940-04b57ceb80fc', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-c565-71f3-a987-a5c08a5ef7eb', 'anonymous'),
  ('019d21f8-d903-7f94-b606-a01c0ff80c69', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-d8ee-7420-8e3f-7a0aa354484c', 'administrator'),
  ('019d21f8-d91b-7704-ab8d-b61151e1e0d0', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-d8ee-7420-8e3f-7a0aa354484c', 'authenticated'),
  ('019d21f8-d932-7b86-9155-dd3eef348f7b', '019d21f8-208e-7d66-9eaa-e762489889c1', '019d21f8-d8ee-7420-8e3f-7a0aa354484c', 'anonymous');


SET session_replication_role TO DEFAULT;


