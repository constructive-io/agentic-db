-- Verify: schemas/agent_db_memberships_public/tables/org_grants/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_memberships_public.org_grants');


