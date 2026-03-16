-- Verify: schemas/agent_db_users_public/tables/users/policies/auth_ins_insert_chk/policy


SELECT verify_policy('auth_ins_insert_chk', 'agent_db_users_public.users');


