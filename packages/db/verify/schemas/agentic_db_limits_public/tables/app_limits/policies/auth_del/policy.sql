-- Verify: schemas/agentic_db_limits_public/tables/app_limits/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_limits_public.app_limits');


