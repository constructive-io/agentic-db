-- Verify: schemas/agent_db_permissions_public/tables/org_permission_defaults/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_permissions_public.org_permission_defaults');


