-- Verify: schemas/agentic_db_limits_public/tables/app_limits/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_limits_public.app_limits');


