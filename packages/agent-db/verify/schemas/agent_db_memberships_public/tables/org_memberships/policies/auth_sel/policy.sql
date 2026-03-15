-- Verify: schemas/agent_db_memberships_public/tables/org_memberships/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_memberships_public.org_memberships');


