-- Deploy: schemas/agentic_db_users_public/tables/users/indexes/users_search_tsv_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_users_public/tables/users/columns/search_tsv/column


CREATE INDEX users_search_tsv_gin_idx ON agentic_db_users_public.users USING GIN ( search_tsv );

