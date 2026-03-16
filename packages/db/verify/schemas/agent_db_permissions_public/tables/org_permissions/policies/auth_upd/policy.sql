-- Verify: schemas/agent_db_permissions_public/tables/org_permissions/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_permissions_public.org_permissions');


