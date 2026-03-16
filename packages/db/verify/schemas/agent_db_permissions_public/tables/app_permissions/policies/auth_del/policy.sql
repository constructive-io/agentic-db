-- Verify: schemas/agent_db_permissions_public/tables/app_permissions/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_permissions_public.app_permissions');


