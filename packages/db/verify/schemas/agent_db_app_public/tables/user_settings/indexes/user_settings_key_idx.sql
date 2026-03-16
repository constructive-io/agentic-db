-- Verify: schemas/agent_db_app_public/tables/user_settings/indexes/user_settings_key_idx


SELECT verify_index('agent_db_app_public.user_settings', 'user_settings_key_idx');


