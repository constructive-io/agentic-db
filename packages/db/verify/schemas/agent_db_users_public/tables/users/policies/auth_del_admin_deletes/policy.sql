-- Verify: schemas/agent_db_users_public/tables/users/policies/auth_del_admin_deletes/policy


SELECT verify_policy('auth_del_admin_deletes', 'agent_db_users_public.users');


