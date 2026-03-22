-- Verify: schemas/agentic_db_auth_private/tables/app_auth_settings/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agentic_db_auth_private.app_auth_settings');


