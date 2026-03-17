-- Verify: schemas/agentic_db_users_public/tables/users/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agentic_db_users_public.users');


