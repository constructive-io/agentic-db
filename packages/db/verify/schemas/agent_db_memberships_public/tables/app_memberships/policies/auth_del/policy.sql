-- Verify: schemas/agent_db_memberships_public/tables/app_memberships/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_memberships_public.app_memberships');


