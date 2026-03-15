-- Verify: schemas/agent_db_users_public/tables/users/indexes/users_updated_at_idx


SELECT verify_index('agent_db_users_public.users', 'users_updated_at_idx');


