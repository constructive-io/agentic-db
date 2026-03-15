-- Verify: schemas/agent_db_limits_public/tables/org_limit_defaults/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_limits_public.org_limit_defaults');


