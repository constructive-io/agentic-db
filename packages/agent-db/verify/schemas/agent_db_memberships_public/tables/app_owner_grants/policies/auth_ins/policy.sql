-- Verify: schemas/agent_db_memberships_public/tables/app_owner_grants/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_memberships_public.app_owner_grants');


