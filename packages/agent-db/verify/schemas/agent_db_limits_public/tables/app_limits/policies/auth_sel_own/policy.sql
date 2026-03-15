-- Verify: schemas/agent_db_limits_public/tables/app_limits/policies/auth_sel_own/policy


SELECT verify_policy('auth_sel_own', 'agent_db_limits_public.app_limits');


