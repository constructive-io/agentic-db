-- Verify: schemas/agent_db_auth_private/tables/app_auth_settings/indexes/app_auth_settings_created_at_idx


SELECT verify_index('agent_db_auth_private.app_auth_settings', 'app_auth_settings_created_at_idx');


