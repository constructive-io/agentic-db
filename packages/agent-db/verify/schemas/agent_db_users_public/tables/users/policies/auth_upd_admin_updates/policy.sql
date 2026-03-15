-- Verify: schemas/agent_db_users_public/tables/users/policies/auth_upd_admin_updates/policy


SELECT verify_policy('auth_upd_admin_updates', 'agent_db_users_public.users');


