-- Verify: schemas/agent_db_limits_public/tables/org_limit_defaults/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_limits_public.org_limit_defaults');


