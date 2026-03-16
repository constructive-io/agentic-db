-- Verify: schemas/agent_db_memberships_public/tables/app_owner_grants/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_memberships_public.app_owner_grants');


