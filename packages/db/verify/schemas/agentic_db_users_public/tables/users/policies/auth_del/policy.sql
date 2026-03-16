-- Verify: schemas/agentic_db_users_public/tables/users/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_users_public.users');


