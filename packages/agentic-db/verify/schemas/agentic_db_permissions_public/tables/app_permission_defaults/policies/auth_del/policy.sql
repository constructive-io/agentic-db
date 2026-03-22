-- Verify: schemas/agentic_db_permissions_public/tables/app_permission_defaults/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_permissions_public.app_permission_defaults');


