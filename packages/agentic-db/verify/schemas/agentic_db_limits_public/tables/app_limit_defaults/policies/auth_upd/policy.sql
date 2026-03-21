-- Verify: schemas/agentic_db_limits_public/tables/app_limit_defaults/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agentic_db_limits_public.app_limit_defaults');


