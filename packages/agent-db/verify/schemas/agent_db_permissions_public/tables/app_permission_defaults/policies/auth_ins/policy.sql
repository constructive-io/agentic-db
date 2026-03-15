-- Verify: schemas/agent_db_permissions_public/tables/app_permission_defaults/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_permissions_public.app_permission_defaults');


