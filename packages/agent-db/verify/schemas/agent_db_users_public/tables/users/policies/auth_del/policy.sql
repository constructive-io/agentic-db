-- Verify: schemas/agent_db_users_public/tables/users/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_users_public.users');


