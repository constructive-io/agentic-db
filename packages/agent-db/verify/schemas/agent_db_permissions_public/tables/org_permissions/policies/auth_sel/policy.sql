-- Verify: schemas/agent_db_permissions_public/tables/org_permissions/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_permissions_public.org_permissions');


