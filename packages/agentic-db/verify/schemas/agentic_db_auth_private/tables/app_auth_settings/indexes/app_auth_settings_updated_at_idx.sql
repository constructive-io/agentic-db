-- Verify: schemas/agentic_db_auth_private/tables/app_auth_settings/indexes/app_auth_settings_updated_at_idx


SELECT verify_index('agentic_db_auth_private.app_auth_settings', 'app_auth_settings_updated_at_idx');


