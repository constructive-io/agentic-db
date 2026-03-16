-- Verify: schemas/agent_db_memberships_public/tables/org_members/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_memberships_public.org_members');


