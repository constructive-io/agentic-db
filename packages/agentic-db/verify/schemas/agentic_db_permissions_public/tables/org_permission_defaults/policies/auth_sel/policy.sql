-- Verify: schemas/agentic_db_permissions_public/tables/org_permission_defaults/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_permissions_public.org_permission_defaults');


