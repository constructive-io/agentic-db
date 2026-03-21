-- Verify: schemas/agentic_db_permissions_public/tables/app_permissions/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_permissions_public.app_permissions');


