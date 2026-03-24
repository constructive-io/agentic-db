-- Deploy: schemas/agentic_db_status_public/tables/app_levels/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.app_levels 
  ADD COLUMN name citext;

