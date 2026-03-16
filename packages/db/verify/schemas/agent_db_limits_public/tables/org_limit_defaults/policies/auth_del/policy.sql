-- Verify: schemas/agent_db_limits_public/tables/org_limit_defaults/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_limits_public.org_limit_defaults');


