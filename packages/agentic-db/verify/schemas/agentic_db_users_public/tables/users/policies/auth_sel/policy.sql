-- Verify: schemas/agentic_db_users_public/tables/users/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_users_public.users');


