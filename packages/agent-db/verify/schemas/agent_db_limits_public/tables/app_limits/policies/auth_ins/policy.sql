-- Verify: schemas/agent_db_limits_public/tables/app_limits/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_limits_public.app_limits');


