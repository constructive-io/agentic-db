-- Verify: schemas/agentic_db_users_public/tables/users/policies/auth_upd_admin_updates/policy


SELECT verify_policy('auth_upd_admin_updates', 'agentic_db_users_public.users');


