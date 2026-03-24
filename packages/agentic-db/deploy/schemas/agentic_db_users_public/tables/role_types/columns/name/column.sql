-- Deploy: schemas/agentic_db_users_public/tables/role_types/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/role_types/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_users_public.role_types 
  ADD COLUMN name citext;

