-- Verify: schemas/agentic_db_users_public/tables/users/indexes/users_updated_at_idx


SELECT verify_index('agentic_db_users_public.users', 'users_updated_at_idx');


