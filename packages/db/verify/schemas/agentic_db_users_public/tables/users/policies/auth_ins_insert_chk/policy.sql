-- Verify: schemas/agentic_db_users_public/tables/users/policies/auth_ins_insert_chk/policy


SELECT verify_policy('auth_ins_insert_chk', 'agentic_db_users_public.users');


