-- Verify: schemas/agent_db_users_public/tables/users/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_users_public.users');


