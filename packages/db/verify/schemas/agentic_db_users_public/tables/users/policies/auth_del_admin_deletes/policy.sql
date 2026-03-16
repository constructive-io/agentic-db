-- Verify: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


SELECT verify_policy('auth_del_admin_deletes', 'agentic_db_users_public.users');


