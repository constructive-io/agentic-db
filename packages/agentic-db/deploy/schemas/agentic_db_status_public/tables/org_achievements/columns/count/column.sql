-- Deploy: schemas/agentic_db_status_public/tables/org_achievements/columns/count/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_status_public.org_achievements 
  ADD COLUMN count int;

