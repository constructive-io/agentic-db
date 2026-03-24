-- Deploy: schemas/agentic_db_users_public/tables/users/columns/search_tsv/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_users_public.users 
  ADD COLUMN search_tsv tsvector;

