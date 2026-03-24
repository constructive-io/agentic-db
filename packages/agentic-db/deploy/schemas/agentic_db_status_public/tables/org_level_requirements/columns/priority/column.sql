-- Deploy: schemas/agentic_db_status_public/tables/org_level_requirements/columns/priority/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table


ALTER TABLE agentic_db_status_public.org_level_requirements 
  ADD COLUMN priority int;

