-- Verify: schemas/agent_db_permissions_public/tables/app_permissions/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_permissions_public.app_permissions');


