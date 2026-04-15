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
  ('019d934f-8a25-717d-afe9-15807e1fe88b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-898e-73d5-9f57-6c8589048db5', 'users_pkey', 'p', '{019d934f-89ce-769a-9000-60d3c5c43fef}'),
  ('019d934f-8bf6-7d7e-9fb2-0a963337b7f8', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8b8d-76a5-997f-e81f50a32a16', 'role_types_pkey', 'p', '{019d934f-8bc4-7242-a62e-492b15ebde73}'),
  ('019d934f-8fb6-75c4-bb0c-f076999967ff', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-8f16-7dfd-a512-9bcd8f7427a5', 'membership_types_pkey', 'p', '{019d934f-8f68-7b3f-9e16-59300db95ef8}'),
  ('019d934f-9396-7d78-9ac8-0126f4a0d294', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-92fc-7d5e-aef9-43e50d7a5049', 'app_permissions_pkey', 'p', '{019d934f-934c-73a0-8d61-90dc7bd0ce43}'),
  ('019d934f-967a-762e-81c4-319e283d8db0', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-95e0-7563-a0c2-31e8310b3a14', 'app_permission_defaults_pkey', 'p', '{019d934f-9628-7a64-bdd7-da94bdf6678c}'),
  ('019d934f-9999-7eaf-8a19-6691552fbf58', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9900-71af-ab32-19d9c1b4f56e', 'app_limits_pkey', 'p', '{019d934f-994f-76ec-ae72-32081ed6f561}'),
  ('019d934f-9b82-784d-a5fd-b05ee1d2f104', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9af1-72b8-b389-574c6930cbd9', 'app_limit_defaults_pkey', 'p', '{019d934f-9b38-74a8-94a6-03d0785cc8fa}'),
  ('019d934f-9e9f-7111-88d1-a99f94f68dc6', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9df9-7a59-a86d-b5b5dc33b0a7', 'app_memberships_pkey', 'p', '{019d934f-9e4b-7a31-ba9e-b67a47fc3534}'),
  ('019d934f-a07a-7375-8439-22293e427211', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-9fe5-75ab-9746-9c7caf466378', 'app_membership_defaults_pkey', 'p', '{019d934f-a02d-77e5-9a56-570830555e80}'),
  ('019d934f-aa97-7bb5-aaf0-44ec5de30d02', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-a9fc-737e-b500-9dd99bcab716', 'app_admin_grants_pkey', 'p', '{019d934f-aa46-7aba-80c0-a5357f42b478}'),
  ('019d934f-ad4e-785d-b832-4885d0e738d6', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-acb8-764b-9cd8-d30e63c54225', 'app_owner_grants_pkey', 'p', '{019d934f-ad02-7c9a-ab81-4596453b94d6}'),
  ('019d934f-b00c-779e-8a38-5bece4725bf5', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-af76-7c06-92ec-3e328c019c6e', 'app_grants_pkey', 'p', '{019d934f-afc0-732c-86ba-82c7b3d65315}'),
  ('019d934f-b6f4-7f8b-ac55-4c5f69447126', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b650-73cc-bdf1-ce421a67eb2d', 'app_steps_pkey', 'p', '{019d934f-b6a4-7d0d-8394-5f48dbc1d569}'),
  ('019d934f-b9c4-7b45-81a8-440c97cecbb5', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-b927-73a0-a67d-89f7789b89a6', 'app_achievements_pkey', 'p', '{019d934f-b975-70a2-be37-70f86250f86b}'),
  ('019d934f-bca1-77f6-a89f-9eb48933a34a', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-bbfe-7270-9f4b-3770020c8714', 'app_levels_pkey', 'p', '{019d934f-bc4b-7099-a3f3-2205465f00bf}'),
  ('019d934f-bf4a-70eb-9582-bdc568af9e26', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-beaf-7e77-8b9b-9ccbc2a80fb8', 'app_level_requirements_pkey', 'p', '{019d934f-befb-7732-aa92-b08639eddfa9}'),
  ('019d934f-c5bf-7383-a292-9f9e2912b448', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c513-76c3-954b-6ff472caf6b0', 'app_profiles_pkey', 'p', '{019d934f-c567-7566-8bbf-1d8b59efe0c3}'),
  ('019d934f-ca7b-7e58-be69-fce5eb291c03', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-c9db-7b89-a126-01d4d40dbcf8', 'app_profile_permissions_pkey', 'p', '{019d934f-ca2a-7e8a-ad51-a0a4083a01cf}'),
  ('019d934f-cd24-7732-b115-07cfa3f9fc24', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-cc8a-7427-9dd2-35ae641d68c3', 'app_profile_grants_pkey', 'p', '{019d934f-ccd7-7279-83ec-035ed8f7044c}'),
  ('019d934f-d074-70ce-9741-1d4a714e8091', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-cfd2-7fcb-aefd-4cb7213d9d03', 'app_profile_definition_grants_pkey', 'p', '{019d934f-d022-7279-a487-1b8c1dd3d5b7}'),
  ('019d934f-e04e-71d6-9787-053b151b9e3e', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-dfa9-7350-84a0-f7a734116364', 'org_permissions_pkey', 'p', '{019d934f-dffa-71bb-9b66-d78ad9a9ebf4}'),
  ('019d934f-e373-7800-848c-27ba0420bc17', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-e2cd-7010-acb9-c44d776ddd35', 'org_permission_defaults_pkey', 'p', '{019d934f-e31d-76df-ba2c-cc551ab77c24}'),
  ('019d934f-e58c-7f5c-8c98-3547760b6f3b', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-e4e7-7046-9fd8-4184b022c61a', 'org_limits_pkey', 'p', '{019d934f-e53a-7691-a7bf-35aa566d25ad}'),
  ('019d934f-e82f-77e2-8af1-369b9fb14ce0', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-e787-7a23-b4fa-d5be14121d10', 'org_limit_defaults_pkey', 'p', '{019d934f-e7da-733d-a94e-83ec7b7ffb7e}'),
  ('019d934f-eac5-7148-8d23-bcec1f7ca83f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-ea21-7619-abc0-635c9c963cd3', 'org_memberships_pkey', 'p', '{019d934f-ea70-7bee-b51f-83ff201ffcf0}'),
  ('019d934f-ecc2-7baa-a52c-e246d1b437d5', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-ec1f-73fd-9243-c5ad79f9bf4a', 'org_membership_defaults_pkey', 'p', '{019d934f-ec70-7549-beda-eeb1d92361f2}'),
  ('019d934f-f8d1-7dda-b799-e01e245670ad', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-f82b-7418-b582-6285603f178e', 'org_members_pkey', 'p', '{019d934f-f87b-75ba-961c-52b2225b4743}'),
  ('019d934f-fc81-7a15-a312-d794d2728ca0', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-fbd1-7b61-9b4e-401458bd2b0b', 'org_admin_grants_pkey', 'p', '{019d934f-fc27-7ff9-be6a-06becc70d41b}'),
  ('019d9350-0034-7d1a-9068-491818a64fb3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d934f-ff8d-7591-9d2f-56a00620b2b6', 'org_owner_grants_pkey', 'p', '{019d934f-ffdf-7311-bf77-51c71fce4bed}'),
  ('019d9350-03f9-7e59-8764-52f1f5ba38bd', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-0357-7925-a747-23fee822832f', 'org_grants_pkey', 'p', '{019d9350-03a6-7e12-9b5c-12e073ae593f}'),
  ('019d9350-0a5b-74ea-9f4e-b5e05783c7f2', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-09b5-793c-a897-41a87691e618', 'org_profiles_pkey', 'p', '{019d9350-0a07-7c5d-adb6-13734bb17459}'),
  ('019d9350-0f53-7230-a7ef-d4eb9de9a794', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-0ea7-7384-9b91-fd7d6ce1f4f8', 'org_profile_permissions_pkey', 'p', '{019d9350-0efc-71bf-baa3-118e9062e6da}'),
  ('019d9350-1229-75c3-b600-b752e5c36dcb', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-1181-753e-93d4-30e7575e175a', 'org_profile_grants_pkey', 'p', '{019d9350-11d3-7054-8f05-8e7e1a18e058}'),
  ('019d9350-1718-7eca-bdd5-1124d7d08fc1', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-166c-7c17-829e-3f19ed6e3235', 'org_profile_definition_grants_pkey', 'p', '{019d9350-16c2-7c58-9981-923cb7352412}'),
  ('019d9350-1d02-76a4-afb7-581b79244ea1', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-1c52-7958-a6e5-fe2de04520d1', 'org_steps_pkey', 'p', '{019d9350-1caa-757c-b604-b5e91156e863}'),
  ('019d9350-209c-78f6-a23c-16ca7f94826f', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-1fec-7da3-84f1-c1f26bb7f98e', 'org_achievements_pkey', 'p', '{019d9350-2043-704b-847f-60095d2e421d}'),
  ('019d9350-249f-7ee8-a7b3-6c11fbadc2c5', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-2388-7dd4-a7a3-2fe061328651', 'org_levels_pkey', 'p', '{019d9350-243e-7493-a748-146af4791bf6}'),
  ('019d9350-2819-7935-9d91-6eef87da2576', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-270a-7ec2-b5f0-4559e2f1e21f', 'org_level_requirements_pkey', 'p', '{019d9350-27bc-738a-8e4c-8b2749a69385}'),
  ('019d9350-39c9-7dc3-a927-ee0b94a124e7', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-38cb-7e93-9aa0-57d2ac30337c', 'org_chart_edges_pkey', 'p', '{019d9350-396e-7595-9339-8f5b7a713e6e}'),
  ('019d9350-3ef8-7384-9606-a8cdbe6074b3', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-3d37-7d67-960e-a893fcbb57dd', 'org_hierarchy_sprts_pkey', 'p', '{019d9350-3d8f-77f0-ab88-6b0213eff186,019d9350-3de9-75f3-9cc5-4242caa67eb4,019d9350-3e41-73b0-bc56-7a2ce81b7b62}'),
  ('019d9350-409a-7bc0-ae9f-02c98a462df9', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-3f95-72e4-8764-46f5686be68c', 'org_chart_edge_grants_pkey', 'p', '{019d9350-403a-7b19-b17f-07d21f532544}'),
  ('019d9350-4b30-7c24-ad20-9cf0d23f23e5', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-495c-7cb4-a524-f60084e11a79', 'secrets_pkey', 'p', '{019d9350-49ba-7099-a955-c7ceb2d2a2bb}'),
  ('019d9350-4f3c-7651-9276-228421749347', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-4e76-7872-9fd6-f304131c00e6', 'sessions_pkey', 'p', '{019d9350-4eda-7205-986a-9d887ec668a6}'),
  ('019d9350-556e-75ae-9e31-cf57a3b1f5cc', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-5420-7d4f-8f49-646b5659c003', 'session_credentials_pkey', 'p', '{019d9350-550d-7191-a926-dfe7afa396fd}'),
  ('019d9350-5add-71d9-ac50-853908e14fe2', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-5a2c-7271-bc25-e8901b82aec0', 'app_auth_settings_pkey', 'p', '{019d9350-5a80-76a6-bbbf-331ce7da31f5}'),
  ('019d9350-65b4-760b-93f1-c80716db06ad', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6388-7b1d-85ab-e35724ec9754', 'encrypted_secrets_pkey', 'p', '{019d9350-63eb-793a-8cd4-539fc708d47c}'),
  ('019d9350-6e15-759f-8b7a-2b310372ce62', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-6d00-7908-b499-99d8958711ed', 'emails_pkey', 'p', '{019d9350-6db3-7080-9215-0afabb10da10}'),
  ('019d9350-745e-7b69-8d8f-e2ccb16b8e60', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-7348-7a60-95f5-1a537a4164ad', 'phone_numbers_pkey', 'p', '{019d9350-73fc-7955-9ea1-259b6b5d17fa}'),
  ('019d9350-7c43-71c2-aae2-f2892adaa8fa', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-7b1c-7fb4-b6de-e20235c752cd', 'crypto_addresses_pkey', 'p', '{019d9350-7bd9-7e42-bc95-f013994591fc}'),
  ('019d9350-84e8-7053-8b99-16dacd070931', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-8396-7512-9042-58187186081f', 'app_invites_pkey', 'p', '{019d9350-847c-7f3c-a2de-df769b3748a5}'),
  ('019d9350-8c11-7110-818e-33be6c8eb018', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-8ad2-7633-83d3-12c6076f9591', 'app_claimed_invites_pkey', 'p', '{019d9350-8bb0-7b0c-95ef-5ef0e91a20fa}'),
  ('019d9350-92cb-70e5-a64f-ead6284d555e', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-9185-73df-855d-b2c5c0606b1b', 'org_invites_pkey', 'p', '{019d9350-9268-798f-ab17-26758ca443c3}'),
  ('019d9350-9ba6-798f-8548-fb105fa3d68c', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-9a67-7959-9990-349fbfd0ad8a', 'org_claimed_invites_pkey', 'p', '{019d9350-9b43-7dea-8636-48084db3d913}'),
  ('019d9350-a3ff-7aa2-ae51-31398a1f5bcf', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-a2cc-7c82-a3ec-90f459a75248', 'audit_logs_pkey', 'p', '{019d9350-a39b-7dd9-936c-19c1f74cbba4}'),
  ('019d9350-ae91-771a-bf04-6eeeba3bdf80', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-ad2e-7c45-8483-05e220f3e234', 'buckets_pkey', 'p', '{019d9350-ae27-7ee3-9d21-2ae74bbec8ec}'),
  ('019d9350-b59f-785d-ab9d-632b8fa497c2', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-b450-7480-9f42-ba261d0d5012', 'files_pkey', 'p', '{019d9350-b53a-7d62-8319-829ed6a19612}'),
  ('019d9350-be88-7ee6-92fb-845a316469d2', '019d934f-84fc-7efb-8598-917bbf218b99', '019d9350-bd31-7283-9953-2f7cde9d2900', 'upload_requests_pkey', 'p', '{019d9350-be21-72b3-955e-a173ec7601f8}'),
  ('0b923f94-1b61-2954-483f-d6c68a38c6dc', '019d934f-84fc-7efb-8598-917bbf218b99', 'c4ee8796-dbee-a7f1-7be9-d5a55c9b6a59', 'autonomy_records_pkey', 'p', '{fcfd83ef-bb6d-6d33-e79f-45e03b8cbde6}'),
  ('1373b3f4-7a7b-f75c-21ae-2fa35b7c02b8', '019d934f-84fc-7efb-8598-917bbf218b99', '6800e371-493b-17a8-15d2-4295bcc20ec3', 'email_threads_pkey', 'p', '{bfeedf7f-fcbd-a5ed-eb00-d029dfd5664e}'),
  ('19c7ce33-2ecd-8ca6-d40c-7a6e1ebc24b7', '019d934f-84fc-7efb-8598-917bbf218b99', 'bc289aab-e376-3353-cb76-91ddfc86deab', 'runtime_logs_pkey', 'p', '{040ad195-fe6e-72a5-38f5-495e44241c0d}'),
  ('1a58d472-3f05-43ac-4281-f0b37db8a324', '019d934f-84fc-7efb-8598-917bbf218b99', 'f56e386c-2f8e-94ba-5e45-129acdf01005', 'codebases_pkey', 'p', '{efa6de2d-147a-c9a2-3faf-dcd18ccac00f}'),
  ('1da2b9f8-12fd-ea8e-3aa3-faf9ab0f0aa8', '019d934f-84fc-7efb-8598-917bbf218b99', '72926da2-e237-4c76-af90-a45e6ae785ef', 'goals_pkey', 'p', '{af0cc287-42d3-9eba-35f8-35c478e53bf3}'),
  ('26bfb77e-8263-2919-0247-e160fa03053a', '019d934f-84fc-7efb-8598-917bbf218b99', '5aa9be24-0184-20af-496f-6e786674cf5a', 'code_chunks_pkey', 'p', '{9824b766-2898-3ec3-953d-fc5e47da382e}'),
  ('2880e6b8-7dca-9224-7640-7f5452c322b8', '019d934f-84fc-7efb-8598-917bbf218b99', '305eee54-a545-85bc-10ed-ddd68944cd49', 'prompts_pkey', 'p', '{21765774-61b7-bd33-a43c-7686882ccf4c}'),
  ('29d5e6d0-a5f8-df6e-be18-1265da228661', '019d934f-84fc-7efb-8598-917bbf218b99', 'a12ae5b3-8239-a61f-f3ef-d6a7f500af66', 'projects_pkey', 'p', '{0136fdd9-dfdf-cf20-1733-1341dd7118b2}'),
  ('2c43c114-1271-5675-14e8-b67564c4334f', '019d934f-84fc-7efb-8598-917bbf218b99', 'ac6f94fb-9dfd-ceea-2d7f-8542c8bc07cc', 'messages_pkey', 'p', '{a82a03ae-83cf-c7bc-963c-2cb8375e2814}'),
  ('3171acfc-ae88-4535-c945-ee9649af7c02', '019d934f-84fc-7efb-8598-917bbf218b99', '4d546f0b-6cae-b99f-828b-10059641aa4d', 'touchpoints_pkey', 'p', '{6c26de34-49cc-6968-eb3e-c0825081de48}'),
  ('3515cfd0-0bf1-3fdf-ddd7-bdac07759a06', '019d934f-84fc-7efb-8598-917bbf218b99', '87579939-92de-1e85-6aef-fb71bfd23221', 'runtime_configs_pkey', 'p', '{809b5007-4b9e-4688-e5fe-fb6de0d55062}'),
  ('3a5d09b9-9954-ae6a-4c22-59aa6249922e', '019d934f-84fc-7efb-8598-917bbf218b99', '42d2a4b3-ec66-c449-917c-f3cde9810760', 'deals_pkey', 'p', '{70dc2904-fc13-294c-adf9-e02ac7b7a492}'),
  ('413464ea-481d-50d5-9b1e-1fa3a6a7cb0b', '019d934f-84fc-7efb-8598-917bbf218b99', '2df9ca4c-b056-77a7-c43e-8a8174bb2d26', 'rules_pkey', 'p', '{ab4d6ef1-0688-01e8-1f8f-3e09deda768b}'),
  ('419388ee-f92e-1c53-9176-13874db5f908', '019d934f-84fc-7efb-8598-917bbf218b99', 'fbd742b2-151a-9206-d107-15b6ee1f9b6b', 'runtime_metrics_pkey', 'p', '{4018e9d4-8b8c-f824-7799-ecb5e1e5f3e3}'),
  ('478cf67a-2309-2c03-5ffb-777c4dccd99a', '019d934f-84fc-7efb-8598-917bbf218b99', 'f4eae237-ebcb-6d37-15ad-9745316787aa', 'activity_logs_pkey', 'p', '{58d50e55-2b47-087f-097a-05b0c0b5bcc4}'),
  ('50b65035-30ae-10fe-94af-cfde5b79b268', '019d934f-84fc-7efb-8598-917bbf218b99', '50a2f762-0a9f-dac9-9b88-62dfd1c612af', 'contact_addresses_pkey', 'p', '{7c6065d6-5466-0706-e5eb-a89bcd5572b1}'),
  ('51695c30-a95a-3099-47e4-a14510eee80c', '019d934f-84fc-7efb-8598-917bbf218b99', '2802c26c-7f2a-e8a0-31b9-fa4db3e04cca', 'venues_pkey', 'p', '{afc2e01a-f6a5-7ea0-a5af-92532a681ebb}'),
  ('53e37abc-e8e7-c7b2-51b6-0a8b437287b3', '019d934f-84fc-7efb-8598-917bbf218b99', '4d64675f-dd76-d59d-2c23-a59b2537432d', 'calendars_pkey', 'p', '{d153ebef-6dee-932f-622a-0d67b60e0adc}'),
  ('56f2bd56-586a-8cbe-7a35-3c237a447e7b', '019d934f-84fc-7efb-8598-917bbf218b99', '9de1dde9-96dc-cae1-a9b1-7f5da8b6c9a2', 'event_links_pkey', 'p', '{17aaf33c-b71f-9637-e659-2a8b6521161e}'),
  ('5731b7d4-3194-f325-4889-40e09807d390', '019d934f-84fc-7efb-8598-917bbf218b99', '73bbaed3-e6da-bfe7-d964-1dd8f6488fc2', 'interactions_pkey', 'p', '{da8ac2bd-f400-c10f-fd20-4fdfdf8026d3}'),
  ('5e114a11-8a79-b5c0-db7a-ec74028e5db7', '019d934f-84fc-7efb-8598-917bbf218b99', '45eb17a6-d5df-1e10-a8be-fc33be8d37b7', 'memories_pkey', 'p', '{a418e01b-7671-ac66-2824-a4a9f14046b8}'),
  ('628b922b-e59b-be89-f99a-f24946050d6b', '019d934f-84fc-7efb-8598-917bbf218b99', '5c09f251-3297-a8db-1466-5c8b2ec9b686', 'emails_pkey', 'p', '{a9340b0e-2a1e-6172-8865-1143490cc671}'),
  ('71c9a869-eec3-de4b-b0ff-8192e2b82542', '019d934f-84fc-7efb-8598-917bbf218b99', '5e3cfa41-0e26-5ab2-3af6-428fb58cb0c9', 'agent_logs_pkey', 'p', '{4b5f6049-ffac-d616-0210-e979abb9371c}'),
  ('78972f81-247a-d9fc-0737-e4b0ed3c6f92', '019d934f-84fc-7efb-8598-917bbf218b99', '834410d9-76f6-02db-d578-844693fbe406', 'hiking_trails_pkey', 'p', '{89749b6c-848f-1c7a-7407-0c4ffd940308}'),
  ('7a52a701-59d5-be04-666c-b5ee00699a03', '019d934f-84fc-7efb-8598-917bbf218b99', 'eb899cc7-f6df-7cd0-a059-88a616fddbbb', 'email_attachments_pkey', 'p', '{10fb3023-b14d-6a00-ae16-f282a465c4cb}'),
  ('7ba169f8-74c4-6e7c-f75e-32a84b7f7560', '019d934f-84fc-7efb-8598-917bbf218b99', 'acd61d92-f44f-671c-ae3e-b32f98194de2', 'raw_contacts_pkey', 'p', '{c930aa99-b4ef-6a4e-3caf-7bb921031893}'),
  ('800d9707-1350-4f7c-56e0-0b9771fbd3e0', '019d934f-84fc-7efb-8598-917bbf218b99', 'a966faf9-730c-6374-3a59-5c6e4bd8f378', 'calendar_attendees_pkey', 'p', '{98fe2b93-d191-b62a-530e-d8ee2d60010a}'),
  ('80aa097f-6f53-7f96-0423-554b52d984fd', '019d934f-84fc-7efb-8598-917bbf218b99', 'be2019a4-b027-cb17-3437-5ebc88db8f6c', 'company_links_pkey', 'p', '{f41eee86-1a64-8ecd-760a-c598191eddfd}'),
  ('829adb62-82dd-a84f-0a88-cc63b214016e', '019d934f-84fc-7efb-8598-917bbf218b99', '45482342-7cd5-a6c8-bca5-117536afeebc', 'raw_contact_phones_pkey', 'p', '{da56db45-4fcf-5b6c-93d0-06e85a67a78b}'),
  ('83bca064-5ebe-28ef-11e9-fd52b377d027', '019d934f-84fc-7efb-8598-917bbf218b99', '872b6889-cf7a-78e7-3ec0-e4753abd0edf', 'contact_emails_pkey', 'p', '{bc387745-8c1d-6df7-ffca-8b3512837e7a}'),
  ('892a74fb-064e-4ca4-aa00-8c14664f124b', '019d934f-84fc-7efb-8598-917bbf218b99', 'c0f6420f-3fb1-96c5-6bfb-3f93b2e57586', 'runtime_schedules_pkey', 'p', '{603702d3-cd87-3112-054e-9b41c1066ced}'),
  ('8af1d466-9986-e406-fdf6-2b6dab3979fd', '019d934f-84fc-7efb-8598-917bbf218b99', '4b07d7d8-c0fa-1dfe-dd76-89649b1ef3d2', 'events_pkey', 'p', '{ee6f13a8-d626-083d-abdb-8ebe2ca1b15b}'),
  ('8bac28e2-f6bc-c037-857c-abd84ce803dc', '019d934f-84fc-7efb-8598-917bbf218b99', '0c2e246b-504d-7800-94b7-fbedd99e83d6', 'provider_sync_states_pkey', 'p', '{d0c7d769-abfd-821d-3060-a9d01b9cc5e9}'),
  ('8bd584f5-57ce-7273-cde8-e342da9e16c9', '019d934f-84fc-7efb-8598-917bbf218b99', '46c5d5d3-a98a-9229-a79d-1be01727b54a', 'tasks_pkey', 'p', '{b11894ce-0c2b-8b5f-1f76-01ba9e6e7b11}'),
  ('93561ff2-b109-12ec-4747-70698c4ab334', '019d934f-84fc-7efb-8598-917bbf218b99', '6a52152c-5a40-a1bd-37df-db4e1f7788ee', 'trips_pkey', 'p', '{8e5fcdf5-7ff2-f8e1-412b-886126654ae1}'),
  ('983de709-4988-36f1-ea52-a7a992c40548', '019d934f-84fc-7efb-8598-917bbf218b99', '8957c506-21e8-d51c-3798-3f506d7242ad', 'tool_executions_pkey', 'p', '{a5b9ba0d-35fe-381b-2ea3-c50cf36dd9b0}'),
  ('9946c180-ca75-04bc-1cd5-a2baaa7df980', '019d934f-84fc-7efb-8598-917bbf218b99', '19d723a3-5ae8-810d-6dd4-7c21752d2a34', 'venue_links_pkey', 'p', '{749fe191-d709-12d4-ce6b-131795c40a25}'),
  ('a26c2551-2980-3638-e6c6-71701385933c', '019d934f-84fc-7efb-8598-917bbf218b99', '3d2f6257-3912-0f96-bafe-f9dc304d35b1', 'contact_links_pkey', 'p', '{e593523c-6ef3-d419-5544-c0a17b4d7e58}'),
  ('a3e86a36-dcaa-3f5a-9d5d-a2ab85f681ad', '019d934f-84fc-7efb-8598-917bbf218b99', 'a9a9b11a-f09b-87bb-0e93-0dc148114b15', 'tool_definitions_pkey', 'p', '{f7c8f370-e669-46ad-819d-aeff08f5b254}'),
  ('b441201f-eba4-6bfb-683e-e296de66447b', '019d934f-84fc-7efb-8598-917bbf218b99', '7510156c-dd84-1b03-308c-195541d99572', 'companies_pkey', 'p', '{c6252b22-400a-7c57-83df-fc1369c400a5}'),
  ('b4d13390-eea9-d620-e1f2-860fe6e78d0f', '019d934f-84fc-7efb-8598-917bbf218b99', '07225406-1364-5b98-79d7-828ebd5860bc', 'habits_pkey', 'p', '{bbf4d81b-3147-d1c1-9896-65481b7998c9}'),
  ('b4d29a4f-9e64-eb74-8021-d1c320d53eb3', '019d934f-84fc-7efb-8598-917bbf218b99', 'cae1d8d6-c617-67ee-9a18-c5bd073e787e', 'calendar_events_pkey', 'p', '{97ee9464-05aa-ac04-0876-2b8ba711da29}'),
  ('b7d71a25-2d34-1bda-c869-e419a864fc3d', '019d934f-84fc-7efb-8598-917bbf218b99', '01b5b649-b96a-cc47-ecb8-48d8a26c3eb9', 'contact_phones_pkey', 'p', '{8fd8a58a-0b29-ff87-fe85-c81225fba9f6}'),
  ('ca2e2f53-288a-abe5-a4f5-cbfb16e6ec86', '019d934f-84fc-7efb-8598-917bbf218b99', '3e33bb6a-9333-eced-0057-6d3994f51a59', 'raw_contact_emails_pkey', 'p', '{4b03109d-2595-68b5-846c-9086aabfc152}'),
  ('cc21d5aa-6637-51ad-f773-ae236a2c5e73', '019d934f-84fc-7efb-8598-917bbf218b99', '42caf2c5-eb02-8b34-5a4f-d8b12be619b0', 'notes_pkey', 'p', '{71ec605c-0f5e-a943-f788-279982efee55}'),
  ('d75225ea-0267-a56e-23d5-ef63ba47f129', '019d934f-84fc-7efb-8598-917bbf218b99', '461aa62a-f030-f800-5cb5-ff4b404b86e8', 'skills_pkey', 'p', '{25c0e61d-98e2-c73a-2b8f-08f3b2bf4b8e}'),
  ('da0859b6-f671-eb8e-3215-d04115723ff8', '019d934f-84fc-7efb-8598-917bbf218b99', 'dc42a3a8-7a04-9dc4-cece-c7e6d2d3dbdc', 'tags_pkey', 'p', '{be3ec951-147c-9059-0fa2-09ae2934cda6}'),
  ('e672c73f-480d-4ede-8d5d-d54334cb8bfa', '019d934f-84fc-7efb-8598-917bbf218b99', 'd3ec479a-b288-3c39-f78d-415b11d6ca3f', 'images_pkey', 'p', '{16c48320-3bc1-4d25-7ccf-1a75c7b52f07}'),
  ('e69af426-d4d7-a376-d45f-fc1b585feef3', '019d934f-84fc-7efb-8598-917bbf218b99', '30669dc2-7650-8bb9-b036-b90a7c58ba6a', 'places_pkey', 'p', '{66e1df79-0463-268a-3e47-f2ed5ffed455}'),
  ('e73a15bf-1f83-c9df-8cf4-c633d4f866a0', '019d934f-84fc-7efb-8598-917bbf218b99', '6892fdc2-a988-383a-541d-9733f84ce2b5', 'expenses_pkey', 'p', '{528a2147-ee66-f487-95dd-e4dc5c8540f7}'),
  ('e762e735-f590-cf9a-9e37-bad3b58a3cb2', '019d934f-84fc-7efb-8598-917bbf218b99', '5726b630-34c0-5aed-7104-cb6a42d912ba', 'runtime_states_pkey', 'p', '{b2ca6e87-5107-b151-9ee6-aea32d9c43e4}'),
  ('eff2a5fa-a4bf-7ace-5ac4-6b58386b3b1f', '019d934f-84fc-7efb-8598-917bbf218b99', 'db14277a-1d06-2c27-7c19-d32e2177704f', 'contacts_pkey', 'p', '{ca70287e-a01d-54da-8163-d22aa8b82292}'),
  ('f3c7f6fa-a1bf-1b88-38b3-d0614b0b2c30', '019d934f-84fc-7efb-8598-917bbf218b99', 'a9d5ee52-a4dd-0cd8-c4af-9f0c9a6fc316', 'raw_contact_urls_pkey', 'p', '{2ab0001f-c18f-c1b4-11e1-98e9f1239909}'),
  ('f495c2b8-eac5-660b-229f-920846f43868', '019d934f-84fc-7efb-8598-917bbf218b99', '8c050794-b45a-db01-c156-d78b005f9fca', 'runtime_artifacts_pkey', 'p', '{00e0ba3a-d534-cf9c-3c20-e4882c7bf0e2}'),
  ('f63daa0c-ebb3-7def-8282-60b1cbf4c1f9', '019d934f-84fc-7efb-8598-917bbf218b99', 'cb9deb01-ad6a-ff50-3cca-193f3fb0a68d', 'agents_pkey', 'p', '{34644f08-4c54-1a46-847c-8d8778356616}'),
  ('f6c4c343-e084-beb5-b9fe-53588009a308', '019d934f-84fc-7efb-8598-917bbf218b99', '2a81e467-934c-85a1-8965-4903d760886c', 'conversations_pkey', 'p', '{46ebde94-9dc9-d941-6799-853962cdfa57}'),
  ('fcf74d7e-05ae-c8d1-2ad2-452b2c707304', '019d934f-84fc-7efb-8598-917bbf218b99', 'e4691b65-a563-8893-d1b3-cf1656647247', 'runtime_events_pkey', 'p', '{0c4e9ed6-d7d5-88fa-abe3-96000d9996e9}');


SET session_replication_role TO DEFAULT;


