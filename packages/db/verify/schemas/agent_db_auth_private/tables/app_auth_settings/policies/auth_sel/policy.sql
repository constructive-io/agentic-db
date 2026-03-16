-- Verify: schemas/agent_db_auth_private/tables/app_auth_settings/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_auth_private.app_auth_settings');


