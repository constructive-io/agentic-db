-- Verify: schemas/agentic_db_auth_private/tables/app_auth_settings/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_auth_private.app_auth_settings');


