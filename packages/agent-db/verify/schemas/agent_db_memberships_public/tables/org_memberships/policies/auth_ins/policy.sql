-- Verify: schemas/agent_db_memberships_public/tables/org_memberships/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_memberships_public.org_memberships');


