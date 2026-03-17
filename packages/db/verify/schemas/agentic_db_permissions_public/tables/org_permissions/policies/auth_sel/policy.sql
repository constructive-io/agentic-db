-- Verify: schemas/agentic_db_permissions_public/tables/org_permissions/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_permissions_public.org_permissions');


