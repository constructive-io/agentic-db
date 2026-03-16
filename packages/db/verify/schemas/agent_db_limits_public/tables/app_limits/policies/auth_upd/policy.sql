-- Verify: schemas/agent_db_limits_public/tables/app_limits/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_limits_public.app_limits');


