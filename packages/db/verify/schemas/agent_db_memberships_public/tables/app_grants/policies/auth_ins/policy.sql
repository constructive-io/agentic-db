-- Verify: schemas/agent_db_memberships_public/tables/app_grants/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_memberships_public.app_grants');


