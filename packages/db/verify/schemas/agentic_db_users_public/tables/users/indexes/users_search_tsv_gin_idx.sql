-- Verify: schemas/agentic_db_users_public/tables/users/indexes/users_search_tsv_gin_idx


SELECT verify_index('agentic_db_users_public.users', 'users_search_tsv_gin_idx');


