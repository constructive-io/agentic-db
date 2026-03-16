-- Verify: schemas/agent_db_limits_public/tables/org_limits/policies/auth_sel_own/policy


SELECT verify_policy('auth_sel_own', 'agent_db_limits_public.org_limits');


